FROM python:latest

ENV PATH="/root/.local/bin:${PATH}"

RUN python -m pip install --no-cache-dir --user --upgrade pip

ENV req_source="https://raw.githubusercontent.com/akmalsoliev/Development-Prerequisites/master/deeplearning.txt"

RUN mkdir setup && \
curl $req_source --output setup/requirements.txt && \
python -m pip install --no-cache-dir -r setup/requirements.txt 

# Install Vim:
# This part is not required, however, vim will be used in case of debugging needs
RUN apt-get update && apt install vim -y 

WORKDIR workdir

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
