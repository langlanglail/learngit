KERNEL_DIR=../ebf_linux_kernel/build_image/build

ARCH=arm
CROSS_COMPILE=arm-linux-gnueabihf-
export  ARCH  CROSS_COMPILE

obj-m := driver.o device.o 

out= app
all:
	$(MAKE) -C $(KERNEL_DIR) M=$(CURDIR) modules
	$(CROSS_COMPILE)gcc -o $(out) app.c
modules clean:
	$(MAKE) -C $(KERNEL_DIR) M=$(CURDIR) clean	
