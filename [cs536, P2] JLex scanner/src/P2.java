///////////////////////////////////////////////////////////////////////////////
// Title: P2 assignment
// Files: P2.java, sym.java, ErrMsg.java, cminusminus.java, & dependencies
// Semester: CS536 Spring 2021
//
// Author: Safi Nassar
// Email: nassar2@wisc.edu
// CS Login: safi@cs.wisc.edu
// Lecturer's Name: Loris D'Antoni
//
///////////////////////////////////////////////////////////////////////////////

import java.util.*;
import java.io.*;
import java.nio.file.Path;
import java.nio.file.Paths;
import java_cup.runtime.*; // defines Symbol

/**
 * configuration class for controling testing bahavior
 */
class config {
    // test directories reltivate path
    final public static String INPUT_DIRECTORY = "./";
    final public static String OUTPUT_DIRECTORY = "./";
    final public static Boolean debug = false;
}


/**
 * manages input and output stream for each test instance, creating temporary
 * files for each test instance
 */
class pipe {
    public FileReader in = null;
    public PrintWriter out = null;

    /**
     * construct pipe source and target
     *
     * @param filename input file name excluding extension
     */
    pipe(String filename) {
        // open input and output files
        try {
            in = new FileReader(
                    config.INPUT_DIRECTORY + File.separator + filename + ".in");
            out = new PrintWriter(new FileWriter(config.OUTPUT_DIRECTORY
                    + File.separator + filename + ".out"));
        } catch (FileNotFoundException ex) {
            System.err.println(filename + " file not found.");
            System.exit(-1);
        } catch (IOException ex) {
            System.err.println(filename + " cannot be opened.");
            System.exit(-1);
        }
    }

    /**
     * close used streams
     */
    public void close() {
        try {
            out.close();
            in.close();
        } catch (IOException e) {
            // not common for file I/O
            System.err.println("error closing files.");
            System.exit(-1);
        }
    }
}


/**
 * P2 class: tests the scanner generated for the C-- language. testing all
 * tokens types, input that causes errors, character numbers, values associated
 * with tokens, etc.
 * 
 * <p>
 * the scanner retrieves the token name, # line, # character, actual value
 * </p>
 * 
 * @author Safi
 */
public class P2 {
    /**
     * test driver: calls unit test methods
     *
     * @param args input arguments if any
     * @throws IOException exception may be thrown by yylex
     */
    public static void main(String[] args) throws IOException {
        // test all tokens both legal and illegal
        testAllTokens();
    }

    /**
     * test valid and invalid tokens
     * 
     * <p>
     * valid tokens are tested by running input file which contains contains all
     * tokens one per line or multiple per line. The scanner correctness is
     * verified by comparing the input and output files.
     * </p>
     * 
     * <p>
     * Invalid tokens are tested by the same process only that these are
     * compared to an expected errors file.
     * </p>
     * 
     * @throws IOException exception may be thrown by yylex
     */
    private static void testAllTokens() throws IOException {
        // name of files without extension
        // (note: this was a previous design choice for supporting multiple
        // input file)
        String[] fileList = {"allTokens", "illegalTokens",
                "eof" /*
                       * unterminated string literal with end-of-file
                       */};
        for (String filename : fileList) {
            pipe stream = new pipe(filename);
            lexer(stream.in, stream.out);
            stream.close();
        }
    }

    /**
     * runs scanner - pipes input strings through scanner to an output file,
     * writing the analyzed tokens
     *
     * @param in  input stream of strings
     * @param out output stream for writing tokens to
     * @throws IOException exception may be thrown by yylex
     */
    private static void lexer(FileReader in, PrintWriter out)
            throws IOException {
        CharNum.num = 1; // reset character counter
        // create and call the scanner
        Yylex scanner = new Yylex(in);
        Symbol token = scanner.next_token();
        while (token.sym != sym.EOF) {
            if (config.debug)
                System.out.printf("→ %s\n", getTokenValue(token));
            // write token value to a new line in the target file
            out.println(formatToken(token));
            token = scanner.next_token();
        }
    }

    /**
     * create a proper format for the token properties used in the output test
     * 
     * @return formated string which includes all values necessary to validate
     */
    private static String formatToken(Symbol token) {
        TokenVal tokenValue = (TokenVal) token.value;
        int line = tokenValue.linenum;
        int character = tokenValue.charnum;
        String value = getTokenValue(token); // getting the value using symbol
                                             // comparison removes the need for
                                             // testing it explicitely
        return String.format("%3d:%2d\t%s", line, character, value);
    }

    /**
     * retrieve the appropriate token value corresponding to a symbol
     *
     * @param token a token symbol generated by the lexer/scanner
     * @return token value
     */
    private static String getTokenValue(Symbol token) {
        switch (token.sym) {
            case sym.BOOL:
                return "bool";
            case sym.INT:
                return "int";
            case sym.VOID:
                return "void";
            case sym.TRUE:
                return "true";
            case sym.FALSE:
                return "false";
            case sym.STRUCT:
                return "struct";
            case sym.CIN:
                return "cin";
            case sym.COUT:
                return "cout";
            case sym.IF:
                return "if";
            case sym.ELSE:
                return "else";
            case sym.WHILE:
                return "while";
            case sym.RETURN:
                return "return";
            case sym.ID:
                return ((IdTokenVal) token.value).idVal;
            case sym.INTLITERAL:
                return Integer.toString(((IntLitTokenVal) token.value).intVal);
            case sym.STRINGLITERAL:
                return ((StrLitTokenVal) token.value).strVal;
            case sym.LCURLY:
                return "{";
            case sym.RCURLY:
                return "}";
            case sym.LPAREN:
                return "(";
            case sym.RPAREN:
                return ")";
            case sym.SEMICOLON:
                return ";";
            case sym.COMMA:
                return ",";
            case sym.DOT:
                return ".";
            case sym.WRITE:
                return "<<";
            case sym.READ:
                return ">>";
            case sym.PLUSPLUS:
                return "++";
            case sym.MINUSMINUS:
                return "--";
            case sym.PLUS:
                return "+";
            case sym.MINUS:
                return "-";
            case sym.TIMES:
                return "*";
            case sym.DIVIDE:
                return "/";
            case sym.NOT:
                return "!";
            case sym.AND:
                return "&&";
            case sym.OR:
                return "||";
            case sym.EQUALS:
                return "==";
            case sym.NOTEQUALS:
                return "!=";
            case sym.LESS:
                return "<";
            case sym.GREATER:
                return ">";
            case sym.LESSEQ:
                return "<=";
            case sym.GREATEREQ:
                return ">=";
            case sym.ASSIGN:
                return "=";
            default:
                return "UNKNOWN TOKEN";
        } // end switch
    }
}
