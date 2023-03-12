function [outputArg] = decodeRx(msg2Rx)
% Decode msg
A = [1, 1, 1, 1];
B = [1, -1, 1, -1];
C = [1, 1, -1, -1];
D = [1, -1, -1, 1];
first = 0;
codeBin = [];
% decode A
for i=1:4
    first = msg2Rx(i)*A(i) + first;
end
first = first/4;
if first < 0
    first = 0;
end
codeBin(1) = first;

first = 0;
for i=1:4
    first = msg2Rx(i)*B(i) + first;
end
first = first/4;
if first < 0
    first = 0;
end
codeBin(2) = first;

first = 0;
for i=1:4
    first = msg2Rx(i)*C(i) + first;
end
first = first/4;
if first < 0
    first = 0;
end
codeBin(3) = first;

first = 0;
for i=1:4
    first = msg2Rx(i)*D(i) + first;
end
first = first/4;
if first < 0
    first = 0;
end
codeBin(4) = first;

outputArg = bin2dec(num2str(codeBin));
end

