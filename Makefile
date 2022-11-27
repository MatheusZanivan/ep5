run: /usr/bin/meson /usr/bin/ninja
	cd build; meson ../fuse-3.12.0; ninja; sudo ninja install

/usr/bin/meson: ./build
	sudo apt install meson

./build: ./fuse-3.12.0
	mkdir build