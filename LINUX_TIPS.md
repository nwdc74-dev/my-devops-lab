#  Dorians Linux & DevOps Command Reference 

## Permissions ( The Math)
* `chmod 600 <file>` : Top Secret (Only you can REad/Write)
* `chmod 755 <script>`: Standard Script (you can edit, everyone can run)
* `ls -l` : View permissions ( look for `rwx`)

## Searching & Filtering
* `grep "text" <file>`: Find text inside a file
* `grep -n`: Show line numbers
* `find . -name "*.sh"`: Find all script files in the current folder

## The Pipeline (Pipes & Redirects)
* `>`: Save output to a file (Overwrites)
* `>>`: Add output to the end of a file (Appends)
* `|`: The Pipe. Sends output of Command A to Command B
* `wc -l`: Counts the number lines.

## Monitoring
* `tail -f <file>`: Watch a log file update in real time
* `free -m`: Check RAM and Swap space
* `ps aux | grep <name>`: Find a specific running program

