clean:
	rm -rf ./built/
	#rm -rf ~/.pxt/mkc-cache/*

build:
	mkc build

deploy:
	mkc build --deploy

connect:
	@DEVICE=$$(ls /dev/cu.usbmodem* 2>/dev/null | head -n 1); \
	if [ -z "$$DEVICE" ]; then \
		echo "No micro:bit device found."; \
		exit 1; \
	else \
		echo "Connecting to $$DEVICE"; \
		minicom --device $$DEVICE --baudrate 115200; \
	fi

install:
	mkc install

serve:
	mkc serve
