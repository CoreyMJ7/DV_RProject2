#Our unique graphs are found at the bottom of this code with a description of it in the comments.

require(extrafont)

#Graph 1: This graph looks at the Fortune 500 companies in 1955 that had a revenue greater than $600 Million and highlights whether or not they are in the 90th percentile of the cumulative distribution function for profits.

ggplot() + 
  coord_cartesian() + 
  scale_x_discrete() +
  scale_y_continuous() +
  labs(title='Revenue vs Company in 1955') +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  labs(x="Company", y=paste("Revenue > 600 Million")) +
  layer(data=Solo_1995, 
        mapping=aes((x=COMPANY), y=(Rev), color=Ninety_Percentile), 
        stat="identity", 
        stat_params=list(), 
        geom="bar",
        geom_params=list(), 
        #position=position_identity()
        position=position_jitter(width=0.3, height=0)
  )

ggplot() + 
  coord_cartesian() + 
  scale_x_discrete() +
  scale_y_continuous() +
  labs(title='Titanic') +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  labs(x="SURVIVED", y=paste("FARE")) +
  layer(data=Y, 
        mapping=aes(x=as.character(YEAR), y=as.numeric(as.character(RANK)), color=COMPANY), 
        stat="identity", 
        stat_params=list(), 
        geom="point",
        geom_params=list(), 
        #position=position_identity()
        position=position_jitter(width=0.5, height=0)
  )



