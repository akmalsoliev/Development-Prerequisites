FROM python:3.10

# Allows to to create an ssh connection to the Docker Container
# README section: SSH
ARG PASS=sshpass
RUN apt update && apt -y install openssh-server
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
RUN /bin/echo -e "$PASS\n$PASS" | (passwd root)

# Base packages that are going to be installed
# NOTE: Tensroflow needs to be rebuilt based on the system
ENV req_source="https://raw.githubusercontent.com/akmalsoliev/deep-learning-docker/master/deeplearning.txt"
RUN python -m pip install --no-cache-dir --user --upgrade pip
RUN mkdir setup && \
  curl $req_source --output setup/requirements.txt && \
  python -m pip install --no-cache-dir -r setup/requirements.txt 

COPY . /setup
RUN chmod +x /setup/setup.sh && /setup/setup.sh

WORKDIR workdir

CMD ["../bin/bash"]
