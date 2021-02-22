FROM ubuntu:20.04

RUN apt-get update && apt-get install git -y

RUN git clone https://github.com/danielmeijer/terminal-config.git /tmp/install_files && \
    cd /tmp/install_files && \
    bash /tmp/install_files/installation.sh --quiet && \
    rm -rf /tmp/install_files 

ENTRYPOINT tail -f /dev/null