source = '2020215416';
msg2Tx = [];
msg2send = [];
for i=1 : length(source)
  transBin = dec2bin(str2num(source(i)), 4);
  msg2send = vector2Tx(transBin);
  k = (i-1)*4+1;
  for j=1:4
      msg2Tx(k) = msg2send(j);
      k = k + 1;
   end
end
save('msg2Tx');



% transBin = dec2bin(str2num(source(9)), 4);
% msg2send = vector2Tx(transBin);
% i=1;
% k = (i-1)*4+1
%  for j=1:4
%      
%      msg2Tx(k) = msg2send(j)
%      k = k + 1
%  end

