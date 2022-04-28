## -----------------------------------------------------------------------------
library(compicc)

## ---- echo = F----------------------------------------------------------------
head(dep_df1)

## -----------------------------------------------------------------------------
result <- dep_ci(dep_df1, dep_df2)

## -----------------------------------------------------------------------------
result2 <- indep_ci(indep_df1, indep_df2, conf_level = 0.9)

## ---- error = T---------------------------------------------------------------
d1_trial1 <- c(34, 33, 36)
d1_trial2 <- c(41, 38, 40)
d1_trial3 <- c(37, 36, 37)
data1 <- data.frame(d1_trial1, d1_trial2, d1_trial3)

d2_trial1 <- c(33, 33, 35)
d2_trial2 <- c(43, 41, 42)
d2_trial3 <- c(36, 36, 38)
d2_trial4 <- c(29, 30, 29)
data2 <- data.frame(d2_trial1, d2_trial2, d2_trial3, d2_trial4)

indep_ci(data1, data2)

## ---- error = T---------------------------------------------------------------
d1_trial1 <- c(34, 33, 36)
d1_trial2 <- c(41, 38, 40)
d1_trial3 <- c(37, 36, 37)
data1 <- data.frame(d1_trial1, d1_trial2, d1_trial3)

d2_trial1 <- c(33, 33, 35, 32)
d2_trial2 <- c(43, 41, 42, 43)
d2_trial3 <- c(36, 36, 38, 38)
data2 <- data.frame(d2_trial1, d2_trial2, d2_trial3)

dep_ci(data1, data2)

## ---- error = T---------------------------------------------------------------
d1_trial1 <- c(34, 33, 36)
d1_trial2 <- c(41, 38, 40)
d1_trial3 <- c(37, NA, 37)
data1 <- data.frame(d1_trial1, d1_trial2, d1_trial3)

d2_trial1 <- c(33, 33, 35)
d2_trial2 <- c(43, 41, 42)
d2_trial3 <- c(36, 36, 38)
data2 <- data.frame(d2_trial1, d2_trial2, d2_trial3)

dep_ci(data1, data2)

