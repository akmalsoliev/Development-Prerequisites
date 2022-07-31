FROM python:latest

# Changing working dir to setup
WORKDIR ./setup

ENV PATH="/root/.local/bin:${PATH}"

RUN python -m pip install --user --upgrade pip

RUN curl https://raw.githubusercontent.com/akmalsoliev/requirements.txt/master/DeepLearning/deeplearning.txt --output requirements.txt

RUN python -m pip install --user -r requirements.txt 

CMD ["jupyter-notebook", "--allow-root"]

