FROM python:latest

RUN python -m pip install --upgrade pip

# Installing Poetry:
RUN curl -sSL https://install.python-poetry.org | python3 -
# Setting Poetry Path:
ENV PATH="${PATH}:/root/.poetry/bin"

