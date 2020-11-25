FROM ubuntu:20.10

WORKDIR /root

RUN apt-get update \
&& apt-get install -y --no-install-recommends wkhtmltopdf=0.12.6-1 \
&& rm -rf /var/lib/apt/lists/*

COPY ./cv.html ./generate.sh ./

ENTRYPOINT ["./generate.sh"]
