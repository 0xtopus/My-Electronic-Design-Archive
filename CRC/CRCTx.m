Tx = 0b1010001101u32;
Gx = 0b110101u32;
%110011
%11001
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

remainder = bitshift(Tx, divisorDegree);
remainder = bitor(remainder, CRC_value);
remainder = bitset(remainder, 6);
dec2bin(remainder)

% 
% 1101100111011010
% 1101100111011010  000
% 1101100111011110  110

% head = length(Tx) + 1;
% tail = length(Tx) + length(Gx) - 1
% for i = head:tail
%     Tx(i) = 0;
% end
% Tx