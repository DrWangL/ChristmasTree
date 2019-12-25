library(ggplot2)
n=9
ds=data.frame(x=NULL,y=NULL,color = NULL)
for(i in 1:n){
  x = c((n+1-i):((n+1-i)+((i-1)*2)))
  d = data.frame(x= x,y= rep(n-i,length(x)),color = sample(1:255,length(x)))
 ds = rbind(ds,d)
}
ds$shape = 16
ds$shape[1] = 11
ds$shape[sample(1:nrow(ds),10)] = 12
ds$shape[sample(1:nrow(ds),10)] = 8
ds=rbind(ds,data.frame(x=(n-1):(n+1),y=c(-1,-1,-1),color = c(255,255,255),shape=c(15,15,15)))
# plot the christmas tree
ggplot(ds,) +
  geom_point(shape =ds$shape,aes(x = x ,y = y,color=rgb(red = 0,green = 254,blue = color,maxColorValue = 255),size=color))+
  #geom_bar(data = ds.stem,aes(x = ds.stem$x,y=ds.stem$y))+
  theme(legend.position = "none",panel.background = element_blank(),
        axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank()
        )+
  ggtitle("Merry Christmas and Happy New Year!")
ggsave(filename = "ChrimstmasTreeR.png")
