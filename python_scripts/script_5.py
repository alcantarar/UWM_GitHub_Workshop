#!/usr/bin/env python
'''
	python_scripts/script_5.py
	--------------------------------------------------------
	This script is a working file for this tutorial. You
	will need to edit this file to implement reviewer
	comments.

	You may run this script individually via

		$ python python_scripts/script_5.py
'''

def drawUB():
	'''Draw the upper banner'''
	# read in data
	LB = pd.read_csv('data/upper_banner.csv',
					 header=None)
	x, y = list(LB[0]), list(LB[1])
	x.append(x[0])
	y.append(y[0])

	# plot data
	ax.fill(x, y, color=(1.0, 0.8235, 0.0))


## Solution ----
# def drawUB():
# 	'''Draw the upper banner'''
# 	# read in data
# 	LB = pd.read_csv('data/upper_banner.csv',
# 					 header=None)
# 	x, y = list(LB[0]), list(LB[1])
# 	x.append(x[0])
# 	y.append(y[0])
#
# 	# plot data
# 	ax.fill(x, y, color=(1.0, 0.8235, 0.0))
#
# 	# plot text per reviewer comment
# 	ax.text(x=2.5, y=1.5, s='Marquette Rocks', fontsize=9, color='black', fontweight='bold')


# You will not need to edit the code below
if __name__ == '__main__':
	# We are running this script on its own
	import pandas as pd
	import matplotlib.pyplot as plt
	fig, ax = plt.subplots(1, 1)

	ax.set_xlim(-10, 60)
	ax.set_ylim(-10, 10)
	ax.axis('off')
	drawUB()
	plt.show()
else:
	# We are running this script from within main_script.py
	# Thus all the dependencies and globals have already 
	# been imported.
	drawUB()