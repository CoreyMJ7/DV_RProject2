

V <- df %>% select(COMPANY, YEAR, REVENUE_IN_MILLIONS_)  %>% filter(YEAR == 1955) %>% mutate(Rev = as.numeric(as.character(REVENUE_IN_MILLIONS_)), rev_percent = cume_dist(as.numeric(REVENUE_IN_MILLIONS_)), Ninety_Percentile= rev_percent > .90) %>% filter(rev_percent > .5,Rev>600) %>% tbl_df
X <- df %>% group_by(RANK, YEAR) %>% select(COMPANY, YEAR, PROFIT_IN_MILLIONS_) %>% filter(RANK < 6, YEAR<2005) %>% tbl_df
Y <- df %>% select(COMPANY, REVENUE_IN_MILLIONS_, PROFIT_IN_MILLIONS_, YEAR, RANK) %>% filter(YEAR %in% c("1955", "2004")) %>% arrange(RANK) %>% tbl_df


View(V)
View(X)
View(Y)

