package uk.ac.glasgow.redeuce.processor;

import static org.junit.Assert.*;

import java.io.IOException;
import java.util.BitSet;

import org.junit.Before;
import org.junit.Test;

import uk.ac.glasgow.redeuce.DeuceConstants;
import uk.ac.glasgow.redeuce.memory.Memory;
import uk.ac.glasgow.redeuce.memory.Word;
import uk.ac.glasgow.redeuce.peripherals.memory.CRDFileReader;
import uk.ac.glasgow.redeuce.peripherals.memory.DEUCECardReader;
import uk.ac.glasgow.redeuce.peripherals.memory.FixedCardDeck;
import uk.ac.glasgow.redeuce.peripherals.memory.OutOfCardsException;

public class ProcessorTest {
	
	String file = "/users/level3/2089278r/INTERN/REDEUCE/src/uk/ac/glasgow/redeuce/peripherals/memory/prog07DH.crd";
	CRDFileReader testReader = new CRDFileReader(file);
	DEUCECardReader reader = new DEUCECardReader();
	Memory deuceMemory = new Memory();
	Processor proc = new Processor(reader, deuceMemory);
	
	@Before public void initialise() throws OutOfCardsException, IOException{
		FixedCardDeck newDeck = testReader.createNewDeck();
		reader.loadDeck(newDeck);
	}
	
	//Tests that an instruction is written correctly
	@Test
	public void readsInstructionsTest(){
		Memory memory = new Memory();
		BitSet bits = new BitSet(32);
		bits.set(1);
		bits.set(4);
		bits.set(5);
		bits.set(7);
		bits.set(8);
		bits.set(9);
		bits.set(11);
		bits.set(12);
		memory.setWord(1, new Word(bits));
		Instruction instr = new Instruction(memory.getWord(1));
		assertTrue(instr.getNIS() == 1);
		assertTrue(instr.getChar() == 0);
		assertTrue(instr.getDest() == 13);
		assertTrue(instr.getWait() == 0);
		assertTrue(instr.getGo() == 0);
		assertTrue(instr.getTiming() == 0);
	}
	
	//Tests that a simple addition happens, regardless of timing and so on
	@Test 
	public void arithmeticTest1() throws InterruptedException{
		
		assertTrue(proc.deuceMemory.getWord(13).getAsInt() == 0);
		Instruction testArith = new Instruction(0, 27, 25, 0, 0, 0, 0);
		proc.currentInstruction = testArith;
		proc.executeArithmetic(testArith);
		assertTrue(proc.deuceMemory.getWord(13).getAsInt() == 1);
	}
	
	//Tests that correct arithmetic happens with a normal delay line
	@Test
	public void arithmeticTest2(){
		assertTrue(proc.deuceMemory.getWord(13).getAsInt() == 0);
		proc.deuceMemory.setWord(4, new Word(70));
		Instruction testArith = new Instruction(0, 4, 25, 0, 0, 0, 0);   //Wait and normal ticks and so on are irrelevant here, as that only occurs in executeinstruction
		proc.executeArithmetic(testArith);
		// HAD TO BE CHANGED, AS TICKS NOW HAPPEN IN EXECUTEINSTRUCTION
		assertEquals(70, proc.deuceMemory.getWord(13).getAsInt());
	}
	
	//Tests that the correct arithmetic happens in an actual instruction setting
	@Test
	public void ExecuteArithmeticTest2() throws InterruptedException{
		assertTrue(proc.deuceMemory.getWord(13).getAsInt() == 0);
		proc.deuceMemory.setWord(4, new Word(70));
		//wait 30 so we can go back to the original place where the word was stored
		Instruction testArith = new Instruction(0, 4, 25, 0, 30, 0, 0);
		proc.setCurrentInstruction(testArith);
		proc.executeInstruction();
		assertEquals(70, proc.deuceMemory.getWord(13).getAsInt());
	}
	
	//Tests that correct arithmetic happens in DoubleStore case as well, with the other word still being 0
	@Test
	public void arithmeticTest3(){
		assertTrue(proc.deuceMemory.getWord(21).getAsInt() == 0);
		proc.deuceMemory.setWord(5, new Word(70));
		//wait 30 so we can go back to the original place where the word was stored
		Instruction testArith = new Instruction(0, 5, 22, 0, 30, 0, 0);
		proc.executeArithmetic(testArith);
		// HAD TO BE CHANGED, AS TICKS NOW HAPPEN IN EXECUTEINSTRUCTION
		assertEquals(70, proc.deuceMemory.getWord(21).getAsInt());
		proc.tickClock();
		assertEquals(0, proc.deuceMemory.getWord(21).getAsInt());
	}
	
	//Tests that the above test words as an executeInstruction as well
	@Test
	public void executeArithmeticTest3() throws InterruptedException{
		assertTrue(proc.deuceMemory.getWord(21).getAsInt() == 0);
		proc.deuceMemory.setWord(5, new Word(70));
		//wait 30 so we can go back to the original place where the word was stored
		Instruction testArith = new Instruction(0, 5, 22, 0, 30, 0, 0);
		proc.setCurrentInstruction(testArith);
		proc.executeInstruction();
		// HAD TO BE CHANGED, AS TICKS NOW HAPPEN IN EXECUTEINSTRUCTION
		assertEquals(70, proc.deuceMemory.getWord(21).getAsInt());
	}
	
	//Tests that a single transfer happens in the most basic case, time and wait are 0
	@Test
	public void singleTransferTest() throws InterruptedException {
		assertTrue(proc.deuceMemory.getWord(4).getAsInt() == 0);
		proc.tickClock();
		proc.tickClock();
		proc.deuceMemory.setWord(4, new Word(400));
		Instruction testTransfer = new Instruction(0, 4, 5, 0, 0, 2, 0);
		proc.setCurrentInstruction(testTransfer);
		while(proc.deuceMemory.getMicroCycle() != 0){
			proc.tickClock();
		}
		proc.executeInstruction();
		assertEquals(4, proc.deuceMemory.getMicroCycle());
		while(proc.deuceMemory.getMicroCycle() != 2){
			proc.tickClock();
		}
		assertEquals(400, proc.deuceMemory.getWord(5).getAsInt());
	}
	
	//Tests that a single transfer happens on the correct mc depending on the wait and timing numbers
	@Test
	public void singleTransferTestWait() throws InterruptedException {
		assertTrue(proc.deuceMemory.getWord(4).getAsInt() == 0);
		proc.tickClock();
		proc.tickClock();
		proc.tickClock();
		proc.tickClock();
		proc.deuceMemory.setWord(4, new Word(400)); //(4'4' == 400)
		Instruction testTransfer = new Instruction(0, 4, 5, 0, 2, 2, 0); //(instruction is move from what's in 4 into 5)
		proc.setCurrentInstruction(testTransfer);
		while(proc.deuceMemory.getMicroCycle() != 0){
			proc.tickClock();
		}
		proc.executeInstruction();                                      
		assertEquals(4, proc.deuceMemory.getMicroCycle());               //Should be at 4, starting at 0, 2(wait) + 2(setup) and then transfer
		while(proc.deuceMemory.getMicroCycle() != 4){
			proc.tickClock();
		}
		assertEquals(400, proc.deuceMemory.getWord(5).getAsInt());       //Should now be in 5'4'
	}
	
	
	//Tests that a single transfer happens, and it ends at the correct time
	@Test
	public void singleTransferTestWaitTime() throws InterruptedException {
		assertTrue(proc.deuceMemory.getWord(4).getAsInt() == 0);
		proc.tickClock();
		proc.tickClock();
		proc.tickClock();
		proc.tickClock();
		proc.deuceMemory.setWord(4, new Word(400));
		Instruction testTransfer = new Instruction(0, 4, 5, 0, 2, 4, 0);
		proc.setCurrentInstruction(testTransfer);
		while(proc.deuceMemory.getMicroCycle() != 0){
			proc.tickClock();
		}
		proc.executeInstruction();
		assertEquals(6, proc.deuceMemory.getMicroCycle());
		while(proc.deuceMemory.getMicroCycle() != 4){
			proc.tickClock();
		}
		assertEquals(400, proc.deuceMemory.getWord(5).getAsInt());
	}
	
	//Tests that a single transfer happens correctly when wait is bigger than timing
	@Test
	public void singleTransferTestBigWait() throws InterruptedException {
		assertTrue(proc.deuceMemory.getWord(4).getAsInt() == 0);
		proc.tickClock();
		proc.tickClock();
		proc.tickClock();
		proc.tickClock();
		proc.tickClock();
		proc.tickClock();
		proc.deuceMemory.setWord(4, new Word(400));
		Instruction testTransfer = new Instruction(0, 4, 5, 0, 4, 2, 0);
		proc.setCurrentInstruction(testTransfer);
		while(proc.deuceMemory.getMicroCycle() != 0){
			proc.tickClock();
		}
		proc.executeInstruction();
		assertEquals(4, proc.deuceMemory.getMicroCycle());
		proc.tickClock();
		proc.tickClock();
		assertEquals(400, proc.deuceMemory.getWord(5).getAsInt());
		proc.tickClock();
		assertEquals(0, proc.deuceMemory.getWord(5).getAsInt());
	}
	
	//Tests that a double transfer happens correctly in the most basic case
	@Test
	public void doubleTransferTest() throws InterruptedException {
		assertTrue(proc.deuceMemory.getWord(4).getAsInt() == 0);
		proc.tickClock();
		proc.tickClock();
		proc.deuceMemory.setWord(4, new Word(400));
		proc.tickClock();
		proc.deuceMemory.setWord(4, new Word(450));
		Instruction testTransfer = new Instruction(0, 4, 5, 2, 0, 0, 0);
		proc.setCurrentInstruction(testTransfer);
		while(proc.deuceMemory.getMicroCycle() != 0){
			proc.tickClock();
		}
		proc.executeInstruction();
		while(proc.deuceMemory.getMicroCycle() != 2){
			proc.tickClock();
		}
		assertEquals(400, proc.deuceMemory.getWord(5).getAsInt());
		proc.tickClock();
		assertEquals(450, proc.deuceMemory.getWord(5).getAsInt());
	}
	
	//Test to determine that a double transfer happens correctly in the case of wait and time being equal
	@Test
	public void doubleTransferTestWait() throws InterruptedException {
		assertTrue(proc.deuceMemory.getWord(4).getAsInt() == 0);
		proc.tickClock();
		proc.tickClock();
		proc.tickClock();
		proc.tickClock();
		proc.deuceMemory.setWord(4, new Word(400)); //(4'4' == 400)
		proc.tickClock();
		proc.deuceMemory.setWord(4, new Word(450)); //(4'5' == 450)
		Instruction testTransfer = new Instruction(0, 4, 5, 2, 2, 2, 0); //(instruction is move from what's in 4'4 and 4'5 into 5'4 and 5'5)
		proc.setCurrentInstruction(testTransfer);
		while(proc.deuceMemory.getMicroCycle() != 0){
			proc.tickClock();
		}
		proc.executeInstruction();                                      
		assertEquals(4, proc.deuceMemory.getMicroCycle());               //Should be at 4, starting at 0, 2(setup) + 2(wait) and then transfer
		while(proc.deuceMemory.getMicroCycle() != 4){
			proc.tickClock();
		}
		assertEquals(400, proc.deuceMemory.getWord(5).getAsInt());       //Should now be in 5'4'
		proc.tickClock();
		assertEquals(450, proc.deuceMemory.getWord(5).getAsInt());
	}
	
	//Tests that the correct word gets written into mc4 and 5, and that the timing take the instruction ends on mc6
	@Test
	public void doubleTransferTestWaitTime() throws InterruptedException {
		assertTrue(proc.deuceMemory.getWord(4).getAsInt() == 0);
		proc.tickClock();
		proc.tickClock();
		proc.tickClock();
		proc.tickClock();
		proc.deuceMemory.setWord(4, new Word(400));
		proc.tickClock();
		proc.deuceMemory.setWord(4, new Word(430));
		Instruction testTransfer = new Instruction(0, 4, 5, 2, 2, 4, 0);
		proc.setCurrentInstruction(testTransfer);
		while(proc.deuceMemory.getMicroCycle() != 0){
			proc.tickClock();
		}
		proc.executeInstruction();
		assertEquals(6, proc.deuceMemory.getMicroCycle());
		while(proc.deuceMemory.getMicroCycle() != 4){
			proc.tickClock();
		}
		assertEquals(400, proc.deuceMemory.getWord(5).getAsInt());
		proc.tickClock();
		assertEquals(430, proc.deuceMemory.getWord(5).getAsInt());
	}
	
	//Tests that a double transfer works in the case that the wait number is bigger than the timing
	@Test
	public void doubleTransferTestBigWait() throws InterruptedException {
		assertTrue(proc.deuceMemory.getWord(4).getAsInt() == 0);
		proc.tickClock();
		proc.tickClock();
		proc.tickClock();
		proc.tickClock();
		proc.tickClock();
		proc.tickClock();
		proc.deuceMemory.setWord(4, new Word(400));
		Instruction testTransfer = new Instruction(0, 4, 5, 2, 4, 2, 0);
		proc.setCurrentInstruction(testTransfer);
		while(proc.deuceMemory.getMicroCycle() != 0){
			proc.tickClock();
		}
		proc.executeInstruction();
		assertEquals(4, proc.deuceMemory.getMicroCycle());
		proc.tickClock();
		proc.tickClock();
		assertEquals(400, proc.deuceMemory.getWord(5).getAsInt());
		proc.tickClock();
		assertEquals(0, proc.deuceMemory.getWord(5).getAsInt());
	}
	
	//Tests that arithmetic works correctly in the case of a single transfer
	@Test
	public void singleArithmeticTestWait() throws InterruptedException {
		proc.tickClock();
		proc.tickClock();
		proc.deuceMemory.setWord(2, new Word(20));
		Instruction testArith = new Instruction(0, 2, DeuceConstants.DEST_SINGLE_ADD, 0, 2, 0, 0);
		proc.setCurrentInstruction(testArith);
		while(proc.deuceMemory.getMicroCycle() != 30){
			proc.tickClock();
		}
		proc.executeInstruction(); // should be at 2'2, so the wait should bring it here from 30
		for (int i=0; i<32; i++)
			assertEquals(20, proc.deuceMemory.getWord(13).getAsInt()); //Should always be the same value at any cycle
		
	}
	
	//Tests that addition works in the case of a double transfer
	@Test
	public void doubleArithmeticTestWait() throws InterruptedException {
		proc.tickClock();
		proc.tickClock();
		proc.deuceMemory.setWord(2, new Word(20));
		proc.tickClock();
		proc.deuceMemory.setWord(2, new Word(10));
		Instruction testArith = new Instruction(0, 2, DeuceConstants.DEST_SINGLE_ADD, 2, 2, 0, 0);
		proc.setCurrentInstruction(testArith);
		while(proc.deuceMemory.getMicroCycle() != 30){
			proc.tickClock();
		}
		proc.executeInstruction(); // should be at 2'2, so the wait should bring it here from 30
		for (int i=0; i<32; i++)
			assertEquals(30, proc.deuceMemory.getWord(13).getAsInt()); //Should always be the same value at any cycle
		
	}
	
	//Tests if adding during a long transfer works correctly, taking numbers from different words in a delay line and adding them
	@Test
	public void longArithmeticTestWait() throws InterruptedException {
		proc.tickClock();
		proc.tickClock();
		proc.deuceMemory.setWord(2, new Word(20));
		proc.tickClock();
		proc.deuceMemory.setWord(2, new Word(10));
		proc.tickClock();
		proc.deuceMemory.setWord(2, new Word(5));
		proc.tickClock();
		proc.deuceMemory.setWord(2, new Word(2));
		proc.tickClock();
		proc.deuceMemory.setWord(2, new Word(1));
		Instruction testArith = new Instruction(0, 2, DeuceConstants.DEST_SINGLE_ADD, 1, 2, 6, 0);
		proc.setCurrentInstruction(testArith);
		while(proc.deuceMemory.getMicroCycle() != 30){
			proc.tickClock();
		}
		proc.executeInstruction(); // should be at 2'2, so the wait should bring it here from 30
		for (int i=0; i<32; i++)
			assertEquals(38, proc.deuceMemory.getWord(13).getAsInt()); //Should always be the same value at any cycle
	}
	
	//Tests that long transfers word for subtraction as well (given that it works for addition, above
	@Test
	public void longSubTestWait() throws InterruptedException {
		proc.tickClock();
		proc.tickClock();
		proc.deuceMemory.setWord(2, new Word(20));
		proc.tickClock();
		proc.deuceMemory.setWord(2, new Word(20));
		proc.tickClock();
		proc.deuceMemory.setWord(2, new Word(20));
		proc.tickClock();
		proc.deuceMemory.setWord(2, new Word(20));
		proc.tickClock();
		proc.deuceMemory.setWord(2, new Word(20));
		proc.deuceMemory.setWord(13, new Word(100));
		Instruction testArith = new Instruction(0, 2, DeuceConstants.DEST_SINGLE_SUB, 1, 2, 6, 0);
		proc.setCurrentInstruction(testArith);
		while(proc.deuceMemory.getMicroCycle() != 30){
			proc.tickClock();
		}
		proc.executeInstruction(); // should be at 2'2, so the wait should bring it here from 30
		for (int i=0; i<32; i++)
			assertEquals(0, proc.deuceMemory.getWord(13).getAsInt()); //Should always be the same value at any cycle
	}
	
	
	//Tests that the memory is one step further in the case that the source word in a discrim_zero instruction is not a 0
	@Test
	public void discrimTest() throws InterruptedException {
		proc.tickClock();
		proc.tickClock();
		proc.deuceMemory.setWord(2, new Word(1));
		while(proc.deuceMemory.getMicroCycle() != 0){
			proc.tickClock();
		}
		Instruction discrimInstr = new Instruction(2, 2, DeuceConstants.DEST_DISCRIM_ZERO, 0, 0, 0, 0);
		proc.setCurrentInstruction(discrimInstr);
		proc.executeInstruction();
		assertEquals(3, proc.deuceMemory.getMicroCycle());
		while(proc.deuceMemory.getMicroCycle() != 0){
			proc.tickClock();
		}
		proc.tickClock();
		proc.tickClock();
		proc.deuceMemory.setWord(2, new Word(0));
		while(proc.deuceMemory.getMicroCycle() != 0){
			proc.tickClock();
		}
		proc.setCurrentInstruction(discrimInstr);
		proc.executeInstruction();
		assertEquals(2, proc.deuceMemory.getMicroCycle());
	}
	
	@Test
	public void discrimTestWithWait() throws InterruptedException {
		proc.tickClock();
		proc.tickClock();
		proc.deuceMemory.setWord(2, new Word(1));
		while(proc.deuceMemory.getMicroCycle() != 0){
			proc.tickClock();
		}
		Instruction discrimInstr = new Instruction(2, 2, DeuceConstants.DEST_DISCRIM_ZERO, 0, 0, 2, 0);
		proc.setCurrentInstruction(discrimInstr);
		proc.executeInstruction();
		assertEquals(5, proc.deuceMemory.getMicroCycle());
		while(proc.deuceMemory.getMicroCycle() != 0){
			proc.tickClock();
		}
		proc.tickClock();
		proc.tickClock();
		proc.deuceMemory.setWord(2, new Word(0));
		while(proc.deuceMemory.getMicroCycle() != 0){
			proc.tickClock();
		}
		proc.setCurrentInstruction(discrimInstr);
		proc.executeInstruction();
		assertEquals(4, proc.deuceMemory.getMicroCycle());
	}
	
	
	
	
}
