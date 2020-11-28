#!/usr/bin/env Rscript
#
# R_scripts/script_5.R
# --------------------------------------------------------
# This script is a working file for this tutorial. You
# will need to edit this file to implement reviewer
# comments.
#
# You can run this script "individually" by 
# calling the `test_upper_banner` function defined below.
#

library(ggplot2)

draw_upper_banner <- function(canvas) {
  # Adds upper banner to an existing ggplot2 context

  # read in data
  UB <- read.csv(file = 'data/upper_banner.csv',
                 header = FALSE)
  names(UB) <- c('x', 'y')
  UB[nrow(UB) + 1,] <- UB[1,]

  # plot data
  canvas +
    geom_polygon(
      data=UB,
      fill=rgb(1, 0.8235, 0),
      color=NA,
      size=1,
      aes(x=x, y=y))
}


test_upper_banner <- function() {
  # Displays just the upper banner
  
  canvas <- ggplot(NULL) + 
    theme(axis.title=element_blank(),
          axis.text=element_blank(),
          axis.ticks=element_blank(),
          panel.background=element_blank(),
          panel.grid=element_blank())
  
  draw_upper_banner(canvas)  
}

## Solution ----
# draw_upper_banner <- function(canvas) {
#   # Adds lower banner to an existing ggplot2 context
# 
#   # read in data
#   UB <- read.csv(file = 'data/upper_banner.csv',
#                     header = FALSE)
#   names(UB) <- c('x', 'y')
#   UB[nrow(UB) + 1,] <- UB[1,]
# 
#   # plot data
#   canvas +
#     geom_polygon(
#       data=UB,
#       fill=rgb(1, 0.8235, 0),
#       color=NA,
#       size=1,
#       aes(x=x, y=y)) +
#     geom_text(label='Marquette Rocks', aes(x=7, y=1.5), color='black', size=5)  # per reviewer comment
# 
# }
