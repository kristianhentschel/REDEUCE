package uk.ac.glasgow.redeuce.asm;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.BitSet;
import uk.ac.glasgow.redeuce.DeuceConstants;
import uk.ac.glasgow.redeuce.memory.Word;
import uk.ac.glasgow.redeuce.processor.Instruction;

/**
 * Assemble textual DEUCE assembler code into
 * CRD files into textual assembler,
 *
 * Generally we are trying to 
 * follow the DEUCE format from Copeland's 
 * "Alan Turing's Electronic Brain" book.
 *
 * @author Jeremy Singer
 * Uses Rasmus' card reader code from peripherals
 */

public class Assembler {
    
    /**
     * Assemble an ASCII file of 
     * textual assembly code for DEUCE
     * into .CRD format
     *
     * @return string of CRD file output, to pipe to CRD file
     * @param asmFileName name of the DEUCE asm file, possibly including path
     */
    public static String assemble(String asmFileName) {

	StringBuilder sb = new StringBuilder();

	try (BufferedReader br = new BufferedReader(new FileReader(asmFileName))) {
	    String line;
	    while ((line = br.readLine()) != null) {
		// parse line by line
		// for each line, read ^'{' NIS SRC-DEST- [char] - WAIT TIMING X '}'
		line = line.trim();  // remove leading and trailing whitespace
		if (line.length() < 2) {
		    continue;
		}
		assert ((line.charAt(0) == '{') && (line.charAt(line.length()-1) == '}'));
		// remove these end characters
		line = line.substring(1, line.length()-1);

		String [] data = line.split("\\s+");  // split on whitespace
		int nis;
		int src;
		int dst;
		int chr;
		int wait;
		int timing;
		int go = 0;

		int i = 0; // for iterating over data
		
		// first word is NIS
		nis = Integer.parseInt(data[i++]);

		// second word is either SRC or SRC-DST
		if (data[i].contains("-")) {
		    // it's SRC-DST
		    src  = Integer.parseInt((data[i].split("-"))[0]);
		    dst = Integer.parseInt((data[i].split("-"))[1]);
		    i++;
		}
		else {; 
		    src = Integer.parseInt(data[i++]);
		    assert (data[i].equals("-"));
		    i++;
		    dst = Integer.parseInt(data[i++]);
		}

		// next word might be characteristic - single ASCII digit
		// TODO -  CHECK how to specify chr = 3
		if (data[i++].equals("s")) {
		    // single word transfer (normal case)
		    chr = 1;
		}
		else {
		    // check Copeland book, p244
		    // transfer T-W+1 words (mod 32)

		    chr = 0;
		}

		wait = Integer.parseInt(data[i++]);

		timing = Integer.parseInt(data[i++]);

		// optional final field - for go digit
		try {
		    if (data[i].equals("X")) {
			go = 0;
		    }
		}
		catch (ArrayIndexOutOfBoundsException e) {
		    // default case
		    go = 1;
		}

		// now we have read all the fields, let's construct an Instruction
		Instruction instr = new Instruction(
						    nis,
						    src,
						    dst,
						    chr,
						    wait,
						    timing,
						    go);
		sb.append("# " + instr.toAsm());
	    }
   
	}
	catch (FileNotFoundException e) {
	    System.err.println("unable to locate file");
	}
	catch (IOException e) {
	    e.printStackTrace();
	}

	return sb.toString();
    }


    /**
     * main method (although maybe we should remove this?
     */
    public static void main(String [] args) {
	assert args.length == 1;
	String s = assemble(args[0]);
	System.out.println(s);
    }
}

