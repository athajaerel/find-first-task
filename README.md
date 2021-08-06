# find-first-task

Run it in the project root directory. It will find the first task name
in a role.

Examples (assuming a role named test with a task named blargh):
```
$ ./find-first-task.sh test
blargh
```
```
$ ./find-first-task.sh -f test
test : blargh
```

Intended usage is combined with Ansible `--start-at-task`, like so:
```
$ ansible-playbook playbook.yml -i whatever --start-at-task="$(find-first-task -f test)"
```
