#!/bin/sh
#
# .conf.linux
#

#which_config=normal
which_config=plugins

CC="gcc"
CXX="c++"
CFLAGS="-Wall -O3 -fomit-frame-pointer -pipe"    # for speed
#CFLAGS="-Wall -g -pipe"                         # for development
CXXFLAGS="$CFLAGS"

export CC
export CXX
export CFLAGS
export CXXFLAGS


case $which_config in

  normal)

    #######################################################################
    # configuration 1 for release binary RPMs
    # Include a few standard options, speed optimizations, X11 only.
    #######################################################################
    ./configure --with-sdl2 \
    		--enable-debugger \
    		--enable-sb16 \
                --enable-ne2000 \
                --enable-all-optimizations \
                --enable-cpu-level=6 \
                --enable-x86-64 \
                --enable-vmx=2 \
                --enable-pci \
                --enable-clgd54xx \
                --enable-voodoo \
                --enable-usb \
                --enable-usb-ohci \
                --enable-usb-ehci \
                --enable-usb-xhci \
                --enable-busmouse \
                --enable-es1370 \
                --enable-e1000 \
                --enable-show-ips \
                ${CONFIGURE_ARGS} \
				--prefix=/home/jwei/Project/bochs-oldlinux/exp0/bochs
    ;;

  plugins)
    #######################################################################
    # configuration 2 for release binary RPMs
    # Include plugins, every possible gui.
    #######################################################################
    ./configure -with-sdl2 \
    		--enable-debugger \
    		--enable-sb16 \
                --enable-ne2000 \
                --enable-all-optimizations \
                --enable-cpu-level=6 \
                --enable-x86-64 \
                --enable-vmx=2 \
                --enable-pci \
                --enable-clgd54xx \
                --enable-voodoo \
                --enable-usb \
                --enable-usb-ohci \
                --enable-usb-ehci \
                --enable-usb-xhci \
                --enable-busmouse \
                --enable-es1370 \
                --enable-e1000 \
                --enable-plugins \
                --enable-show-ips \
                --with-all-libs \
                ${CONFIGURE_ARGS} \
				--prefix=/home/jwei/Project/bochs-oldlinux/exp0/bochs
    ;;

esac
