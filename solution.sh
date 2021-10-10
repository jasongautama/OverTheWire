#link: https://overthewire.org/wargames/bandit/ 
#To Get started, run on your terminal and connect to the instance using ssh
$ ssh bandit0@bandit.labs.overthewire.org -p 2220
password: bandit0

#Level0 → Level1
#Level1 → Level2
#Level2 → Level3
#Level3 → Level4
#Level4 → Level5
#Level5 → Level6
#Solution 1
#check for byte that is 1033bytes, but we don't check for readable and executable
cd ./inhere/ && du -ab | grep 1033 #./maybehere07/.file2
cat ./maybehere07/.file2
#Solution 2
cd ./inhere
find ./* -readable \! -executable -size 1033c # ./maybehere07/.file2
cat ./maybehere07/.file2 #DXjZPULLxYr17uwoI01bNLQbtFemEgo7
#Level 6 → Level 7
#Level 7 → Level 8
#Level 8 → Level 9
#Level 9 → Level 10
#Level 10 → Level 11
#Level 11 → Level 12
#Level 12 → Level 13
#Level 13 → Level 14
#Level 14 → Level 15
#Level 15 → Level 16
#Level 16 → Level 17
#Level 17 → Level 18
#Level 18 → Level 19
#Level 19 → Level 20
#Level 20 → Level 21
#Level 21 → Level 22
#Level 22 → Level 23
#Level 23 → Level 24
#Level 24 → Level 25
#Level 25 → Level 26
#Level 26 → Level 27
#Level 27 → Level 28
#Level 28 → Level 29
#Level 29 → Level 30
#Level 30 → Level 31
#Level 31 → Level 32
#Level 32 → Level 33
#Level 33 → Level 34
