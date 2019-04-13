################################################################################
#
# ecen5013-hello-world
#
################################################################################

ECEN5013_HELLO_WORLD_VERSION = 69aaa93a72dab2b905eb77b0cbed9efc71791577
ECEN5013_HELLO_WORLD_SITE = https://github.com/cu-ecen-5013/ecen5013-hello-world.git
ECEN5013_HELLO_WORLD_SITE_METHOD = git

define ECEN5013_HELLO_WORLD_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define ECEN5013_HELLO_WORLD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/hello-ecen5013 $(TARGET_DIR)/bin
endef

$(eval $(generic-package))
