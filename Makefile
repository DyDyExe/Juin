export THEOS = $(HOME)/theos
include $(THEOS)/makefiles/common.mk

# Nom du tweak
TWEAK_NAME = Juin

# Fichiers source du tweak
MyTweak_FILES = Tweak.xm

# Cible et architectures
TARGET = iphone:clang:latest:14.5
ARCHS = arm64 arm64e

include $(THEOS_MAKE_PATH)/tweak.mk

# Commande à exécuter après l'installation (par exemple, redémarrer SpringBoard)
after-install::
	install.exec "killall -9 SpringBoard"
