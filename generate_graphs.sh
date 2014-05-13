#!/usr/bin/env bash
#no channel
for i in 1 2 3 4 5 6 7 8 9 10
do
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -b -z 0.1 >> z1c0
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -b -z 0.125 >> z2c0
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -b -z 0.15 >> z3c0
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -b -z 0.175 >> z4c0
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -b -z 0.2 >> z5c0
done

#-C 3 flag
for i in 1 2 3 4 5 6 7 8 9 10
do
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 3 -b -z 0.1 > z1c1
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 3 -b -z 0.125 > z2c1
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 3 -b -z 0.15 > z3c1
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 3 -b -z 0.175 > z4c1
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 3 -b -z 0.2 > z5c1
done

#-C 7 flag
for i in 1 2 3 4 5 6 7 8 9 10
do
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 7 -b -z 0.1 > z1c2
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 7 -b -z 0.125 > z2c2
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 7 -b -z 0.15 > z3c2
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 7 -b -z 0.175 > z4c2
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 7 -b -z 0.2 > z5c2
done

#-C 15 flag
for i in 1 2 3 4 5 6 7 8 9 10
do
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 15 -b -z 0.1 > z1c3
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 15 -b -z 0.125 > z2c3
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 15 -b -z 0.15 > z3c3
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 15 -b -z 0.175 > z4c3
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 15 -b -z 0.2 > z5c3
done

#-C 31 flag
for i in 1 2 3 4 5 6 7 8 9 10
do
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 31 -b -z 0.1 > z1c4
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 31 -b -z 0.125 > z2c4
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 31 -b -z 0.15 > z3c4
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 31 -b -z 0.175 > z4c4
python sendrecv.py -f testfiles/random_short.txt -c 1000 -s 256 -q 200 -C 31 -b -z 0.2 > z5c4
done


for file in *c0
do
    grep BER file > BER_c0
done
for file in *c1
do
    grep BER file > BER_c1
done
for file in *c2
do
    grep BER file > BER_c2
done
for file in *c3
do
    grep BER file > BER_c3
done
for file in *c4
do
    grep BER file > BER_c4
done

