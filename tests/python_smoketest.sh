#!/usr/bin/env bash
#
# python_smoketest.sh
# ---------------------------------------------
# Just run all the Python script and see 
# what happens.
#


echo 'Testing scripts' \
	&& echo 'Give me a U! (script_1.py)' \
	&& python_scripts/script_1.py \
	&& echo 'Give me a W! (script_2.py)' \
	&& python_scripts/script_2.py \
	&& echo 'Give me an M! (script_3.py)' \
	&& python_scripts/script_3.py \
	&& echo 'Give me a banner! (script_4.py)' \
	&& python_scripts/script_4.py \
	&& echo 'Give me a banner of different color! (script_5.py)' \
	&& python_scripts/script_5.py \

echo 'All together now. Running main_script.py' \
	&& main_script.py

echo 'Smoketest complete'