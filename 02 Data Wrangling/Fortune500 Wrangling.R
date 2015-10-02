tbl_df(df)
View(df)

#v <- df %>% select(COMPANY, YEAR, PROFIT_IN_MILLIONS_, REVENUE_IN_MILLIONS_)  %>% filter(YEAR == 1955) %>% mutate(rev_percent = cume_dist(as.numeric(REVENUE_IN_MILLIONS_))) %>% tbl_df
#x <- df %>% group_by(RANK, YEAR) %>% select(COMPANY, YEAR, PROFIT_IN_MILLIONS_) %>% filter(RANK < 6, YEAR<2005) %>% tbl_df
#y <- df %>% select(COMPANY, REVENUE_IN_MILLIONS_, PROFIT_IN_MILLIONS_, YEAR, RANK) %>% filter(YEAR %in% c("1955", "2004")) %>% arrange(RANK) %>% tbl_df
#View(v)
#View(x)
#View(y)

