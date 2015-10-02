tbl_df(df)
View(df)

df %>% select(YEAR, RANK) %>% filter(YEAR %in% c("1955", "2004")) %>% View
x <- df %>% group_by(RANK) %>% select(COMPANY, YEAR) %>% filter(RANK < 6) %>% arrange(YEAR) %>% View
y <- df %>% select(COMPANY, REVENUE_IN_MILLIONS_, PROFIT_IN_MILLIONS_, YEAR, RANK) %>% filter(YEAR %in% c("1955", "2004")) %>% arrange(RANK) %>% View
