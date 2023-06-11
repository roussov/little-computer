10 PRINT "" 
20 PRINT "* CALCULATRICE " 
30 PRINT "*" 
40 INPUT "Entrez le premier nombre : "; A 
50 INPUT "Entrez le deuxième nombre : "; B 
60 PRINT "â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”â€”" 
70 PRINT "1. Addition" 
80 PRINT "2. Soustraction" 
90 PRINT "3. Multiplication" 
100 PRINT "4. Division" 
110 PRINT "5. Quitter" 
120 INPUT "Choisissez une opÃ©ration (1-5) : "; CHOICE 
130 IF CHOICE = 1 THEN PRINT A + B 
140 IF CHOICE = 2 THEN PRINT A - B 
150 IF CHOICE = 3 THEN PRINT A * B 
160 IF CHOICE = 4 THEN PRINT A / B 
170 IF CHOICE = 5 THEN END 
180 GOTO 60