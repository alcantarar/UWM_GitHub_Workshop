#!/usr/bin/env python
'''
	python_scripts/script_3.py
	--------------------------------------------------------
	This script is a working file for this tutorial. You
	will need to edit this file to implement reviewer
	comments.

	You may run this script individually via

		$ python python_scripts/script_3.py
		
'''


def drawM():
	'''Draw the M body'''
	# read in data
	M = pd.read_csv('data/letter_3.csv',
					header = None)
	x, y = list(M[0]), list(M[1])
	x.append(x[0])
	y.append(y[0])

	# plot data
	ax.fill(x, y, color = 'black')
	ax.plot(x, y, color = 'black', linewidth = 2)

## Solution ----
# def drawM():
# 	'''Draw the M body'''
# 	# read in data
# 	M = pd.read_csv('data/letter_3.csv',
# 					header = None)
# 	x, y = list(M[0]), list(M[1])
# 	x.append(x[0])
# 	y.append(y[0])
#
# 	# plot data
# 	ax.fill(x, y, color = (1, 0.8, 0))  # per reviewer comment
# 	ax.plot(x, y, color = 'black', linewidth = 2)


# You will not need to edit the code below
if __name__ == '__main__':
	# We are running this script on its own
	import pandas as pd
	import matplotlib.pyplot as plt
	fig, ax = plt.subplots(1, 1)		
	ax.axis('off')
	drawM()
	plt.show()
else:
	# We are running this script from within main_script.py
	# Thus all the dependencies and globals have already 
	# been imported.
	drawM()