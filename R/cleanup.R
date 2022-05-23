library(fs)
library(purrr)

dir_ls("data/") |> 
  purrr::walk(file_delete)

dir_ls("actuel/") |> 
  purrr::walk(file_delete)

dir_ls("results/") |> 
  purrr::walk(file_delete)
