#!/usr/bin/env Rscript
#
# R_scripts/script_4.R
# --------------------------------------------------------
# This script is a working file for this tutorial. You
# will need to edit this file to implement reviewer
# comments.
#
# You can run this script "individually" by 
# calling the `test_lower_banner` function defined below.
#

library(ggplot2)

draw_lower_banner <- function(canvas) {
  # Adds lower banner to an existing ggplot2 context

  # read in data
  LB <- read.csv(file = 'data/lower_banner.csv',
                header = FALSE)
  names(LB) <- c('x', 'y')
  LB[nrow(LB) + 1,] <- LB[1,]

  # plot data
  canvas +
    geom_polygon(
      data=LB,
      fill='black',
      color='black',
      size=1,
      aes(x=x, y=y))
}


test_lower_banner <- function() {
  # Displays just the lower banner
  
  canvas <- ggplot(NULL) + 
    theme(axis.title=element_blank(),
          axis.text=element_blank(),
          axis.ticks=element_blank(),
          panel.background=element_blank(),
          panel.grid=element_blank())
  
  draw_lower_banner(canvas)  
}

# Solution
# draw_lower_banner <- function(canvas) {
#   # Adds lower banner to an existing ggplot2 context
# 
#   # read in data
#   LB <- read.csv(file = 'data/lower_banner.csv',
#                     header = FALSE)
#   names(LB) <- c('x', 'y')
#   LB[nrow(LB) + 1,] <- LB[1,]
# 
#   # plot data
#   canvas +
#     geom_polygon(
#       data=LB,
#       fill=rgb(0, 0.2, 0.4),  # per reviewer comment
#       color='black',
#       size=1,
#       aes(x=x, y=y))
# }
