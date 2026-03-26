HAILO8_PCI_VERSION = v4.21.0
HAILO8_PCI_SITE = $(call github,hailo-ai,hailort-drivers,$(HAILO8_PCI_VERSION))
HAILO8_PCI_LICENSE = GPL-2.0
HAILO8_PCI_LICENSE_FILES = LICENSE
HAILO8_PCI_MODULE_SUBDIRS = linux/pcie

$(eval $(kernel-module))
$(eval $(generic-package))
