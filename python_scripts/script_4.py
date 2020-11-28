#!/usr/bin/env python
'''
	python_scripts/script_4.py
	--------------------------------------------------------
	This script is a working file for this tutorial. You
	will need to edit this file to implement reviewer
	comments.

	You may run this script individually via

		$ python python_scripts/script_4.py
'''


def drawLB():
	'''Draw the lower banner'''
	# read in data
	LB = pd.read_csv('data/lower_banner.csv',
					header = None)
	x, y = list(LB[0]), list(LB[1])
	x.append(x[0])
	y.append(y[0])

	# plot data
	ax.fill(x, y, color = 'black')

## Solution ----
# def drawLB():
# 	'''Draw the lower banner'''
# 	# read in data
# 	LB = pd.read_csv('data/lower_banner.csv',
# 					header = None)
# 	x, y = list(LB[0]), list(LB[1])
# 	x.append(x[0])
# 	y.append(y[0])
#
# 	# plot data
# 	ax.fill(x, y, color = (0, 0.2, 0.4))  # per reviewer comment


# You will not need to edit the code below
if __name__ == '__main__':
	# We are running this script on its own
	import pandas as pd
	import matplotlib.pyplot as plt
	fig, ax = plt.subplots(1, 1)		
	ax.axis('off')
	drawLB()
	plt.show()
else:
	# We are running this script from within main_script.py
	# Thus all the dependencies and globals have already 
	# been imported.
	drawLB()