
#obj-m += helloworld_imx_with_timing.o
#obj-m += helloworld_imx_char_driver.o
#obj-m += helloworld_imx_class_driver.o
obj-m += hellokeys_imx.o

KERNEL_DIR ?= $(HOME)/my-linux-imx
OUTPUT ?= bin

all:
	make -C $(KERNEL_DIR) \
			ARCH=arm CROSS_COMPILE=arm-poky-linux-gnueabi- \
			SUBDIRS=$(PWD) modules
	mv *.o *.ko *.mod.c *.symvers *.order $(OUTPUT)

clean:
	make -C $(KERNEL_DIR) \
			ARCH=arm CROSS_COMPILE=arm-poky-linux-gnueabi- \
			SUBDIRS=$(PWD) clean
	rm $(OUTPUT)/*
			
deploy:
	scp $(OUTPUT)/*.ko root@172.30.200.199: