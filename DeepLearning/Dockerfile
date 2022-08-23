FROM python:latest

ENV PATH="/root/.local/bin:${PATH}"

RUN python -m pip install --user --upgrade pip

RUN mkdir ./setup/ && mkdir ./workdir/

RUN curl https://raw.githubusercontent.com/akmalsoliev/requirements.txt/master/DeepLearning/deeplearning.txt --output /setup/requirements.txt

RUN python -m pip install --no-cache-dir -r ./setup/requirements.txt 

# Install Vim:
# This part is not required, however, vim will be used in case of debugging needs
RUN apt-get update && apt install vim -y 

WORKDIR ./workdir/

EXPOSE 8888

CMD [ \
	"jupyter", \
	"notebook", \
	"--allow-root", \
	"--no-browser", \
	# WARNING: this removes any authentication requirements:
	"--NotebookApp.token=''", \
	"--NotebookApp.password=''" \
]
