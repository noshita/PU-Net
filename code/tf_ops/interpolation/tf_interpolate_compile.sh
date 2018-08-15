#/bin/bash

TF_INC=$1
TF_LIB=$2

g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I $TF_INC/external/nsync/public -I $TF_INC  -I /usr/local/cuda/include -lcudart -L /usr/local/cuda/lib64/ -L$TF_LIB -ltensorflow_framework -O2 -D_GLIBCXX_USE_CXX11_ABI=0
