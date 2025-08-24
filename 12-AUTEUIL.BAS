  10 REM AUTEUIL
  20 GO SUB 9000
  30 GO SUB 8000
  40 FOR r=1 TO 5
  50 CLS 
  60 PRINT AT 0,0;"Course numero  ";r
  70 DIM d(p)
  80  FOR a=1 TO p: LET d(a)=INT (RND*10)+1
  90 PRINT '"La cote de ";h$(a)
 100 PRINT "est de ";d(a);" contre 1"
 110 NEXT a
 115  PRINT AT 0,0;#1;"Tapez une touche pour continuer": PAUSE 0
 120 GO SUB 5000
 130 PRINT AT 0,0;#1;"Tapez une touche pour continuer"
 140 PAUSE 0
 150 CLS : CIRCLE  INK 2;240,165,10: PLOT 240,155: DRAW  INK 2;0,-140: FOR a=1 TO p: PRINT AT a*3+3,31;a: NEXT a
 155 DIM c(p)
 160 FOR a=1 TO p
 170  PRINT AT a*3+2,c(a);a$;AT a*3+3,c(a);b$;AT a*3+4,c(a);c$
 180 LET c(a)=c(a)+(1/d(a)+INT (RND*2))
 185 IF c(a)>25 THEN  GO TO 250
 190 NEXT a
 200 FOR a=1 TO p: BEEP .008,c(a)
 210 PRINT AT a*3+2,c(a);a$;AT a*3+3,c(a);b$;AT a*3+4,c(a);e$
 220 LET c(a)=c(a)+(1/d(a)+INT (RND*2))
 225 IF c(a)>25 THEN  GO TO 250
 230 NEXT a
 240 GO TO 160
 250 LET w$=h$(a)
 260 PAUSE 100: CLS 
 270 PRINT "Le gagnant est ";w$
 280 PRINT "Proprietaire : ";n$(a)
 290  LET ws=d(a)*s(a)
 300 PRINT '"Il rapporte ";ws;" Francs": LET m(a)=m(a)+ws+s(a)
 310 FOR z=1 TO 50: BEEP .008,z: BEEP .008,-z: NEXT z
 320 NEXT r
 330 CLS 
 340 LET tot=0: PRINT "A la fin du jeu "
 350 FOR a=1 TO p
 360 PRINT n$(a);" possede ";m(a);" Francs"
 370 IF m(a)>tot THEN  LET tot=m(a): LET gn=a
 380 NEXT a
 390 PRINT '"Le gagnant est donc ";n$(gn)
 400 PRINT "sur ";h$(gn)
 410 PRINT "Avec ";m(gn);" Francs"
 420 INPUT "Tapez ENTER pour rejouer "; LINE a$: GO TO 30
 990 STOP 
5000 FOR z=1 TO 50: BEEP .002*p,z: BEEP .008,-z: NEXT z
5010 FOR a=1 TO p
5020 CLS 
5030 PRINT "Cheval:- ";h$(a)
5040 PRINT '"Proprietaire:- ";n$(a)
5050 PRINT '"Vous possedez ";m(a);" Francs"
5055 IF m(a)<1 THEN  PRINT '"Vous n'avez plus d'argent, vous ne pouvez plus parier": PAUSE 150: NEXT a: RETURN 
5060 INPUT "Combien pariez-vous dans la     prochaine course ";s(a): IF s(a)>m(a) THEN  GO TO 5060
5070 LET m(a)=m(a)-s(a)
5080 NEXT a
5090 RETURN 
8000 BORDER 0: PAPER 0: INK 7: CLS : BEEP .1,10: BEEP .2,15
8010 LET a$="  êëíì": REM abcd
8020 LET b$="  îïñó": REM efgh
8030 LET c$="  òôöõ": REM ijkl
8040 LET d$="  îúùû": REM emno
8050 LET e$="  òü† ": REM ipq
8060 PRINT AT 1,12;"AUTEUIL"
8070 INPUT "Combien de joueurs (Max 5)"; LINE p$: IF p$<"1"OR p$>"5" THEN  GO TO 8070
8080 LET p=VAL p$: DIM s(p): DIM m(p): DIM n$(p,10): DIM h$(p,15)
8090 FOR a=1 TO p
8100 PRINT AT 5,3;"Nom du joueur No";a
8110 INPUT "Max 10 lettres "; LINE n$(a)
8120 LET m(a)=50: NEXT a
8125 CLS 
8130 RESTORE 9200: FOR a=1 TO p
8140 READ h$(a): PRINT n$(a);" Possede "'h$(a)''
8150 NEXT a
8160 PRINT AT 0,0;#1;"Tapez une touche pour continuer": PAUSE 0
8990 RETURN 
9000 FOR a=USR "a" TO USR "q"+7
9010 READ user: POKE a,user
9020 NEXT a: RETURN 
9030 DATA 0,0,0,0,0,0,0,3
9040 DATA 0,0,0,0,0,1,113,207
9050 DATA 0,28,18,42,87,132,15,238
9060 DATA 0,0,16,248,60,124,199,131
9070 DATA 5,13,13,9,9,9,9,0
9080 DATA 9,16,0,144,157,178,192,192
9090 DATA 221,209,33,1,194,242,11,10
9100 DATA 128,0,0,0,0,0,0,128
9110 DATA 3,2,2,2,2,1,0,0
9120 DATA 192,192,96,32,16,32,0,0
9130 DATA 13,28,25,19,18,8,0,0
9140 DATA 128,128,128,0,0,0,0,0
9150 DATA 16,0,16,144,177,167,64,128
9160 DATA 69,1,1,1,194,246,20,20
9170 DATA 128,0,0,0,0,0,0,0
9180 DATA 128,128,128,128,128,64,0,0
9190 DATA 28,28,24,24,20,12,10,0
9200 DATA "Red Gin","Belino II","Une de Mai","Danny Boy","Shergart"
