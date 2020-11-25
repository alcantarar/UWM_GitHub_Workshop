#!/usr/bin/env Rscript
#
# R_scripts/script_1.R
# --------------------------------------------------------
# This script is a working file for this tutorial. You
# will need to edit this file to implement reviewer
# comments.
#
# You can run this script "individually" by 
# calling the `test_U` function defined below.
#

library(ggplot2)

draw_U <- function(canvas) {
  # Adds a letter "U" to an existing ggplot2 context
  
  # read in data
  U <- read.csv(file = 'data/letter_1.csv', 
                    header = FALSE)
  names(U) <- c('x', 'y')
  U[nrow(U) + 1,] <- U[1,]
  
  # plot data
  canvas + 
    geom_polygon(
      data=U,
      fill='black', 
      color='black', 
      size=1, 
      aes(x=x, y=y))     
}


test_U <- function() {
  # Displays just the U body
  
  canvas <- ggplot(NULL) + 
    theme(axis.title=element_blank(),
          axis.text=element_blank(),
          axis.ticks=element_blank(),
          panel.background=element_blank(),
          panel.grid=element_blank())
  
  draw_U(canvas)  
}

# Solution
# draw_U <- function(canvas) {
#   # Adds a U body to an existing ggplot2 context
# 
#   # read in data
#   U <- read.csv(file = 'data/U.csv',
#                     header = FALSE)
#   names(U) <- c('x', 'y')
#   U[nrow(U) + 1,] <- U[1,]
# 
#   # plot data
#   canvas +
#     geom_polygon(
#       data=U,
#       fill=rgb(1, 0.8, 0),  # per reviewer comment
#       color='black',
#       size=1,
#       aes(x=x, y=y))
# }
