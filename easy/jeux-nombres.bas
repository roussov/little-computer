10 PRINT "Bonjour! Entre ton nom."
20 INPUT nom$
30 PRINT "Bonjour,"; nom$;"! Je m'appelle roussov-game et je suis un programme simple que tu peux utiliser pour jouer."
40 PRINT "Voulez-vous jouer à un jeu sur les nombres pairs et impairs?"
50 INPUT reponse$
60 IF reponse$ = "oui" OR reponse$ = "Oui" OR reponse$ = "OUI" THEN GOTO 70
70 PRINT "Super! Nous allons jouer au jeu des nombres pairs et impairs. Es-tu prêt?"
80 INPUT reponse2$
90 IF reponse2$ = "oui" OR reponse2$ = "Oui" OR reponse2$ = "OUI" THEN GOTO 100
100 PRINT "Je vais penser à un nombre entre 1 et 10. Tu dois deviner si c'est un nombre pair ou impair."
110 nombre = INT(RND*10)+1
120 PRINT "Le nombre est choisi! Est-ce pair ou impair?"
130 INPUT guess$
140 IF guess$="pair" AND nombre MOD 2=0 THEN PRINT "Bravo! C'était pair!"
150 IF guess$="impair" AND nombre MOD 2=1 THEN PRINT "Bravo! C'était impair!"
160 IF guess$="pair" AND nombre MOD 2=1 THEN PRINT "Désolé, c'était impair."
170 IF guess$="impair" AND nombre MOD 2=0 THEN PRINT "Désolé, c'était pair."
180 PRINT "Voulez-vous jouer à nouveau?"
190 INPUT answer$
200 IF answer$ = "oui" OR answer$ = "Oui" OR answer$ = "OUI" THEN GOTO 100
210 PRINT "Merci d'avoir joué! À la prochaine!"
