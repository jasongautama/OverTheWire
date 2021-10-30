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
ssh ssh -i bandit14 bandit14@$bandit.labs.overthewire.org -p 2220
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
