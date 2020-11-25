#!/usr/bin/env python
'''
	python_scripts/script_2.py
	--------------------------------------------------------
	This script is a working file for this tutorial. You
	will need to edit this file to implement reviewer
	comments.

	You may run this script individually via

		$ python python_scripts/script_2.py
'''


def drawW():
	'''Draw the W body'''
	# read in data
	W = pd.read_csv('data/letter_2.csv',
					header = None)
	x, y = list(W[0]), list(W[1])
	x.append(x[0])
	y.append(y[0])

	# plot data
	ax.fill(x, y, color = 'black')
	ax.plot(x, y, color = 'black', linewidth = 2)

# Solution
# def drawW():
# 	'''Draw the W body'''
# 	# read in data
# 	W = pd.read_csv('data/letter_2.csv',
# 					header = None)
# 	x, y = list(W[0]), list(W[1])
# 	x.append(x[0])
# 	y.append(y[0])
#
# 	# plot data
# 	ax.fill(x, y, color = (0, 0.2, 0.4))  # per reviewer comment
# 	ax.plot(x, y, color = 'black', linewidth = 2)


# You will not need to edit the code below
if __name__ == '__main__':
	# We are running this script on its own
	import pandas as pd
	import matplotlib.pyplot as plt
	fig, ax = plt.subplots(1, 1)		
	ax.axis('off')
	drawW()
	plt.show()
else:
	# We are running this script from within main_script.py
	# Thus all the dependencies and globals have already 
	# been imported.
	drawW()