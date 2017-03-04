package uk.ac.glasgow.redeuce.asm;

import java.io.IOException;
import java.util.BitSet;
import uk.ac.glasgow.redeuce.DeuceConstants;
import uk.ac.glasgow.redeuce.memory.Word;
import uk.ac.glasgow.redeuce.peripherals.Card;
import uk.ac.glasgow.redeuce.peripherals.CardDeck;
import uk.ac.glasgow.redeuce.peripherals.CardLine;
import uk.ac.glasgow.redeuce.peripherals.CRDFileReader;
import uk.ac.glasgow.redeuce.processor.Instruction;

/**
 * Disassemble CRD files into textual assembler,
 * following the format from Copeland's 
 * "Alan Turing's Electronic Brain" book.
 *
 * Uses Rasmus' card reader code from peripherals
 */

public class Disassembler {
    
    /**
     * disassemble an ASCII file in .CRD format into
     * textual assembly code for DEUCE
     *
     * @return string of dissassembled output from CRD file
     * @param crdFileName name of the CRD file, possibly including path
     */
    public static String disassemble(String crdFileName) {
	StringBuilder sb = new StringBuilder();
	CRDFileReader r = new CRDFileReader(crdFileName);
	
	try {
	    CardDeck d = r.createNewDeck();
	    int instrIndex = 0;
	    
	    for (;;) {
		Card c = d.getNextCard();
		CardLine l = c.getNextLine();

		while (l != null) {
		    // process each line - one instr per line
		    BitSet b = l.getBits();
		    // assert how many bits in bitset?
		    assert b.length() <= DeuceConstants.BITS_IN_WORD;
		    Word w = new Word(b);
		    Instruction i = new Instruction(w);
		    
		    sb.append("" + 
			      String.format("%1$3s", instrIndex) + 
			      " : ");
		    sb.append(i.toAsm());
		    sb.append("\n");
		    l = c.getNextLine();
		    instrIndex++;
		    
		}
	    }
	    

	}
	catch (IndexOutOfBoundsException e) {
	    // this means we have read all the cards in the deck
	    // so effectively we end the for loop
	    // no-op
	}
	catch (IOException e) {
	    // this means we couldn't read the file
	    sb.append("Unable to disassemble this card");
	}

	return sb.toString();
    }


    /**
     * main method (although maybe we should remove this?
     */
    public static void main(String [] args) {
	assert args.length == 1;
	String s = disassemble(args[0]);
	System.out.println(s);
    }
}

