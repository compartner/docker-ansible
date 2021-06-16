# This file is a template, and might need editing before it works on your project.
FROM ubuntu:20.04

MAINTAINER CP/COMPARTNER <itservice@cp-compartner.de>

# Edit with mysql-client, postgresql-client, sqlite3, etc. for your needs.
# Or delete entirely if not needed.
RUN apt update -y && \
    echo "===> Installing basic tools..." && \
    apt-get install -y python3-pip openssh-client sshpass && \
    apt-get clean all && \
    echo "===> Installing Ansible..."  && \
    pip3 install --upgrade ansible pyyaml
