library(targets)
library(tarchetypes)

list(
  tar_target(name = "data0", command = c(1L + 1L),),
  tar_target(name = "data1", command = seq_len(3L)),
  tar_target(name = "data2", command = seq_len(3L) + 3L),
  tar_target(name = "map1", command = data1 + sum(data0), pattern = map(data1)),
  tar_target(name = "map2", command = data1 + data2, pattern = map(data1, data2)),
  tar_target(name = "map3", command = map1 + 1L, pattern = map(map1)),
  tar_target( name = "map4", command = map1 + map2, pattern = map(map1, map2)),
  tar_target( name = "map5", command = map1 + data2, pattern = map(map1, data2)),
  tar_target(name = "map6", command = sum(map1) + sum(data2), pattern = map(data2)),
  tar_render(name = test_report, path = "reports/test_report.Rmd", knit_root_dir = here::here())
)
