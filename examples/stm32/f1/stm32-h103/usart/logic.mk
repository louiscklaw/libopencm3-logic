
STFLASH		= $(shell which st-flash)

usart.elf :
	make clean
	make

usart.bin :
	arm-none-eabi-objcopy -Obinary usart.elf usart.bin

flash: usart.bin
	$(STFLASH) write usart.bin 0x8000000
	$(STFLASH) reset
