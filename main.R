library(tercen)
library(dplyr)

(ctx = tercenCtx()) %>% 
  select(.x, .y) %>%
  transmute(product = .y * .x) %>%
  ctx$addNamespace() %>%
  ctx$save()