FROM dssat/dssat-docker-base

RUN mkdir /{src,app} && \
cd /src && \
git clone https://github.com/dssat/dssat-csm-os && \
git clone https://github.com/dssat/dssat-csm-data && \
cd dssat-csm-data && git checkout master && cd .. & \
cd dssat-csm-os && git checkout master && \
cp -r ../dssat-csm-data/* Data/ && \
mkdir build && cd build && \
cmake -DCMAKE_INSTALL_PREFIX=/app/dssat47 -DCMAKE_BUILD_TYPE=RELEASE .. && \
make && make install

ENTRYPOINT ["/app/dssat47/dscsm047"]
