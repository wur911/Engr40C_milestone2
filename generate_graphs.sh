#!/usr/bin/env bash
#no channel
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -b -z 0.1 > z1c0
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -b -z 0.125 > z2c0
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -b -z 0.15 > z3c0
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -b -z 0.175 > z4c0
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -b -z 0.2 > z5c0

#-C 3 flag
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 3 -b -z 0.1 > z1c1
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 3 -b -z 0.125 > z2c1
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 3 -b -z 0.15 > z3c1
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 3 -b -z 0.175 > z4c1
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 3 -b -z 0.2 > z5c1

#-C 7 flag
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 7 -b -z 0.1 > z1c2
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 7 -b -z 0.125 > z2c2
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 7 -b -z 0.15 > z3c2
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 7 -b -z 0.175 > z4c2
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 7 -b -z 0.2 > z5c2

#-C 15 flag
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 15 -b -z 0.1 > z1c3
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 15 -b -z 0.125 > z2c3
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 15 -b -z 0.15 > z3c3
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 15 -b -z 0.175 > z4c3
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 15 -b -z 0.2 > z5c3

#-C 31 flag
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 31 -b -z 0.1 > z1c4
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 31 -b -z 0.125 > z2c4
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 31 -b -z 0.15 > z3c4
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 31 -b -z 0.175 > z4c4
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 31 -b -z 0.2 > z5c4



for file in *c0
do
    
done




