#!/usr/bin/env Rscript
#
# R_scripts/script_3.R
# --------------------------------------------------------
# This script is a working file for this tutorial. You
# will need to edit this file to implement reviewer
# comments.
#
# You can run this script "individually" by 
# calling the `test_M` function defined below.
#

library(ggplot2)

draw_M <- function(canvas) {
  # Adds a letter "M" to an existing ggplot2 context

  # read in data
  M <- read.csv(file = 'data/letter_3.csv',
                header = FALSE)
  names(M) <- c('x', 'y')
  M[nrow(M) + 1,] <- M[1,]

  # plot data
  canvas +
    geom_polygon(
      data=M,
      fill='black',
      color='black',
      size=1,
      aes(x=x, y=y))
}


test_M <- function() {
  # Displays just the M body
  
  canvas <- ggplot(NULL) + 
    theme(axis.title=element_blank(),
          axis.text=element_blank(),
          axis.ticks=element_blank(),
          panel.background=element_blank(),
          panel.grid=element_blank())
  
  draw_M(canvas)  
}

## Solution ----
# draw_M <- function(canvas) {
#   # Adds a M body to an existing ggplot2 context
# 
#   # read in data
#   M <- read.csv(file = 'data/letter_3.csv',
#                     header = FALSE)
#   names(M) <- c('x', 'y')
#   M[nrow(M) + 1,] <- M[1,]
# 
#   # plot data
#   canvas +
#     geom_polygon(
#       data=M,
#       fill=rgb(1, 0.8, 0),  # per reviewer comment
#       color='black',
#       size=1,
#       aes(x=x, y=y))
# }
