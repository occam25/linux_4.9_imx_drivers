
APP?=ioctl_test

all: $(APP)

app: $(APP).c
	$(CC) -o $@ $^
	
clean:
	rm $(APP)
	
deploy: $(APP)
	scp $^ root@172.30.200.199:
	