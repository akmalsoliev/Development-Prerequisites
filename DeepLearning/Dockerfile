FROM python:latest

RUN python -m pip install --upgrade pip

# Installing Poetry:
RUN curl -sSL https://install.python-poetry.org | python3 -
# Setting Poetry Path:
ENV PATH="/root/.local/bin:${PATH}"

WORKDIR ./setup/
RUN curl https://raw.githubusercontent.com/akmalsoliev/requirements.txt/master/DeepLearning/deeplearning.txt --output requirements.txt
RUN poetry init 
RUN poetry add $( cat requirements.txt )

CMD ["poetry", "shell"]
