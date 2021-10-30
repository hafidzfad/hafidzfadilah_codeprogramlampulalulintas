org 00h
merah :
mov p1,#01110000b
mov p2,#00001000b
mov p3,#00000000b
call delay
mov p2,#10010000b
call delay
mov p2,#00010000b
call delay
mov p2,#11100000b
call delay
mov p2,#01100000b
call delay
mov p2,#10100000b
call delay
mov p2,#00100000b
call delay
mov p2,#11000000b
call delay
mov p2,#01000000b
call delay
mov p2,#10000000b
call delay
mov p2,#00000000b
call delay
Ljmp hijau

hijau :
mov p1,#11010000b
mov p2,#00000000b
mov p3,#11100000b
call delay
mov p3,#01100000b
call delay
mov p3,#10100000b
call delay
mov p3,#00100000b
call delay
mov p3,#11000000b
call delay
mov p3,#01000000b
call delay
mov p3,#10000000b
call delay
mov p3,#00000000b
call delay
Ljmp kuning


kuning :
mov p1,#10110000b
mov p2,#00000000b
mov p3,#00000000b
call delay
call delay
call delay
Ljmp merah


delay : mov r0,#6
delay1: mov r1,#255
delay2: mov r2,#255
djnz r2,$
djnz r1,delay2
djnz r0,delay1
ret
end