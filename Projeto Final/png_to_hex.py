# Create a function that takes a PNG file and converts it to a .HEX file where each line of 
# HEX file is composed of 16 x 24 bits of data from the PNG file. It should also calculate the
# checksum of each line and append it to the end of the line. 
# The function should take the following arguments:
# - input_file: the path to the PNG file
# - output_file: the path to the output .HEX file
# The function should return True if the conversion was successful, False otherwise.
# The HEX file should be formatted as follows:
# - Each line should contain 16 x 24 bits of data from the PNG file.
# - Each line should be terminated with a newline character.
# - The checksum of each line should be appended to the end of the line.
# - The checksum should be calculated as the two's complement of the least significant byte of the sum of all the bytes in the line.
# - The checksum should be formatted as a two-digit hexadecimal number.

import png
import binascii

def twos_complement(n: int, bits=8):
    return int(''.join([str(int(not int(bit))) for bit in bin(n)[2:].zfill(bits)[-1*bits:]]), 2) + 1

def png_to_hex(input_file, output_file):
    # try:
        # Read the PNG file
        reader = png.Reader(filename=input_file)
        w, h, pixels, metadata = reader.read_flat()

        # Open the output file
        with open(output_file, 'w') as f:
            for i in range(0, len(pixels), 3*w):
                line = pixels[i:i+3*w]
                address = hex(i//3)[2:].upper().zfill(4)
                checksum = (hex(twos_complement(3*w + int(bin(i//3)[2:].zfill(16)[:8],2) + int(bin(i//3)[2:].zfill(16)[8:],2) + sum(line)))[2:]).upper().zfill(2)
                print('i: ', i, '\tsum: ', sum(line), '\taddress: ', address, '\tchecksum: ', checksum)
                line_hex = ':' + hex(3*w)[2:].upper() + address + '00' + ''.join([hex(p)[2:].upper().zfill(2) for p in line]) + checksum + '\n'
                f.write(line_hex)
            f.write(':00000001FF')
        return True
    # except:
    #     return False
    

if __name__=="__main__":
    png_to_hex('256bit_SYMBOLS\\0.png', 'output.hex')