FROM ubuntu:bionic

WORKDIR /root

RUN apt-get update \
&& apt-get install -y wget xz-utils libxrender1 libfontconfig libxext6 \
&& rm -rf /var/lib/apt/lists/* \
&& wget -q https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz \
&& tar xf wkhtmltox-0.12.4_linux-generic-amd64.tar.xz \
&& rm ./wkhtmltox-0.12.4_linux-generic-amd64.tar.xz

COPY ./cv.html ./generate.sh ./

ENTRYPOINT ["./generate.sh"]
