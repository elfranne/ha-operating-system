################################################################################
#
# Hailo-10 Firmware
#
################################################################################

HAILO10_FIRMWARE_VERSION = 5.2.0
HAILO10_FIRMWARE_LICENSE = PROPRIETARY
HAILO10_FIRMWARE_SOURCE = hailo10h_fw.tar.gz
HAILO10_FIRMWARE_SITE = https://hailo-hailort.s3.eu-west-2.amazonaws.com/Hailo10H/$(HAILO10_FIRMWARE_VERSION)/FW

# Tarball has no top-level directory, so override default --strip-components=1
define HAILO10_FIRMWARE_EXTRACT_CMDS
	tar -C $(@D) -xzf $(HAILO10_FIRMWARE_DL_DIR)/$(HAILO10_FIRMWARE_SOURCE)
endef

define HAILO10_FIRMWARE_INSTALL_TARGET_CMDS
	$(INSTALL) -d $(TARGET_DIR)/lib/firmware/hailo/hailo10h
	cp -a $(@D)/* $(TARGET_DIR)/lib/firmware/hailo/hailo10h/
endef

$(eval $(generic-package))
