FROM shimaore/gcc-arm-embedded
MAINTAINER Stéphane Alnet <stephane@shimaore.net>

RUN \
  apt-get update && \
  apt-get install -y --no-install-recommends \
    git-core \
    python-pip \
    python-pycurl \
    python-setuptools

WORKDIR /opt/src
RUN \
  git clone https://github.com/ARMmbed/mbed-os.git

WORKDIR /opt/src/mbed-os
RUN \
  pip install -r requirements.txt \
  && \
  python tools/build.py -m LPC4337 -t GCC_ARM
