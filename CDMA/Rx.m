% load received massage
load('msg2Tx');
msg2rec = [];
msg2Rx = [];

for i=1:length(msg2Tx)/4
    % get each four binary from the received sequence
    for j=1:4
        msg2rec(j) = msg2Tx((i-1) * 4 + j); 
    end
    % demodulation
    msg2Rx(i) = decodeRx(msg2rec);
end
% restore the original decimal sequence
recMsg = sprintf('%d', msg2Rx);
