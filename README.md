# Shell Script Bug: Silent Failure with Missing Files

This repository demonstrates a common error in shell scripting where a script fails silently when attempting to process files that do not exist. The script iterates through a list of files and attempts to extract the first line of each.  However, if a file is missing, the script continues without reporting an error, potentially leading to unexpected results.

## Bug

The `bug.sh` file contains the erroneous shell script. The core problem lies in the lack of error handling when processing files.  If a file doesn't exist, the `head` command will return an error, but the script doesn't capture or handle this error.

## Solution

The `bugSolution.sh` file provides a corrected version. This solution incorporates error checking using the exit status of the `head` command. If `head` fails (returns a non-zero exit status), the script reports the error and exits gracefully.