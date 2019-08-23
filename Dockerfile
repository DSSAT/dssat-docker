FROM dssat-pythia-base

WORKDIR /userdata
COPY dssat47 /app/dssat47/

ENTRYPOINT ["/app/pythia.sh"]
