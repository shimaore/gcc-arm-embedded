image:
	docker build -t shimaore/gcc-arm-embedded gcc
	docker build -t shimaore/mbed-os mbed-os

tests:
	echo None.

push: image tests
	echo Not yet.
