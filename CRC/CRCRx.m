load('CRC_value')
Tx = 0b1000001101u32;

remainder = bitshift(Tx, divisorDegree);
remainder = bitor(remainder, CRC_value);
remainder = bitset(remainder, 6);
dec2bin(remainder);
for k = 1:msgLength
    if(bitget(remainder, msgLength + divisorDegree))
        remainder = bitxor(remainder, Gx);
    end
    remainder = bitshift(remainder, 1);
end
if remainder == 0
    disp("Success!")
else
    disp("Error!")
end
