'''
Channel coding module for transmitter and receiver
'''

import numpy

import hamming_db   # Matrices for Hamming codes

''' Transmitter side ---------------------------------------------------
'''
def get_frame(databits, cc_len):
    '''
    Perform channel coding to <databits> with Hamming code of n=<cc_len>
    Add header and also apply Hamming code of n=3
    Return the resulted frame (channel-coded header and databits)
    '''
    index,payload = encode(databits,cc_len)
    header_index,header = encode(get_header(payload,index), 3)
    frame = header+payload
    return numpy.array(frame)
    
def get_header(payload, index):
    header = []
    if index == 0: header = [0,0]
    if index == 1: header = [0,1]
    if index == 2: header = [1,0]
    if index == 3: header = [1,1]
    length = len(payload)
    binlen = [int(d) for d in bin(length)[2:]]
    binlen = [0]*max(0,24-len(binlen)) + binlen
    header += binlen
    '''
    Construct and return header for channel coding information.
    Do not confuse this with header from source module.
    Communication system use layers and attach nested headers from each layers 
    '''
    return header
    
def encode(databits, cc_len):
    coded_bits = []
    n, k, index, G = hamming_db.gen_lookup(cc_len)
    #Pad with zeros if necessary
    while(len(databits) % k != 0): databits.append(0)
    for i in range(len(databits)/k):
        word = databits[i*k: i*k+k]
        for col in range(n):
            bit = 0
            for row in range(k):
                #XOR dot product of data bits and generator matrix
                bit = bit ^ (word[row]*G[col+row*n])
            coded_bits.append(bit);

    '''
    Perfrom channel coding to <databits> with Hamming code of n=<cc_len>
    Pad zeros to the databits if needed.
    Return the index of our used code and the channel-coded databits
    '''
    return index, coded_bits

''' Receiver side ---------------------------------------------------
'''    
def get_databits(recd_bits):
    '''
    Return channel-decoded data bits
    Parse the header and perform channel decoding.
    Note that header is also channel-coded    
    '''

    header_enc = recd_bits[:72].tolist()
    #print header_enc
    header_dec = decode(header_enc,0)
    index,length = parse_header(header_dec)
    coded_bits = recd_bits[72:length+72].tolist()
    databits = decode(coded_bits,index)
    return numpy.array(databits)

def parse_header(header):
    '''
    Parse the header received from channel-decoded bits
    Use a (3,1,3) Hamming code.
    '''
    #print header
    index = int(''.join("%s" % n for n in header[:2]),2)
    length = int(''.join("%s" % n for n in header[2:]),2)
    return index,length

def decode(coded_bits, index):
    decoded_bits = []
    n, k, H, syndromes = hamming_db.parity_lookup(index)
    #print n,k
    for i in range(len(coded_bits)/n):
        enc_word = coded_bits[i*n: i*n+n]
        #print enc_word
        parity = []
        for row in range(n-k):
            bit = 0
            for col in range(n):
                #XOR dot product of data bits and generator matrix
                bit = bit ^ (enc_word[col]*H[col+row*n])
            parity.append(bit);
        if (parity in syndromes):
            error_index = syndromes.index(parity)
            enc_word[error_index] ^= 1
        decoded_bits += enc_word[:k]
        #print decoded_bits
 
    '''
    Decode <coded_bits> with Hamming code which corresponds to <index>
    Return decoded bits
    '''
    
    return decoded_bits
