FROM python:latest

ENV PATH="/root/.local/bin:${PATH}"

RUN python -m pip install --user --upgrade pip

RUN mkdir ./setup/ && mkdir ./workdir/

RUN curl https://raw.githubusercontent.com/akmalsoliev/requirements.txt/master/DeepLearning/deeplearning.txt --output /setup/requirements.txt

RUN python -m pip install --user -r ./setup/requirements.txt 

# Install Vim:
RUN apt-get update && apt install vim -y 

WORKDIR ./workdir/

CMD [ \
	"jupyter", \
	"notebook", \
	"--allow-root", \
	"--no-browser", \
	# WARNING: this removes any authentication requirements:
	"--NotebookApp.token=''", \
	"--NotebookApp.password=''" \
]
