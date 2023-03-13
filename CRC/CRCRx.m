% @Source https://ww2.mathworks.cn/help/matlab/matlab_prog/perform-cyclic-redundancy-check.html
load('CRC_value')
% see what if it sends a spoiled message, uncomment the code below
%Tx = 0b1000001101u32;   % I found matlab2016 doesn't support this unsigned definition

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
