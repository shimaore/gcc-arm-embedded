FROM debian:testing

RUN \
  dpkg --add-architecture i386 && \
  apt-get update && \
  apt-get install -y --no-install-recommends \
    bzip2 \
    ca-certificates \
    curl \
    make \
    libc6:i386 \
    libncurses5:i386 \
    libstdc++6:i386

RUN mkdir -p /opt/src/gcc
WORKDIR /opt/src/gcc
RUN curl -L https://launchpad.net/gcc-arm-embedded/5.0/5-2016-q3-update/+download/gcc-arm-none-eabi-5_4-2016q3-20160926-linux.tar.bz2 | \
  tar xjvf -
ENV PATH /opt/src/gcc/gcc-arm-none-eabi-5_4-2016q3/bin:$PATH
