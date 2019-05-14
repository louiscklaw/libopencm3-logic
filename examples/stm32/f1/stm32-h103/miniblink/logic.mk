
STFLASH		= $(shell which st-flash)

miniblink.bin:
	arm-none-eabi-objcopy -Obinary miniblink.elf miniblink.bin

flash: miniblink.bin
	$(STFLASH) write miniblink.bin 0x8000000
