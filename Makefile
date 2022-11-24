setup:
	# Create python virtualenv & source it
	python3 -m venv venv
	. venv/bin/activate

install:
	# This should be run from inside a virtualenv
	#pip install --no-cache-dir pip &&\
	#pip install --no-cache-dir -r requirements.txt


test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py

	
lint:
	hadolint --ignore DL3013 Dockerfile 
	
all: install lint test
