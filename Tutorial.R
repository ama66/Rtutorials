# 
# #x=100;
# #y=x+1;
# # this is a comment print(y)
# 
# #x <- 22;
# # print("Ammar is " )
# 
# sumxy <- x+y;
# diffxy <- x-y ;
# z=x+2i*y
# Argz=Arg(z)
# logz= log10(z)
# is.complex(z)
# is.complex(x)
# is.numeric("Ammar")
# is.character("BlueEmp")
# xd=331.4562342
# #print(xd,digits=4)
xv=c(1,3,5);
yv=c(4,5,6,6);
cv <- (1:9) 
g=c(xv,yv,cv) ## concat
yvex <- seq(from=1,by=2,length.out=5) # sequence from by total length
yvex <- seq(1,10,2) # from ,to , increase by/increment
yvex <- seq(from=1, by=0.1 , to = 5) # includes 5 
length(yvex)
dim(yvex) ## R does not consider vector as matrix
yvex[4] ## does not start from 0 !

y2to5=yvex[(2:5)]
y25=yvex[c(2,5)]
yg3=yvex[yvex>3]
xv=c(1,3,5);
yv=c(4,5,6);
xv+yv
xv*yv
xv^2 ## element-wise operation 
summary(yvex) ## summary stats of a vector 
max(yvex) ; min (yvex ) ; var(x)
n=length(yvex)
n1=length(xvec2 <- rnorm(4))
## R allows you to assign names to each element of a vector 
names(xvec2)=c('First','second','third', 'fourth')
print(xvec2)
print( xvec2['First'])
### Matrix Operations 
A=matrix(1:20, nrow=4, ncol=5)  ## fill column by column
B=matrix(1:20,nrow = 4 , byrow = 'T')
C=rbind(A,B) ## Put the first matrix A on top of matrix B kinda of like two vectors in conseq rows
D=cbind(A,B) ## here put them next to each other like two col vectors
##############################################################################
cat("\014") ## CTRL + L 

# ## dplyr, tidyr,stringr, lubridate, httr, ggvis, ggplot2 , shiny , rio, rmarkdown , pacman load them all ! 
# install.packages("pacman")
# require(pacman) 
# library(pacman)
# pacman::p_load(pacman, dplyr,GGally, ggplot2, ggthemes, ggvis, httr,lubridate, plotly, rio ,rmarkdown, shiny
#                ,stringr, tidyr)
# p_unload(dplyr,tidyr , stringr)
# p_unload(all )
C[2,3]
C[1,1]
xvec2[-3] ## Everything except index 3
D[2,] ## second row
D[,3] ## third column
D
##Creating 3D array
B2=array(c(1:6),c(1,2,3)) ## 2 by 3 array fill by the numbers from 1:6
B3=array(seq(1,3,length=12) , c(2,3,2))
dim(B3)
as.vector(B2)
############Element by Element Multiplication############## 
A=array(1:10,c(2,5))
B=array(11:20,c(2,5))
A*B
A+B
A-B
log(B)/A ## Elementwise! 
#################Matrix multiplication using %*% ##############################
A %*% t(B)  ## only possible with the transpose of B so dimensions would work out 
##################### Inverse of a matrix #################
A=matrix(rnorm(16), nrow=4 ,  ncol=4)
Ainv = solve(A)
Ainv2=qr.solve(A)
A %*% Ainv2 # This should give you an identity to numericl precision 
save.image(file='ar.RData') ## save workspace Data in the current direcrtory 
# load("~/ar.RData")
## Plotting in R 
x=rnorm(100);
y=rnorm(100); 
plot(x); # Scatterplot
plot(x,y);
plot(x,type='l') # line plot
is.ts(x) ## is timeserieS?
plot(x,type='b') # line +scatter plot
plot(x,type='p') # point/scatter
plot(x,type='h') # bar plot
plot(x,type='s') # step plot
plot(sort(x),y,type='l',xlab='x axis dude' , ylab='y axis dude' , main='Scatter plot', col='red', font.main=3)
##Overlay and split screens
kvec=0:99
xk=sin(2*pi*0.1*kvec)
plot(kvec,xk, ylim=c(-1,2.5)) ## plot command has to come first 
lines(kvec,xk,col="red")

legend(x=0, y=2.4, legend=c("Sine", "Line 2"),
       col=c("red", "blue"), lty=1:2, cex=0.8)
#drawing multiple plots in the same screen 



