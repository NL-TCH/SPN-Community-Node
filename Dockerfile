FROM ubuntu:22.04

RUN apt update
RUN apt install wget -y
RUN wget https://raw.githubusercontent.com/safing/spn/master/tools/install.sh
RUN chmod +x install.sh
RUN yes | ./install.sh -S -y -n

COPY ./config.json /opt/safing/spn/config.json

EXPOSE 17
EXPOSE 80

CMD ["/opt/safing/spn/portmaster-start", "--data", "/opt/safing/spn", "hub"]