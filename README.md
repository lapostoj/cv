# CV

Author: lapostoj

Contact: jerome.lapostolet@gmail.com

## Description

Html version of my CV (non filtered) used to generate PDF versions by keeping only the relevant parts depending on the context of the application.

## Usage

You need to have docker installed.

Build the docker image by running

```bash
docker build -t cv-generate .
```

Run the image in a container with the current folder being mounted to /root/out.

```bash
docker run --name cv-generate --rm --mount type=bind,source="$(pwd)",target=/root/out -it cv-generate bash
```

The generated pdf will be in the current folder as `cv.pdf`.
