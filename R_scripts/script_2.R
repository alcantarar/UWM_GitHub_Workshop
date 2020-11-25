#!/usr/bin/env Rscript
#
# R_scripts/script_2.R
# --------------------------------------------------------
# This script is a working file for this tutorial. You
# will need to edit this file to implement reviewer
# comments.
#
# You can run this script "individually" by 
# calling the `test_W` function defined below.
#

library(ggplot2)

draw_W <- function(canvas) {
  # Adds a letter "W" to an existing ggplot2 context
  
  # read in data
  W <- read.csv(file = 'data/letter_2.csv', 
                header = FALSE)
  names(W) <- c('x', 'y')
  W[nrow(W) + 1,] <- W[1,]
  
  # plot data
  canvas + 
    geom_polygon(
      data=W,
      fill='black', 
      color='black', 
      size=1, 
      aes(x=x, y=y))     
}


test_W <- function() {
  # Displays just the U body
  
  canvas <- ggplot(NULL) + 
    theme(axis.title=element_blank(),
          axis.text=element_blank(),
          axis.ticks=element_blank(),
          panel.background=element_blank(),
          panel.grid=element_blank())
  
  draw_W(canvas)  
}

# Solution
# draw_W <- function(canvas) {
#   # Adds a W body to an existing ggplot2 context
# 
#   # read in data
#   W <- read.csv(file = 'data/letter_2.csv',
#                     header = FALSE)
#   names(W) <- c('x', 'y')
#   W[nrow(W) + 1,] <- W[1,]
# 
#   # plot data
#   canvas +
#     geom_polygon(
#       data=W,
#       fill=rgb(0, 0.2, 0.4),  # per reviewer comment
#       color='black',
#       size=1,
#       aes(x=x, y=y))
# }
