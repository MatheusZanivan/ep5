.PHONY: run

run: /usr/bin/meson /usr/bin/ninja
	cd build; meson ../fuse-3.12.0; ninja; sudo ninja install
	gcc -Wall hello.c `pkg-config fuse3 --cflags -D_FILE_OFFSET_BITS=64 --libs` -o hello
	gcc hello.c

/usr/bin/meson: ./build
	sudo apt install meson
	sudo apt install libfuse-dev

./build: ./fuse-3.12.0
	mkdir build