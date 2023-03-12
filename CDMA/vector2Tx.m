function [outputArg] = vector2Tx(transBin)
% Generate the vector for a single number to send
A = [1, 1, 1, 1];
B = [1, -1, 1, -1];
C = [1, 1, -1, -1];
D = [1, -1, -1, 1];

fir_num2send = 0;
sec_num2send = 0;
thi_num2send = 0;
fou_num2send = 0;

for i = 1:4
    temp = str2num(transBin(i));
    if temp == 0
        temp = -1;
    end
    fir_num2send = A(i) * temp + fir_num2send;
    sec_num2send = B(i) * temp + sec_num2send;
    thi_num2send = C(i) * temp + thi_num2send;
    fou_num2send = D(i) * temp + fou_num2send;
end

arr2send = [fir_num2send, sec_num2send, thi_num2send, fou_num2send];

outputArg = arr2send;
end
