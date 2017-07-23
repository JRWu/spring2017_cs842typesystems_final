#!/usr/bin/Rscript

# Path Setup
languages <- c("Python", "PHP")
test <- c("primitives", "recursive","polymorphism","datastructures")

# Graphing Style
p = 19
untyped.colour <- c(rgb(1,0,0,0.5))
typed.colour <- c(rgb(0,0,1,0.5))

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

	plot(1:4, data$untyped, pch=p, col=untyped.colour, ylim=c(0,max(data$untyped)), xaxt="n", xlab="")
	axis(1, at=1:4, labels=test)
	points(1:4, data$typed, pch=p, col=typed.colour)

}
