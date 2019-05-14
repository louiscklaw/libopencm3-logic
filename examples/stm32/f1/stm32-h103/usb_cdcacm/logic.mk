
STFLASH		= $(shell which st-flash)

cdcacm.bin:
	arm-none-eabi-objcopy -Obinary cdcacm.elf cdcacm.bin

flash: cdcacm.bin
	$(STFLASH) write cdcacm.bin 0x8000000
	$(STFLASH) reset
