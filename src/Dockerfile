FROM buildpack-deps

WORKDIR /app/src

RUN buildDeps='git ca-certificates gfortran cmake' && \
   set -x && \
   apt-get update && \
   apt-get install -y $buildDeps --no-install-recommends && \
   rm -rf /var/lib/apt/lists/*

CMD ["bash"]
