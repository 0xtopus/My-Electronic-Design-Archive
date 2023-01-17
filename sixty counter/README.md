# sixty counter on Multism

sixty counter using a 74ls160 and a 74ls163.

To make it work properly, turn off switch S1 when simulation starts to set the initial value of 74ls163.

How it works:
The 74ls160 counts 0 ~10 and then gives CLK of the 74ls163 a signal, and the74ls163 counts six times from 9 (binary:1001) ~ 15 (binary:1111) during every period. Thus they combined as a sixty counter as a whole.

The 74ls160 on the right flashs leds which stand for 0~6 to indicate the result.



<img src="C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20230117214356759.png" alt="image-20230117214356759" style="zoom:150%;" />