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
$ cd ./inhere/ && du -ab | grep 1033 #./maybehere07/.file2
$ cat ./maybehere07/.file2
#Solution 2
cd ./inhere
$ find ./* -readable \! -executable -size 1033c # ./maybehere07/.file2
$ cat ./maybehere07/.file2 
> DXjZPULLxYr17uwoI01bNLQbtFemEgo7
#Level 6 → Level 7
$ find ./* -user bandit7 -group bandit6 -size 33c
$ cat ./var/lib/dpkg/info/bandit7.password #HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs
#Level 7 → Level 8
$ cat data.txt | grep millionth #cvX2JJa4CFALtqS87jk27qwqGhBM9plV
#Level 8 → Level 9
$ sort data.txt | uniq -u #UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR
#Level 9 → Level 10
strings --data data.txt | grep === 
> ========== the*2i"4
> ========== password
> Z)========== is
> &========== truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk
#Level 10 → Level 11
base64 -d data.txt
> The password is IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR
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
