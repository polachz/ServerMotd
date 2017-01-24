#!/bin/sh

#title           :install.sh
#description     :instell modified MOTD generator 
#author          :zdenek polach ( https://github.com/polachz )
#date            :24.01.2017
#version         :0.1
#usage           :provide ServerMotd installation. 
#notes           :Must be called as ROOT
#==============================================================================
#
# MIT License
#
# Copyright (c) 2017 Zdenek Polach

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

#==============================================================================

if [ "$(id -u)" != "0" ]; then
   echo 
   echo "Sorry, you are not root."
   echo "Please run this script as root to make installation possible"
   echo
   exit 1
fi

#at first make original files non executable

chmod 644 /etc/update-motd.d/*

cp ./00-welcome /etc/update-motd.d/
cp ./10-sysinfo /etc/update-motd.d/
cp ./80-wrapper /etc/update-motd.d/
cp ./warn-msg /etc/update-motd.d/


