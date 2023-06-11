10 PRINT "JEU DE DOMINO" 
20 DIM domino (28,2) 
30 RESTORE 
40 FOR i=0 TO 6 
50 FOR j=i TO 6 
60 domino(i7+j,1)=i 
70 domino(i7+j,2)=j 
80 domino(j7+i,1)=i 
90 domino(j7+i,2)=j 
100 NEXT j 
110 NEXT i 
120 LET main=0 
130 LET tour=0 
140 LET nb=2 
150 LET nbjoueur=2 
160 DIM joueur(2,28) 
170 LET pioche=28 
180 RESTORE 
190 FOR i=1 TO 28 
200 LET alea=INT(RND(1)(pioche)) 
210 LET joueur(1,i,1)=domino(alea,1) 
220 LET joueur(1,i,2)=domino(alea,2) 
230 FOR j=alea TO pioche-2 
240 LET domino(j,1)=domino(j+1,1) 
250 LET domino(j,2)=domino(j+1,2) 
260 NEXT j 
270 LET pioche=pioche-1 
280 NEXT i 
290 RESTORE 
300 FOR i=1 TO 28 
310 LET alea=INT(RND(1)(pioche)) 
320 LET joueur(2,i,1)=domino(alea,1) 
330 LET joueur(2,i,2)=domino(alea,2) 
340 FOR j=alea TO pioche-2 
350 LET domino(j,1)=domino(j+1,1) 
360 LET domino(j,2)=domino(j+1,2) 
370 NEXT j 380 LET pioche=pioche-1 
390 NEXT i 
400 LET premier=INT(RND(1)*(nbjoueur))+1 
410 PRINT "Le premier joueur est le joueur "premier"." 
420 LET tour=premier 
430 DO WHILE nb>0 
440 PRINT "----------------------------------------" 
450 FOR i=1 TO nbjoueur 
460 PRINT "Les dominos de joueur "i"." 
470 FOR j=1 TO nb 
480 PRINT joueur(i,j,1);"-"joueur(i,j,2); 
490 NEXT j 
500 PRINT 
510 NEXT i 
520 PRINT "----------------------------------------" 
530 IF nb=2 THEN 
540 FOR i=0 TO 6 
550 FOR j=i TO 6 
560 IF joueur(1,1,1)=i AND joueur(1,1,2)=j THEN 
570 LET main=1 
580 ELSE IF joueur(2,1,1)=i AND joueur(2,1,2)=j THEN 
590 LET main=2 
600 END IF 
610 NEXT j 
620 NEXT i 
630 ELSE IF nb>2 THEN 
640 LET arret=0 
650 FOR i=1 TO nb 
660 IF joueur(tour,i,1)=joueur(main,nb,2) THEN 
670 LET main=i 
680 LET arret=1 
690 END IF 
700 IF joueur(tour,i,2)=joueur(main,nb,2) THEN 
710 LET main=i 
720 LET arret=1 
730 END IF 
740 IF joueur(tour,i,2)=joueur(main,nb,1) THEN 
750 LET main=i 
760 LET arret=1 
770 END IF 
780 IF joueur(tour,i,1)=joueur(main,nb,1) THEN 
790 LET main=i 
800 LET arret=1 
810 END IF 
820 IF arret=1 THEN 
830 LET arret=0 
840 GOTO 
890 850 END IF 
860 NEXT i 
870 LET tour=tour+1 
880 IF tour=nbjoueur+1 THEN 
890 LET tour=1 
900 END IF 
910 GOTO 440 
920 END IF 
930 NEXT i 
940 END