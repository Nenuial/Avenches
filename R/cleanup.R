library(fs)
library(purrr)

cleanup <- function(dir_path) {
  if (!dir_exists(dir_path)) dir_create(dir_path)
  
  dir_ls(dir_path) |> 
    purrr::walk(file_delete)
}

c("data", "actuel", "results") |> 
  purrr::walk(cleanup)