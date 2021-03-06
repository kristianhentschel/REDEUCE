package uk.ac.glasgow.redeuce.userinterface.console;

import java.io.IOException;
import java.util.BitSet;
import java.util.Scanner;

import uk.ac.glasgow.redeuce.memory.Word;
import uk.ac.glasgow.redeuce.peripherals.CRDFileReader;
import uk.ac.glasgow.redeuce.peripherals.OutOfCardsException;
import uk.ac.glasgow.redeuce.processor.Processor;

public class Console {
	
	private ConsoleDisplay myDisplay;
	private Scanner myScanner;
	private Processor myProc;
	private BitSet osLamps;
	private BitSet idLamps;
	private BitSet isLamps;
	public enum stopKey {
		UP, LEVEL, DOWN
	}
	private stopKey status;

	public Console(){
	    myScanner = new Scanner(System.in);
	    myProc = new Processor();
	    myDisplay = new ConsoleDisplay(myProc.getMemory());
	    osLamps = new BitSet(32);
	    idLamps = new BitSet(32);
	    isLamps = new BitSet(13);
	    status = stopKey.UP;
	}

	public void menu() throws InterruptedException, IOException, OutOfCardsException{
	    String command;
	    boolean running = true;

	    while(running)
	    {
	        displayMenu();
	        command = getCommand();
	        running = execute(command);
	    }
	}

	private void displayMenu(){
	    System.out.println("            REDEUCE program         ");
	    System.out.println("=========================================");
	    System.out.println("|Initial Input...................INIT_IN|");
	    System.out.println("|Step in the program................STEP|");
	    System.out.println("|Load in a deck of cards......LOAD_CARDS|");
	    System.out.println("|Switch TCA setting..................TCA|");
	    System.out.println("|Switch TCB setting..................TCB|");
	    System.out.println("|Press Release Key...............RELEASE|");
	    System.out.println("|Change ID.....................SWITCH_ID|");
	    System.out.println("|Change OS.....................SWITCH_OS|");
	    System.out.println("|Stop the machine...................STOP|");
	    System.out.println("|Set Stop Key....................STOPKEY|");
	    System.out.println("|Pause when ID..............STOP_REQUEST|");
	    System.out.println("|Clear all of memory..........FULL_CLEAR|");
	    System.out.println("|Take 1-10 steps...........ONE_SHOT_DIAL|");
	    System.out.println("|Press One Shot up or down......ONE_SHOT|");
	    System.out.println("|Clear OS Lamps.................CLEAR_OS|");
	    System.out.println("|Clear ID Lamps.................CLEAR_ID|");
	    System.out.println("|Select a delay line..........DELAY_LINE|");
	    System.out.println("|Ready card puncher..........START_PUNCH|");
	    System.out.println("=========================================");
	}

	private boolean execute(String command) throws InterruptedException, IOException, OutOfCardsException{
	    if(command.equals("STEP"))
	    {
	    	if(this.status == stopKey.UP){
	    		while(myProc.getCurrentInstruction().getGo() != 0){
	    			myProc.step();
	    			Thread.sleep(20);
	    		}
	    	}
	    	else if(this.status == stopKey.LEVEL){
	    		myProc.step();
	    		Thread.sleep(20);
	    	}
	    	else{
	    		
	    	}
	    }
	    else if(command.equals("RELEASE")){
	    	System.out.println("Will implement soon!");
	    	//Presses release key
	    	//Meaning that machine is no longer stopped!
	    }
	    else if(command.equals("STOPKEY"))
	    {
	    	System.out.println("set to UP, LEVEL, or DOWN?");
	    	String setting = myScanner.nextLine();
	    	if(setting.equals("UP")){
	    		this.status = stopKey.UP;
	    	}
	    	if(setting.equals("LEVEL")){
	    		this.status = stopKey.LEVEL;
	    	}
	    	if(setting.equals("DOWN")){
	    		this.status = stopKey.DOWN;
	    	}
	    }
	    else if(command.equals("LOAD_CARDS"))
	    {
	    	System.out.println("Please give file name or other form of card input:");
	    	String deck = myScanner.nextLine();
	    	CRDFileReader reader = new CRDFileReader(deck);
	    	myProc.cardLoad(reader.createNewDeck());	
	    }
	    else if(command.equals("INIT_IN"))
	    {
	    	myProc.initialInput();
	    }
	    else if(command.equals("ONE_SHOT_DIAL"))
	    {
	    	System.out.println("Enter number of single shots between 1 and 10: ");
	    	int shots = myScanner.nextInt();
	    	assert((shots <=10) && (shots > 0));
	    	for (int i=0; i<shots; i++){
	    		myProc.step();
	    		myDisplay.update();
	    		Thread.sleep(20);
	    	}
	    }
	    else if(command.equals("ONE_SHOT"))
	    {
	    	System.out.println("Up or Down?");
	    	String shots = myScanner.nextLine();
	    	if (shots.equals("Down")){
	    		myProc.step();
	    		myDisplay.update();
	    		Thread.sleep(20);
	    	}
	    	else if(shots.equals("Up")){
	    		for (int i=0; i<600; i++){
		    		myProc.step();
		    		myDisplay.update();
		    		Thread.sleep(10);
		    	}
	    	}
	    	else{
	    		System.out.println("incorrect syntax, nothing happened");
	    	}
	    	
	    }
	    else if(command.equals("STOP"))
	    {
	    	return false;
	    }
	    else if(command.equals("START_PUNCH"))
	    {
	    	myProc.turnOnPunch();
	    }
	    else if(command.equals("FULL_CLEAR")){
	    	myProc.resetMemory();
	    }
	    else if(command.equals("SWITCH_OS")){
	    	System.out.println("which switch are you flicking?");
	    	int toggle = myScanner.nextInt();
	    	if(osLamps.get(toggle)){
	    		osLamps.clear(toggle);
	    	}
	    	else{
	    		this.osLamps.set(toggle);
	    	}
	    	String testOutput = new Word(osLamps).toString();
	    	System.out.println(testOutput);
	    }
	    else if(command.equals("SWITCH_ID")){
	    	System.out.println("which switch are you flicking?");
	    	int toggle = myScanner.nextInt();
	    	if(idLamps.get(toggle)){
	    		idLamps.clear(toggle);
	    	}
	    	else{
	    		this.idLamps.set(toggle);
	    	}
	    	String testOutput = new Word(idLamps).toString();
	    	System.out.println(testOutput);
	    }
	    else if(command.equals("CLEAR_ID")){
	    	idLamps.clear();
	    	String testOutput = new Word(idLamps).toString();
	    	System.out.println(testOutput);
	    }
	    else if(command.equals("CLEAR_OS")){
	    	osLamps.clear();
	    	String testOutput = new Word(osLamps).toString();
	    	System.out.println(testOutput);
	    }
	    else if(command.equals("DELAY_LINE")){
	    	System.out.println("which switch are you flicking?");
	    	int dl = myScanner.nextInt();
	    	myDisplay.changeDelay(dl);
	    }
	    else{
	    	System.out.println("Sorry! Either incorrect format or that instruction isn't implemented yet!");
	    }
	    myDisplay.update();
	    return true;
	}

	private String getCommand(){
	    System.out.println("Enter the command of the function you wish to use: ");
	    String command = myScanner.nextLine();
	    return command;
	}
	
//	private void releaseKeyPressed(){
//		
//	}

}
