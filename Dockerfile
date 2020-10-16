FROM driftphp/base

WORKDIR /
COPY . .
EXPOSE 8000

ENTRYPOINT php server 8000