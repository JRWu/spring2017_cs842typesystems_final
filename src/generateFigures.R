#!/usr/bin/Rscript

# Geometric Mean Calculation
gm_mean = function(x, na.rm=TRUE){
  exp(sum(log(x[x > 0]), na.rm=na.rm) / length(x))
}

# Path Setup
languages <- c("Python", "PHP", "Javascript")
typed.languages <- c("Cython", "Hack", "TypeScript")
test <- c("arithmetic", "strings","io","recursion")

# Graphing Style
p = 19
c = 1.25
untyped.colour <- c(rgb(1,0,0,0.5))
typed.colour <- c(rgb(0,0,1,0.5))


summary.data <- data.frame(matrix(NA, nrow=4, ncol=0))
rownames(summary.data) <- test 
# Iterate through all projects
for (i in 1:length(languages)){
	# Data Frame to hold avg of results
	data <- data.frame(matrix(NA, nrow=0,ncol=2))

	# Iterate through all tests
	for (j in 1:length(test)){

		#Untyped
		filename <- paste(languages[i], "/",languages[i], "_untyped_", j,"_", test[j],".txt", sep="")
		untyped <- read.table(filename)
		untyped$V1 <- gsub(":", "", untyped$V1)
		untyped$V1 <- as.numeric(untyped$V1)

		# Typed
		filename <- paste(languages[i], "/",languages[i], "_typed_", j,"_", test[j],".txt", sep="")
		typed <- read.table(filename)
		typed$V1 <- gsub(":", "", typed$V1)
		typed$V1 <- as.numeric(typed$V1)

		# Append To Data
		entry <- c(mean(untyped$V1), mean(typed$V1))
		data <- rbind(data,entry)
	}
	colnames(data) <- c("untyped", "typed")
	rownames(data) <- test

	data$timespent <- data$typed/data$untyped
	data$base <- rep(1,4)

	summary.data[languages[i]] <- data$timespent
	write.table(summary.data, file="summary.txt", sep="\t", quote=F)

	# Plot Typed vs Untyped
	plot.filename <- paste(languages[i],"_typed_vs_untyped.png",sep="")
	png(plot.filename, height=600, width=600)

	plot(1:4, data$untyped, pch=p, cex=c, col=untyped.colour, ylim=c(0,max(data$untyped)), xaxt="n", xlab="Test Suite", ylab= "Time (s)",main=paste(languages[i], " vs ", typed.languages[i], " Runtime", sep=""))
	axis(1, at=1:4, labels=test)
	points(1:4, data$typed, pch=p,cex=c, col=typed.colour)

	lines (data$untyped, col=untyped.colour)
	lines (data$typed, col=typed.colour)

	legend(1, max(data$untyped),c(languages[i], typed.languages[i]),pch=p, col=c(untyped.colour,typed.colour), cex=c)
	dev.off()

	# Plot Relative Time Taken
	plot.filename <- paste(languages[i],"_typed_vs_untyped_relative.png",sep="")
	png(plot.filename, height=600, width=600)
	plot(1:4, data$base, pch=p, cex=c, col=untyped.colour, ylim=c(0,max(c(data$timespent,1))), xaxt="n", xlab="Test Suite", ylab= "Relative Time",main=paste(languages[i], " vs ", typed.languages[i], " Relative Runtime", sep=""))
	axis(1, at=1:4, labels=test)
	points(1:4, data$timespent, pch=p, cex=c,col=typed.colour)
	lines (data$base, col=untyped.colour)
	lines (data$timespent, col=typed.colour)
	dev.off()
	
}
