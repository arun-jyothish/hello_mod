nat_dir = /lib/modules/5.15.0-84-generic/build/
# arm_dir = /home/arun/Technexion/linux/temp_modules/lib/modules/4.1.15-134097-gd220b8b1bcac-dirty/build

obj-m += hello.o
arm_dir = /home/arun/new/linux
arm_dir = /home/arun/Technexion/tech/linux 

arm:
	make -C ${arm_dir} M=${PWD} modules

nat:
	make -C ${nat_dir} M=${PWD} modules
clean:
	make -C ${arm_dir} M=${PWD} clean
	make -C ${nat_dir} M=${PWD} clean
