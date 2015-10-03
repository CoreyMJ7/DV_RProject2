# This .R file is for our data wrangling


#1. In this wrangle, we add three new columns and omit viewing the Rank. One for Revenue to make it a measure (this could be done in the ggplot code too), one to evaluate the cumulative distribution function of the Revenue fo the companies, and one Boolean to determine whether the cumulative distribution is in the 90th percentile. This is all filtered to only look at companies in 1955
Solo_1995 <- df %>% select(COMPANY, YEAR,PROFIT_IN_MILLIONS_, REVENUE_IN_MILLIONS_)  %>% filter(YEAR == 1955) %>% mutate(Rev = as.numeric(as.character(REVENUE_IN_MILLIONS_)), prof_percent = cume_dist(as.numeric(PROFIT_IN_MILLIONS_)), Ninety_Percentile= prof_percent > .90) %>% filter(prof_percent > .5,Rev>600) %>% tbl_df

#2. This uses the group by and summarize functions to subtract profit from revenue to find the company's expenses. It is filter for years between 1975 and 2000 and for ranks 1 or 10

Summarized <- df %>% group_by(YEAR, RANK,REVENUE_IN_MILLIONS_ ) %>% summarise(Expenses = sum(-as.numeric(as.character(PROFIT_IN_MILLIONS_)),as.numeric(as.character(REVENUE_IN_MILLIONS_))))%>%filter(RANK == 1|RANK==10,YEAR%in%c(1975:2000)) %>% tbl_df
                                                                                                      

#3. This looks at (filters) the top 5 companies in 1955 and the years from 1955 to 2000 and arranges them by year. This shows how time affects companies' weath.

Top_5 <- df %>% select(COMPANY, REVENUE_IN_MILLIONS_, PROFIT_IN_MILLIONS_, YEAR, RANK) %>% filter(YEAR %in% c(1955:2000),COMPANY%in%c("DuPont","General Motors","Exxon Mobil","Esmark")) %>% arrange(YEAR) %>% tbl_df

tbl_df(Solo_1995)
tbl_df(Summarized)
tbl_df(Top_5)

