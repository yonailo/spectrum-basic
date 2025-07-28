  10 REM Pendu
  20 GO SUB 9000
  30 GO SUB 8000
  40 GO SUB 7000
  50 FOR a=1  TO LEN w$
  60 PRINT "_ ";
  70 NEXT a
  80 INPUT "Votre essai ? (1 seule lettre) ";  LINE n$
  90 LET r=0: FOR a=1  TO LEN w$
 100 IF w$(a)=n$  THEN  LET r=r+1
 110 NEXT a
 120 IF r<>0 THEN  GO SUB 1000
 130 LET t$=t$+n$+" "
 140 GO SUB 6000
 150 LET c$="": FOR a=1 TO LEN w$: LET d$=SCREEN$(0,(a*2)-2): LET c$=c$+d$: NEXT a: IF c$=w$ THEN  GO TO 5000
 160 GO TO 80
1000 FOR a=1 TO LEN w$
1010 IF w$(a)=n$ THEN  PRINT AT 0,(a*2)-2;n$
1020 NEXT a
1030 GO TO 150
2000 PRINT AT 5,19;" | ": BEEP 1,-10
2010 PRINT AT 5,0;"Pendu!"
2011 PRINT AT 7,0;"Le mot etait ";AT 8,0;w$
2020 INPUT "Tapez ENTER pour rejouer "; LINE j$: GO TO 30
5000 PRINT AT 5,0;"Bravo!"
5010 INPUT "Tapez ENTER pour rejouer ";  LINE j$: GO TO 30
6000 LET d=d+2: LET h=h+2
6010 PRINT AT 20,h-18; INK 4;n$
6020 PRINT AT INT (d/2)+2-5,17; INK 6;b$(INT ((d-16)/2))
6030 IF INT ((d-16)/2)=13 THEN  GO TO 2000
6040 RETURN 
7000 RESTORE 7000
7005 FOR a=1 TO INT (RND*1)+1
7010 READ w$
7020 NEXT a
7030 DATA "abaisser"
7040 DATA "balancer"
7050 DATA "conseiller"
7060 DATA "ephemere"
7070 DATA "machine"
7080 DATA "pointure"
7090 DATA "tabernacle"
7110 RETURN 
8000 BORDER 0: PAPER 0: INK 9: CLS 
8010 DIM b$(13,5)
8020 LET b$(1)= " ���"
8030 LET b$(2)= " ���"
8040 LET b$(3)= " ���"
8050 LET b$(4)= "�����"
8060 LET b$(5)= "�� ��"
8070 LET b$(6)= "�� ��"
8080 LET b$(7)= "�� ��"
8090 LET b$(8)= "�����"
8100 LET b$(9)= " ���"
8110 LET b$(10)=" ���"
8120 LET b$(11)=" ���"
8130 LET b$(12)=" ���"
8140 LET b$(13)="�����"
8150 LET t$=""
8160 LET h=16: LET v=0
8170 LET d=16
8990 RETURN 
9000 RESTORE 9000: FOR a=USR "a" TO USR "g"+7
9010 READ user: POKE a,user
9020 NEXT a: RETURN 
9030 DATA 0,0,0,7,15,28,24,24
9040 DATA 24,24,28,15,7,0,0,0
9050 DATA 0,0,0,224,240,56,24,24
9060 DATA 24,24,56,240,224,0,0,0
9070 DATA 0,0,0,255,255,0,0,0
9080 DATA 24,24,24,24,24,24,24,24
9090 DATA 0,0,102,102,0,0,0,0
9998 REM a b c d e f g
