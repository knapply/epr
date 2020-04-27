library(data.table)
print.data.table <- function(x) print(tibble::as_tibble(x))

target_url <- "https://icr.ethz.ch/data/epr/core/EPR-2019.csv"

init <- fread(target_url, encoding = "UTF-8")

epr_df <- tibble::as_tibble(init)

usethis::use_data(epr_df, overwrite = TRUE)
