VENV=.venv
PYTHON=$(VENV)/bin/python3

isort:
	$(PYTHON) -m isort . --skip=.venv/

black:
	$(PYTHON) -m black --check . --exclude '.venv/'

mypy:
	$(PYTHON) -m mypy . --exclude '.venv/'

#flake8:
#	$(PYTHON) -m flake8 . --exclude=.venv/

lint: isort black mypy

test:  ## Run tests
	$(PYTHON) -m pytest

serve:  ## Run application server in development
	$(PYTHON) main.py
