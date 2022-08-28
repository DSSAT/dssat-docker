FROM debian:stable-slim as build

# Install deps and update OS
RUN apt-get update
RUN apt-get install -y ca-certificates gfortran cmake

# Checkout code
ADD src /DSSAT

# Compile
RUN mkdir build
WORKDIR /DSSAT/build
RUN cmake ..
RUN make

FROM debian:stable-slim
COPY --from=build /DSSAT/build/bin/* /app/dssat/
WORKDIR /app/dssat
ENTRYPOINT ["./dscsm048"]