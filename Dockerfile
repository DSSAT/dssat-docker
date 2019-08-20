FROM debian:stable-slim

WORKDIR /userdata
COPY dssat47 /app/dssat47/

ENTRYPOINT ["/app/dssat47/dscsm047"]
