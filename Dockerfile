FROM debian:wheezy

RUN	apt-get update -y && apt-get install --no-install-recommends -y -q curl wget python build-essential ca-certificates
RUN echo deb http://packages.prosody.im/debian wheezy main | tee -a /etc/apt/sources.list
RUN wget https://prosody.im/files/prosody-debian-packages.key -O- | apt-key add -
RUN apt-get update -y && apt-get install -y prosody
