###############################################################################
#
# python-evdev
#
###############################################################################

PYTHON_EVDEV_VERSION=1.4.0
PYTHON_EVDEV_SOURCE = evdev-$(PYTHON_EVDEV_VERSION).tar.gz
PYTHON_EVDEV_SITE = https://pypi.python.org/packages/source/e/evdev
PYTHON_EVDEV_LICENSE = Python-2.0
PYTHON_EVDEV_SETUP_TYPE = setuptools

$(eval $(python-package))
