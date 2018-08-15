nvcc = /usr/local/cuda/bin/nvcc
cudalib = /usr/local/cuda/lib64/
TF_INC = /home/lqyu/software/anaconda2/lib/python2.7/site-packages/tensorflow/include
TF_LIB = /home/lqyu/software/anaconda2/lib/python2.7/site-packages/tensorflow

all: tf_nndistance_so.so render_balls_so.so
.PHONY : all

tf_nndistance_so.so: tf_nndistance_g.cu.o tf_nndistance.cpp
	g++ -std=c++11 tf_nndistance.cpp tf_nndistance_g.cu.o -o tf_nndistance_so.so -shared -fPIC -I $(TF_INC)/external/nsync/public -I $(TF_INC) -lcudart -L $(cudalib) -L $(TF_LIB) -ltensorflow_framework -O2 -D_GLIBCXX_USE_CXX11_ABI=0

tf_nndistance_g.cu.o: tf_nndistance_g.cu
	$(nvcc) -D_GLIBCXX_USE_CXX11_ABI=0 -std=c++11 -c -o tf_nndistance_g.cu.o tf_nndistance_g.cu -I $(TF_INC)/external/nsync/public -I $(TF_INC) -DGOOGLE_CUDA=1 -x cu -Xcompiler -fPIC -O2

render_balls_so.so: render_balls_so.cpp
	g++ -std=c++11 render_balls_so.cpp -o render_balls_so.so -shared -fPIC -O2 -D_GLIBCXX_USE_CXX11_ABI=0

clean:
	rm tf_nndistance_so.so render_balls_so.so tf_nndistance_g.cu.o
