  10 REM A6
  20 GO SUB 9000: LET rec=0
  30 GO SUB 8000
  40 LET v=14: LET h=16: GO SUB 7000
  50 PRINT AT v,h; PAPER 8;" "
  60 LET v=v+(INKEY$="6"AND v<21)-(INKEY$="7"AND v>0)
  70 LET h=h+(INKEY$="8"AND h<31)-(INKEY$="5"AND h>0)
  80 PRINT AT 4,0; INK 6;a$;AT 10,0;b$;AT 5,0;b$;AT 11,0;a$
  90 IF SCREEN$(v,h)="" THEN  GO TO 1000
 100 PRINT AT v,h; PAPER 8;"î"
 110 LET b$=b$(32)+b$( TO 31)
 120 LET a$=a$(2 TO )+a$(1)
 130 IF v=2 THEN  GO TO 2000
 150 GO TO 50
1000 PRINT AT v,h; FLASH 1;"î"
1010 DIM s$(1,704)
1020 PRINT AT 0,0; FLASH 8; OVER 1; PAPER 8; INK 2;s$(1)
1025 IF ml>0 THEN  LET ml=ml-1: GO TO 40
1026 IF sc>rec THEN  LET rec=sc
1030 INPUT "Tapez ENTER pour rejouer "; LINE b$
1040 GO TO 30
2000 LET sc=sc+10
2010 GO TO 40
7000 CLS 
7010 PRINT 'TAB 10;"RECORD ";rec;TAB 23;"SCORE ";sc;' PAPER 1;"                                "
7020 PRINT  INK 6'a$'b$
7030 PRINT ' PAPER 4;"                                "
7040 PRINT  PAPER 4;"                                "
7050 PRINT  INK 6'b$'a$
7060 PRINT ' PAPER 1;"                                "
7070 PRINT AT v,h; PAPER 8;"î"
7080 FOR a=1 TO ml: PRINT AT 1,a; INK 5;"î";: NEXT a
7090 RETURN 
8000 BORDER 0: PAPER 0: INK 9: CLS 
8010 LET sc=0
8030 LET a$="êë  êë êë     êë  êë êë  êë     "
8040 LET b$="íì    íì       íì   íì íì   íì  "
8060 LET ml=5
8990 RETURN 
9000 FOR a=USR "a" TO USR "e"+7
9010 READ user: POKE a,user
9020 NEXT a: RETURN 
9030 DATA 0,1,2,127,235,253,28,8
9040 DATA 0,240,16,252,215,187,56,16
9050 DATA 0,15,8,63,235,221,28,8
9060 DATA 0,128,64,254,215,191,28,8
9070 DATA 28,28,8,8,62,8,28,34
9080 REM a b c d e
9090 REM ê ë í ì î
