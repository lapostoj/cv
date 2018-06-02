FROM ubuntu:bionic

ENTRYPOINT ["/root/generate.sh"]

RUN apt-get update && apt-get install -y wget xz-utils libxrender1 libfontconfig libxext6

WORKDIR /root
RUN wget -q https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz
RUN tar xf wkhtmltox-0.12.4_linux-generic-amd64.tar.xz

ADD ./ /root
