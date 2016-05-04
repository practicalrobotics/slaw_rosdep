#!/bin/sh

res=$(python -c "import pkgutil; print (pkgutil.find_loader('nut2') is not None)")

if [ "$res" = "False" ] ; then
    mkdir -p ~/ros-deps
    cd ~/ros-deps
    wget --tries=10 https://raw.githubusercontent.com/smARTLab-liv/slaw_rosdep/master/python-nut2-v09-2014.zip
    unzip -o python-nut2-v09-2014.zip
    cd python-nut2-master
    sudo python setup.py install
fi

