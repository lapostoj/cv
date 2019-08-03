FROM ubuntu:disco

WORKDIR /root

RUN apt-get update \
&& apt-get install -y --no-install-recommends wkhtmltopdf=0.12.5-1 \
&& rm -rf /var/lib/apt/lists/*

COPY ./cv.html ./generate.sh ./

ENTRYPOINT ["./generate.sh"]
