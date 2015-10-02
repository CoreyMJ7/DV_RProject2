#Our unique graph is found at the bottom of this code with a description of it in the comments.

require(extrafont)

#Graph 1: Fare vs Age w/ null included
ggplot() + 
  coord_cartesian() + 
  scale_x_discrete() +
  scale_y_continuous() +
  #facet_wrap(~SURVIVED) +
  #facet_grid(.~SURVIVED, labeller=label_both) + # Same as facet_wrap but with a label.
  #facet_grid(PCLASS~SURVIVED, labeller=label_both) +
  labs(title='Titanic') +
  labs(x="Company", y=paste("Profit")) +
  layer(data=V, 
        mapping=aes(x=as.numeric(as.character(COMPANY)), y=as.numeric(as.character(rev_percent)), color=Ninety_Percentile), 
        stat="identity", 
        stat_params=list(), 
        geom="point",
        geom_params=list(), 
        #position=position_identity()
        position=position_jitter(width=0.3, height=0)
  )

