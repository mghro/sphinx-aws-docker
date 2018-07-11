FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y -q python3-pip texlive texlive-latex-extra git-all && pip3 install boto3 awscli sphinx==1.6.7

RUN mkdir documents

WORKDIR /documents
VOLUME /documents

CMD ["/bin/bash"]
