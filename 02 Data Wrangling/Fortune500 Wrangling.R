tbl_df(df)
View(df)

df %>% select(YEAR, RANK) %>% filter(YEAR %in% c("1955", "2004")) %>% View
