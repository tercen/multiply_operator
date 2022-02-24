library(tercen)
library(dplyr)

ctx <- tercenCtx()

ctx %>% 
  select(.x, .y) %>%
  transmute(product = .y * .x) %>%
  ctx$addNamespace() %>%
  ctx$save()