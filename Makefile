all:
	docker build -t shimaore/gcc-arm-embedded gcc
	docker build -t shimaore/mbed-os mbed-os
