library(tercen)
library(dplyr)

options("tercen.workflowId" = "01cb95cd7b746443ed9f40625200ef4f")
options("tercen.stepId"     = "20a59891-7ac9-4b48-8124-2b46ac24a549")

getOption("tercen.workflowId")
getOption("tercen.stepId")

(ctx = tercenCtx()) %>% 
  select(.x, .y) %>%
  transmute(product = .y * .x) %>%
  ctx$addNamespace() %>%
  ctx$save()