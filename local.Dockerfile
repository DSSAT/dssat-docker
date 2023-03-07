FROM debian:stable-slim as build

# Install deps and update OS
RUN apt-get update
RUN apt-get install -y ca-certificates gfortran cmake

# Checkout code
ADD src /dssat-csm-os

# Compile
WORKDIR /dssat-csm-os/build
RUN cmake -DCMAKE_INSTALL_PREFIX=/app/dssat ..
RUN cmake ..
RUN make
RUN make install

FROM debian:stable-slim
COPY --from=build /app/dssat /app/dssat/
WORKDIR /app/dssat
ENTRYPOINT ["/app/dssat/dscsm048"]
