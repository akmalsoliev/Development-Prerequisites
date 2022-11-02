FROM python:3.10

ENV PATH="/root/.local/bin:${PATH}"

RUN python -m pip install --no-cache-dir --user --upgrade pip

ENV req_source="https://raw.githubusercontent.com/akmalsoliev/deep-learning-docker/master/deeplearning.txt"
# installing requirements.txt that was assigned as $req_source
RUN mkdir setup && \
  curl $req_source --output setup/requirements.txt && \
  python -m pip install --no-cache-dir -r setup/requirements.txt 

COPY . /setup
RUN chmod a+x /setup/setup.sh && cd /setup/ && ./setup.sh

WORKDIR workdir
CMD ["../bin/bash"]
