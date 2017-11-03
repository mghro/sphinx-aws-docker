FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y -q python3-pip sphinx texlive texlive-latex-extra build-essential && pip install boto3 awscli

RUN mkdir documents

WORKDIR /documents
VOLUME /documents

CMD ["/bin/bash"]
