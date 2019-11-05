#!/bin/bash


apt install -y wget

# minimal requirements for Python users (release 3.30 and ns-3-dev)
apt install -y gcc g++ python python3 python3-dev

# minimal requirements for Python (development)
apt install -y python3-setuptools git mercurial

# Netanim animator
apt install -y qt5-default mercurial

# Support for ns-3-pyviz visualizer
apt install -y gir1.2-goocanvas-2.0 python-gi python-gi-cairo python-pygraphviz python3-gi python3-gi-cairo python3-pygraphviz gir1.2-gtk-3.0 ipython ipython3  

# Support for MPI-based distributed emulation
apt install -y openmpi-bin openmpi-common openmpi-doc libopenmpi-dev

# Support for utils/check-style.py code style check program
apt install -y uncrustify

# GNU Scientific Library (GSL) support for more accurate 802.11b WiFi error models (not needed for OFDM):
apt install -y gsl-bin libgsl-dev libgsl23 libgslcblas0

# Database support for statistics framework
apt install -y sqlite sqlite3 libsqlite3-dev

# Xml-based version of the config store (requires libxml2 >= version 2.7)
apt install -y libxml2 libxml2-dev

# Support for generating modified python bindings
apt install -y cmake libc6-dev libc6-dev-i386 libclang-6.0-dev llvm-6.0-dev automake pip
python3 -m pip install --user cxxfilt

# A GTK-based configuration system
apt install -y libgtk2.0-0 libgtk2.0-dev

# To experiment with virtual machines and ns-3
apt install -y vtun lxc

# Support for openflow module (requires some boost libraries)
apt install -y libboost-signals-dev libboost-filesystem-dev