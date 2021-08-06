# find-first-task

Run it in the project root directory. It will find the first task name
in a role.

Examples (assuming a role named test with a task named blargh):
$ ./find-first-task.sh test
blargh
$ ./find-first-task.sh -f test
test : blargh

