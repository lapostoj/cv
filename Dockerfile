FROM ubuntu:22.04

WORKDIR /root

RUN apt-get update \
&& apt-get install -y --no-install-recommends wkhtmltopdf=0.12.6-2 \
&& rm -rf /var/lib/apt/lists/*

COPY ./cv.html ./cv-fr.html ./generate.sh ./

ENTRYPOINT ["./generate.sh"]
