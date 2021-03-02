/**
 * @file mysh.c
 * @brief basic shell implementation.
 * @copyright Copyright (c) 2021 by Safi Nassar
 */

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include "./mysh.h"
#include "./message.h"

/**
 *  Shell / Command-line interpreter
 *
 * *functionality:*
 * [core]
 * → provides a prompt to receive & execute commands
 *
 * *feature:*
 * → output redirection
 * → aliasing
 * [execution mode]
 * → interactive: reads from standard input
 * → batch mode: reads commands from a file
 *
 * *supported behavior:*
 * → full paths are required to be specified for all commands (no relative
 * searches )
 * → long commands exceeding 512 characters are ignored
 *
 * *user interface:*
 * → command-line
 *      no argument: interactive mode
 *      `<batch file>` argument: batch mode
 *
 * @param argc command-line argument count
 * @param argv command-line argument value
 * @return int program exit code
 */
int main(int argc, char *argv[]) {
    // set default variables and program configuration parameters
    struct Config config = {INTERACTIVE, {}};

    // parse CLI arguments: update configuration of variables & execution
    // function
    cliAdapter(argc, argv, &config);

    // execute requested functionality
    switch (config.functionality) {
        case BATCH: {
            batch();
        } break;
        case INTERACTIVE:
            prompt();
            break;
        default:
            break;
    }

    // clean up
    if (fclose(config.variable.input) != 0) {
        perror("Error: while closing file. ");
        fflush(stderr);
        exit(1);
    }

    return 0;
}

/**
 * parse CLI arguments: handle associated input variables and update program
 * config
 *
 * @param argc cli count
 * @param argv pointer to cli value vector
 * @param config program's behavior configuration
 */
static void cliAdapter(int argc, char **argv, struct Config *config) {
    opterr = 0;      // suppress printing errors
    int nextOption;  // option key
    // parse option & non-option arguments:
    while ((nextOption = getopt(argc, argv, "")) != -1) {
        switch (nextOption) {
            case '\1':  // parse non-option arguments
            case '?':
            default:
                // error parsing, unknown character
                goto error_argument;
        }
    }

    if (argc == 1)  // single argument
        return;
    else if (argc == 2 && optind == 1)  // check for single input argument
        goto case_filename;

error_argument:  // incorrect command line arguments number
    fprintf(stderr, "%s", ERROR_ARGUMENTS);
    fflush(stderr);
    exit(1);

case_filename:
    config->functionality = BATCH;
    config->variable.input = createFileDescriptor(argv[1]);
    return;
}

/**
 * parse commands
 *
 */
void parse() {
    // - fgets() reading lines of input, strtok() parsing commandline or
    // strdup() for preserving input string (careful about memory leaks),

    // handle following scenarios which are not errors :
    // - An empty command line.
    // - White spaces include tabs and spaces.
    // - Multiple white spaces on an otherwise empty command line.
    // - Multiple white spaces between command-line arguments, including before
    // the first command on a line and after the last command.
    // - Batch file ends without exit command
}

/**
 *
 *
 */
void executeCommand() {
    /* IMPORTANT:
         - solve infinite loop problem in parent caused by rewinding streams
       when calling exit() in child process:
            1. use _exit().
            or
            2. use fclose() to close the shared file with the parent (input
       commands file) in the child process before calling exit().

        - You should be able to handle up to 99 tokens for each shell command,
       100 including the necessary NULL terminator.

        - if execv() is successful, it will not return; if it does return, there
        was an error (e.g., the command does not exist). In this case, the child
        process should call _exit() to terminate itself. Contruct the argv array
        correctly with argv[3] = NULL;
     */

    fork();
    execv();
    waitpid();

error_noCommand:
    // - command does not exist and cannot be executed
    char *jobName = "";
    fprintf(stderr, ERROR_COMMAND(jobName));
    fflush(stderr);
    // continue processing
error_longCommand:
    // - A very long command line (over 512 characters)
    fprintf(stdout, "%s",
            "warning: ignoring long command exceeding 512 characters");
    fflush(stdout);
    // continue processing
}

/**
 * prompt the shell creates a child process that executes the command you
 * entered and then prompts for more user input when it has finished.
 */
void prompt() {
    // 1. display PROMPT to stdout
    // 2. recieve typed in command (parse the input)
    //    & execute it and wait for it to finish.
    // repeated until user types exit or ends their input. ( handle user types
    // 'Ctrl-D' as a command in interactive mode)

    // simple loop that waits for input
    // while () {
    //          executeCommand();
    // }

    // for both modes: shell terminates when it sees the exit command on a line
    // or reaches the end of the input stream (i.e., the end of the batch file
    // or the user types 'Ctrl-D'). NOTE: We will not test the exit command with
    // extra arguments.
}

/**
 *
 *
 */
void batch() {
    // - batch file: contains the list of commands (each on its own line, read
    // each line of the batch-file for commands to be executed)
    // 1. echo line to be exected (If the line is empty or only composed of
    // whitespace, you should still echo it). (if it is over the 512-character
    // limit then echo at least the first 512 characters (but you may echo more
    // if you want)).
    // 2. execute command in the current line.
}

/**
 * open file for reading with error handling
 *
 * @param filename name of the file to open
 * @return FILE* file descriptor / input stream
 */
FILE *createFileDescriptor(char *filename) {
    FILE *s = NULL;
    // create requested file stream
    if ((s = fopen(filename, "r")) == NULL) goto fileError;
    return s;

fileError:
    // - batch file does not exist or cannot be opened
    fprintf(stderr, ERROR_FILE(filename));
    fflush(stderr);
    exit(1);
}