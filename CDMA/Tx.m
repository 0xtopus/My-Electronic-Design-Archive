% num to send
source = '1234567890';
msg2Tx = [];
msg2send = [];
for i=1 : length(source)
  % turn every single decimal num into 4 digit binary
  transBin = dec2bin(str2num(source(i)), 4);
  % get the 4 digit binary senquence of current number to send (modulate signal)
  msg2send = vector2Tx(transBin);
  % put them into an array where the whole senquence to send stored
  k = (i-1)*4+1;
  for j=1:4
      msg2Tx(k) = msg2send(j);
      k = k + 1;
   end
end
save('msg2Tx');


