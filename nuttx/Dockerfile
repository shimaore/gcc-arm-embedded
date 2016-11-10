FROM shimaore/gcc-arm-embedded

RUN apt-get update && apt-get -y install --no-install-recommends \
  git-core
RUN git clone https://bitbucket.org/nuttx/nuttx.git /opt/src/nuttx
RUN git clone https://bitbucket.org/nuttx/apps.git /opt/src/apps
RUN git clone https://bitbucket.org/nuttx/tools.git /opt/src/tools
WORKDIR /opt/src/tools/kconfig-frontends
RUN apt-get install -y --no-install-recommends build-essential gperf flex bison ncurses-dev
RUN \
  ./configure --enable-mconf --disable-nconf --disable-gconf --disable-qconf --disable-shared --enable-static && \
  make && \
  make install

WORKDIR /opt/src/nuttx
RUN cd tools && ./configure.sh -a ../apps bambino-200e/nsh
RUN make
# To export the binary:
#   docker built -t nuttx .
#   docker run nuttx /bin/sh -c 'tar cf - nuttx.bin' | tar xvf -
