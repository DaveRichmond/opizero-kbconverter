export BR2_EXTERNAL ?= $(realpath buildroot-opi-zero)
export BR2_GLOBAL_PATCH_DIR ?= $(realpath buildroot-opi-zero)

.DEFAULT_GOAL := all

%:
	$(MAKE) -C buildroot $@

