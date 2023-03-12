load('msg2Tx');
msg2rec = [];
msg2Rx = [];

for i=1:length(msg2Tx)/4
    for j=1:4
        msg2rec(j) = msg2Tx((i-1) * 4 + j); 
    end    
     msg2Rx(i) = decodeRx(msg2rec);
end
recMsg = sprintf('%d', msg2Rx);
%recMsg = strip(recMsg, ' ')


%finalMsg = [];
%length(recMsg)
j = 1;
% for i=1:length(recMsg)
%    if recMsg(i) <= '9' && recMsg(i) >= '0' 
%        recMsg(i)
%        finalMsg(j) = recMsg(i)
%        j = j + 1;
%    end
% end



% for i=1:10
%     if recMsg(i) >= 0 && recMsg(i) <= 9
%         recMsg = msg2Rx(i) * 10^(11-i)
%     end
% end


% i = 10
% for j=1:4
%         msg2rec(j) = msg2Tx((i-1) * 4 + j)
%         %decode(msg2rec);
% end    