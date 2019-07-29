relation <- matrix(c(18,57,24,148,103,659),ncol=2,byrow=TRUE,
                   dimnames = list(c("NSAIDs","Aceteminophen","No painkiller"),c("Miscarriage", "No miscarriage")))
relation<- as.table(relation)
relation

dev.new(width=5, height=5)  # change the size of graph
barplot(prop.table(relation, 2)*100,
        ylim = c(0,100),
        xlim = c(0,9),
        main="Miscarriage",
        xlab="Miscarriage", col=c("blue","red","green"),
        ylab = "Painkiller",
        legend = rownames(relation),
        beside=TRUE)
box()


dev.new(width=5, height=5)  # change the size of graph
barplot(prop.table(relation, 2)*100,
        ylim = c(0,100),
        xlim = c(0,4),
        main="Miscarriage",
        xlab="Miscarriage", col=c("blue","red", "green"),
        ylab = "Painkiller",
        legend = rownames(relation),
        beside=FALSE)
box()

# chi-square test for asssocation 
CrossTable(relation, prop.t=FALSE, prop.r=FALSE, prop.c=FALSE,prop.chisq=TRUE, chisq = TRUE)

summary(relation)
