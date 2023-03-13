% @Source https://ww2.mathworks.cn/help/matlab/matlab_prog/perform-cyclic-redundancy-check.html
Tx = 0b1010001101u32;   % I ran this on matlab2020 and 2016 and found that matlab2016 doesn't support this unsigned definition
Gx = 0b110101u32;

msgLength = 10;
divisorDegree = 5;

Gx = bitshift(Gx, msgLength - divisorDegree - 1);
dec2bin(Gx);

Gx = bitshift(Gx, divisorDegree);
remainder = bitshift(Tx, divisorDegree);
dec2bin(Gx);
dec2bin(remainder);

for k = 1:msgLength
    if bitget(remainder, msgLength + divisorDegree)
        remainder = bitxor(remainder, Gx);
    end
    remainder = bitshift(remainder, 1);
end

CRC_value = bitshift(remainder, -msgLength);

save('CRC_value');
% print check value
remainder = bitshift(Tx, divisorDegree);
remainder = bitor(remainder, CRC_value);
remainder = bitset(remainder, 6);
dec2bin(remainder)
