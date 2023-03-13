function [outputArg] = decodeRx(msg2Rx)
% decode received massage
A = [1, 1, 1, 1];
B = [1, -1, 1, -1];
C = [1, 1, -1, -1];
D = [1, -1, -1, 1];
% the array to store original 4 digit binary
codeBin = [];

codeBin(1) = decodeEachDigit(msg2Rx, A);
codeBin(2) = decodeEachDigit(msg2Rx, B);
codeBin(3) = decodeEachDigit(msg2Rx, C);
codeBin(4) = decodeEachDigit(msg2Rx, D);

outputArg = bin2dec(num2str(codeBin));
end

function [outputArg] = decodeEachDigit(msg2Rx,tempStation)
    % using the given station to decode
    first = 0;
    for i=1:4
        first = msg2Rx(i) * tempStation(i) + first;
    end
    first = first / 4;
    if first < 0
        first = 0;
    end
    outputArg = first;
end

