#! /bin/bash

./bootstrap.sh
mkdir build && cd $_
../configure CPPFLAGS='-DNDEBUG'
make
sudo make install