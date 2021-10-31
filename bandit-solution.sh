#link: https://overthewire.org/wargames/bandit/ 
#To Get started, run on your terminal and connect to the instance using ssh
$ ssh bandit0@bandit.labs.overthewire.org -p 2220
#password: bandit0

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
$ cat ./maybehere07/.file2 # DXjZPULLxYr17uwoI01bNLQbtFemEgo7

#Level 6 → Level 7
$ find ./* -user bandit7 -group bandit6 -size 33c
$ cat ./var/lib/dpkg/info/bandit7.password # HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs

#Level 7 → Level 8
$ cat data.txt | grep millionth # cvX2JJa4CFALtqS87jk27qwqGhBM9plV

#Level 8 → Level 9
$ sort data.txt | uniq -u # UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR

#Level 9 → Level 10
$ strings --data data.txt | grep === 
# ========== the*2i"4
# ========== password
# Z)========== is
# &========== truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk

#Level 10 → Level 11
base64 -d data.txt
# The password is IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR

#Level 11 → Level 12
$ data="$(cat data.txt)" && tr 'A-Za-z' 'N-ZA-Mn-za-m' <<< $data
# The password is 5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu

#Level 12 → Level 13
#This level is very tedious -- repeated steps. Please see this article: https://medium.com/secttp/overthewire-bandit-level-12-439f655f6fd5
bandit12@bandit:/tmp/j123$ file data8.bin
#data8.bin: gzip compressed data, was "data9.bin", last modified: Thu May  7 18:14:30 2020, max compression, from Unix
bandit12@bandit:/tmp/j123$ mv data8.bin data9.gz
bandit12@bandit:/tmp/j123$ gzip -dk data9.gz
bandit12@bandit:/tmp/j123$ cat data9
#The password is 8ZjyCRiBWFYkneahHwxCv3wb2a1ORpYL

#Level 13 → Level 14
# copy sshkey.private
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEAxkkOE83W2cOT7IWhFc9aPaaQmQDdgzuXCv+ppZHa++buSkN+
gg0tcr7Fw8NLGa5+Uzec2rEg0WmeevB13AIoYp0MZyETq46t+jk9puNwZwIt9XgB
ZufGtZEwWbFWw/vVLNwOXBe4UWStGRWzgPpEeSv5Tb1VjLZIBdGphTIK22Amz6Zb
ThMsiMnyJafEwJ/T8PQO3myS91vUHEuoOMAzoUID4kN0MEZ3+XahyK0HJVq68KsV
ObefXG1vvA3GAJ29kxJaqvRfgYnqZryWN7w3CHjNU4c/2Jkp+n8L0SnxaNA+WYA7
jiPyTF0is8uzMlYQ4l1Lzh/8/MpvhCQF8r22dwIDAQABAoIBAQC6dWBjhyEOzjeA
J3j/RWmap9M5zfJ/wb2bfidNpwbB8rsJ4sZIDZQ7XuIh4LfygoAQSS+bBw3RXvzE
pvJt3SmU8hIDuLsCjL1VnBY5pY7Bju8g8aR/3FyjyNAqx/TLfzlLYfOu7i9Jet67
xAh0tONG/u8FB5I3LAI2Vp6OviwvdWeC4nOxCthldpuPKNLA8rmMMVRTKQ+7T2VS
nXmwYckKUcUgzoVSpiNZaS0zUDypdpy2+tRH3MQa5kqN1YKjvF8RC47woOYCktsD
o3FFpGNFec9Taa3Msy+DfQQhHKZFKIL3bJDONtmrVvtYK40/yeU4aZ/HA2DQzwhe
ol1AfiEhAoGBAOnVjosBkm7sblK+n4IEwPxs8sOmhPnTDUy5WGrpSCrXOmsVIBUf
laL3ZGLx3xCIwtCnEucB9DvN2HZkupc/h6hTKUYLqXuyLD8njTrbRhLgbC9QrKrS
M1F2fSTxVqPtZDlDMwjNR04xHA/fKh8bXXyTMqOHNJTHHNhbh3McdURjAoGBANkU
1hqfnw7+aXncJ9bjysr1ZWbqOE5Nd8AFgfwaKuGTTVX2NsUQnCMWdOp+wFak40JH
PKWkJNdBG+ex0H9JNQsTK3X5PBMAS8AfX0GrKeuwKWA6erytVTqjOfLYcdp5+z9s
8DtVCxDuVsM+i4X8UqIGOlvGbtKEVokHPFXP1q/dAoGAcHg5YX7WEehCgCYTzpO+
xysX8ScM2qS6xuZ3MqUWAxUWkh7NGZvhe0sGy9iOdANzwKw7mUUFViaCMR/t54W1
GC83sOs3D7n5Mj8x3NdO8xFit7dT9a245TvaoYQ7KgmqpSg/ScKCw4c3eiLava+J
3btnJeSIU+8ZXq9XjPRpKwUCgYA7z6LiOQKxNeXH3qHXcnHok855maUj5fJNpPbY
iDkyZ8ySF8GlcFsky8Yw6fWCqfG3zDrohJ5l9JmEsBh7SadkwsZhvecQcS9t4vby
9/8X4jS0P8ibfcKS4nBP+dT81kkkg5Z5MohXBORA7VWx+ACohcDEkprsQ+w32xeD
qT1EvQKBgQDKm8ws2ByvSUVs9GjTilCajFqLJ0eVYzRPaY6f++Gv/UVfAPV4c+S0
kAWpXbv5tbkkzbS0eaLPTKgLzavXtQoTtKwrjpolHKIHUz6Wu+n4abfAIRFubOdN
/+aLoRQ0yBDRbdXMsZN/jvY44eM+xRLdRVyMmdPtP8belRi2E2aEzA==
-----END RSA PRIVATE KEY-----
#copy to your local computer 
cd ~/.ssh
touch bandit14 #paste the RSA you get from the bandit13 VMs
chmod 600 bandit14
ssh -i bandit14 bandit14@bandit.labs.overthewire.org -p 2220
#Level 14 → Level 15
cd /etc/bandit_pass/
cat bandit14 # 4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e
nc localhost 30000 #input the bandit14 password
#BfMYroe26WYalil77FoDi9qh59eK5xNr

#Level 15 → Level 16
openssl s_client -connect localhost:30001
#input: BfMYroe26WYalil77FoDi9qh59eK5xNr

#Correct!
# cluFn7wTiGryunymYOu4RcffSxQluehd

#Level 16 → Level 17

$ nmap -v -p31000-32000 localhost

Nmap scan report for localhost (127.0.0.1)
Host is up (0.00023s latency).
Not shown: 996 closed ports
PORT      STATE SERVICE
31046/tcp open  unknown
31518/tcp open  unknown #this one doesn't echo my input - can connect only with openssl s_client
31691/tcp open  unknown
31790/tcp open  unknown #this one as well - correct!
31960/tcp open  unknown

#approach 1
nmap localhost -p 31000-32000 -A
echo "cluFn7wTiGryunymYOu4RcffSxQluehd" | openssl s_client -connect localhost:31790 -ign_eof
#approach 2
$ openssl s_client -connect localhost:31790 
#input: cluFn7wTiGryunymYOu4RcffSxQluehd
Correct!
-----BEGIN RSA PRIVATE KEY-----
MIIEogIBAAKCAQEAvmOkuifmMg6HL2YPIOjon6iWfbp7c3jx34YkYWqUH57SUdyJ
imZzeyGC0gtZPGujUSxiJSWI/oTqexh+cAMTSMlOJf7+BrJObArnxd9Y7YT2bRPQ
Ja6Lzb558YW3FZl87ORiO+rW4LCDCNd2lUvLE/GL2GWyuKN0K5iCd5TbtJzEkQTu
DSt2mcNn4rhAL+JFr56o4T6z8WWAW18BR6yGrMq7Q/kALHYW3OekePQAzL0VUYbW
JGTi65CxbCnzc/w4+mqQyvmzpWtMAzJTzAzQxNbkR2MBGySxDLrjg0LWN6sK7wNX
x0YVztz/zbIkPjfkU1jHS+9EbVNj+D1XFOJuaQIDAQABAoIBABagpxpM1aoLWfvD
KHcj10nqcoBc4oE11aFYQwik7xfW+24pRNuDE6SFthOar69jp5RlLwD1NhPx3iBl
J9nOM8OJ0VToum43UOS8YxF8WwhXriYGnc1sskbwpXOUDc9uX4+UESzH22P29ovd
d8WErY0gPxun8pbJLmxkAtWNhpMvfe0050vk9TL5wqbu9AlbssgTcCXkMQnPw9nC
YNN6DDP2lbcBrvgT9YCNL6C+ZKufD52yOQ9qOkwFTEQpjtF4uNtJom+asvlpmS8A
vLY9r60wYSvmZhNqBUrj7lyCtXMIu1kkd4w7F77k+DjHoAXyxcUp1DGL51sOmama
+TOWWgECgYEA8JtPxP0GRJ+IQkX262jM3dEIkza8ky5moIwUqYdsx0NxHgRRhORT
8c8hAuRBb2G82so8vUHk/fur85OEfc9TncnCY2crpoqsghifKLxrLgtT+qDpfZnx
SatLdt8GfQ85yA7hnWWJ2MxF3NaeSDm75Lsm+tBbAiyc9P2jGRNtMSkCgYEAypHd
HCctNi/FwjulhttFx/rHYKhLidZDFYeiE/v45bN4yFm8x7R/b0iE7KaszX+Exdvt
SghaTdcG0Knyw1bpJVyusavPzpaJMjdJ6tcFhVAbAjm7enCIvGCSx+X3l5SiWg0A
R57hJglezIiVjv3aGwHwvlZvtszK6zV6oXFAu0ECgYAbjo46T4hyP5tJi93V5HDi
Ttiek7xRVxUl+iU7rWkGAXFpMLFteQEsRr7PJ/lemmEY5eTDAFMLy9FL2m9oQWCg
R8VdwSk8r9FGLS+9aKcV5PI/WEKlwgXinB3OhYimtiG2Cg5JCqIZFHxD6MjEGOiu
L8ktHMPvodBwNsSBULpG0QKBgBAplTfC1HOnWiMGOU3KPwYWt0O6CdTkmJOmL8Ni
blh9elyZ9FsGxsgtRBXRsqXuz7wtsQAgLHxbdLq/ZJQ7YfzOKU4ZxEnabvXnvWkU
YOdjHdSOoKvDQNWu6ucyLRAWFuISeXw9a/9p7ftpxm0TSgyvmfLF2MIAEwyzRqaM
77pBAoGAMmjmIJdjp+Ez8duyn3ieo36yrttF5NSsJLAbxFpdlc1gvtGCWW+9Cq0b
dxviW8+TFVEBl1O4f7HVm6EpTscdDxU+bCXWkfjuRb7Dy9GOtt9JPsX8MBTakzh3
vBgsyi/sN3RqRBcGU40fOoZyfAMT8s1m/uYv52O6IgeuZ/ujbjY=
-----END RSA PRIVATE KEY-----

closed

#Level 17 → Level 18
diff passwords.old passwords.new
42c42
< w0Yfolrc5bwjS4qw5mq1nnQi6mF03bii
---
> kfBf3eYk5BPBRzwjqutbbfE887SVc5Yd #this is the password to L18

#Level 18 → Level 19
ssh -t bandit18@$OTWURL -p 2220 "cat readme"
IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x

#Level 19 → Level 20
./bandit20-do cat /etc/bandit_pass/bandit20
# GbKksEFF4yrVs6il55v6gwY5aVje5f0j

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
