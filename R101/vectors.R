#a1
v<-seq(101, 112, 1)
v

#a2
#Pour a2 et a3 je me suis rendu compte que l'on pouvait éviter de perdre du temps et des ressources en faisant directement la dernière ligne
#prepW<-c(4,6,9)
#w<-rep(prepW, 4)
w<-rep(c(4, 6, 9), 4)

#a3
#prepX1<- rep(4, 8)
#prepX2<-rep(6, 7)
#prepX3<-rep(3, 5)
#x<-c(prepX1, prepX2, prepX3)
x<-c(rep(4,8), rep(6,7), rep(3,5))

#???b1
masse<-c(28, 27.5, 27, 28, 30.5, 30, 31, 29.5, 30, 31, 31, 31.5, 32, 30, 30.5)

#b2
masse1<-c(40, 39, 41, 37.5, 43)
#b3
nouvelle.masse<-c(masse1, masse1, tail(masse, n=10))
nouvelle.masse
#c1
nom<-c("Staline", "Lenine", "Trotski", "Glukhovsky", "Servietski", "PaulSkie", "Satie", "ZeDong", "ZeLongDong", "Chad")
#c2
ages<-c(60, 54, 60, 40, 20, 42, 59, 60, 29 ,21)
age<- data.frame(nom, ages)
age
#c3
poids<-c(70, 60, 58, 90, 50, 55, 50, 100, 100, 72)
masse<-data.frame(poids, nom)
masse

#c4
hauteur<-c(1.80, 1.82, 1.81, 1.73, 1.60, 2, 1.60, 1.62, 2, 1.85)
taille<-data.frame(hauteur, nom)
taille

#c5
masse.lourde<-subset(masse, poids >=80)
masse.lourde

#c6
#Possibilité de le faire avec un apply plutot qu'un merge ?
taille.masse.lourde<-merge(masse.lourde, taille, by="nom")
taille.masse.lourde

#c7
#Créer un df temporaire contenant les conditions que l'on recherche
matching_age<-subset(age, ages >=30)
matching_age
#Plus qu'a merge
taille.age.masse.lourde<-merge(taille.masse.lourde, matching_age, by="nom")
taille.age.masse.lourde
#Il me reste encore a trouver une méthode efficace pour nettoyer après,
#pour l'instant tout ce que je ferai en utilisant cette méthode est de supprimer
#le df une fois utilisé
rm(matching_age)

#d1
suite<-seq(1, 12, 1)

#d2
suite[suite>6]

#d3
suite[suite<6]

#d4
suite[suite=6]

#d5 
#Savoir si  4 <= 1er elem <= 8
#Erreur à ne pas faire : les vectors commencent a 1
ifelse(suite[1] >= 4 & suite[1]<= 8,"oui","non")

#d6
#Trouver 4<=elements<=8
#Possibilité de pimper un peu plus en récupèrant les valeurs assez facilement je pense
ifelse(suite >= 4 & suite<= 8,"oui","non")

#d7
#Savoir si  1er elem <= 4 OU 1er elem >= 8
ifelse(suite[1] >= 4 | suite[1]<= 8,"oui","non")