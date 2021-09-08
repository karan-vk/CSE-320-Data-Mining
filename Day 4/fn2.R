?runif

dataset<-runif(100,0,10)

bins<-4
mini<-min(dataset)
maxi<-max(dataset)
width<-(maxi-mini)/bins
?cut
interr<-cut(dataset,breaks = seq(mini,maxi,width))
tav<-table(interr)
barplot(tav)

b<-c(-Inf,10000,31000,Inf)

names<-c("Low","Medium","High")

students<-read.csv("data/data-conversion.csv")
students$Income.b<-cut(students$Income,breaks = b,labels = names)
tav<-table(cut(students$Income,breaks = b,labels = names))

barplot(tav)


students$Income.b1 <- cut(students$Income,breaks = 4,labels = c("lavel1","level2","level3","level4"))

barplot(table(students$Income.b1))
