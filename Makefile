setup:
	# Create python virtualenv & source it
	python3 -m venv venv
	. venv/bin/activate

install:
	# This should be run from inside a virtualenv
	pip install --no-cache-dir pip &&\
		pip install --no-cache-dir -r requirements.txt

	#curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
	sudo wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 && \
        sudo chmod +x /bin/hadolint

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py

	
lint:
	hadolint --ignore DL3013 Dockerfile 
	
	pylint --disable=R,C,W1203,W1202 app.py

all: install lint test
