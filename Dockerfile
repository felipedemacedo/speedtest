FROM ubuntu:18.04

RUN apt update && apt install wget python -y

RUN wget https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py -O speedtest-cli

RUN chmod +x speedtest-cli

RUN mv speedtest-cli /usr/bin/speedtest-cli

CMD ["speedtest-cli"]