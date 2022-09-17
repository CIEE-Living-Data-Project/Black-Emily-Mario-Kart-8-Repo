#load packages
library(tidyverse)
#library(rdryad) ##if downloading data from dryad

dir.create("data/")
dir.create("scripts/")


dir.create("data/url")
dir.create("data/dryad")
dir.create("data/github")


###Download via URL
#Downloaded on Sept. 14th 2022
data_url <- "https://query.data.world/s/q4bodlodyhwkim5ader5prnl67gz5d"
dest_file <- "data/url/mario_kart_character_stats.csv"

#No metadata associated with this file 
download.file(url=data_url, destfile=dest_file)

mario_kart_stats <- read.csv("data/url/mario_kart_character_stats.csv")
