#!/usr/bin/env bash
#
# SPDX-License-Identifier: GPL-3.0-only
#
# Script to setup an Android 10 build
# environment for Fedora 31 / Rawhide.

# Bash color
source $(dirname $0)/color.sh

# Check if alaready exists
if [[ ! /etc/yum.repos.d/che*.repo && ! /etc/yum.repos.d/lantw*.repo ]]; then
    sudo cp setup/che-llvm.repo /etc/yum.repos.d/
    sudo cp setup/lantw44-arm-gcc.repo /etc/yum.repos.d/
    sudo cp setup/lantw44-arm64-gcc.repo /etc/yum.repos.d/
fi

# Packages
sudo dnf install -y \
    aarch64-linux-gnu-{binutils,gcc,glibc} \
    arm-linux-gnueabi-{binutils,gcc,glibc} \
    autoconf213 \
    bison \
    bzip2 \
    clang \
    ccache \
    curl \
    flex \
    gawk \
    gcc-c++ \
    git \
    glibc-devel \
    glibc-static \
    libstdc++-static \
    libX11-devel \
    make \
    llvm \
    lld \
    m4 \
    mesa-libGL-devel \
    ncurses-devel \
    patch \
    zlib-devel \
    ncurses-devel.i686 \
    readline-devel.i686 \
    zlib-devel.i686 \
    libX11-devel.i686 \
    mesa-libGL-devel.i686 \
    glibc-devel.i686 \
    libstdc++.i686 \
    libXrandr.i686 \
    zip \
    perl-Digest-SHA \
    python2 \
    wget \
    lzop \
    openssl-devel \
    java-1.8.0-openjdk-devel \
    ImageMagick \
    ncurses-compat-libs \
    schedtool \
    lzip \
    vboot-utils \
    screen \
    htop \
    neofetch \
    git-subtree
