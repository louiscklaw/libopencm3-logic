
STFLASH		= $(shell which st-flash)

i2c_stts75_sensor.bin:
	arm-none-eabi-objcopy -Obinary i2c_stts75_sensor.elf i2c_stts75_sensor.bin

flash: i2c_stts75_sensor.bin
	$(STFLASH) write i2c_stts75_sensor.bin 0x8000000
	$(STFLASH) reset
