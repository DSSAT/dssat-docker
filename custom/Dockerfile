FROM dssat/dssat-docker-base

# This assumes the custom DSSAT source code is located under
# the current directory /dssat-csm-os
# Due to docker restrictions, the custom CSM source MUST be located
# in a subdirectory of this directory.
 
ARG DSSAT_SRC_DIR=dssat-csm-os

COPY ${DSSAT_SRC_DIR} /src/dssat-src/
RUN mkdir /app && \
  cd /src/dssat-src/ && \
  mkdir -p build && cd build && \
  cmake -DCMAKE_INSTALL_PREFIX=/app/dssat47 -DCMAKE_BUILD_TYPE=RELEASE .. && \
  make && make install

ENTRYPOINT ["/app/dssat47/dscsm047"]
