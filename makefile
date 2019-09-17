CC=mpicxx
INC=-I/usr/local/Cellar/python/3.7.4/Frameworks/Python.framework/Versions/3.7/include/python3.7m

pmd: pmd.cpp pmd.hpp
	$(CC) pmd.cpp $(INC) -undefined dynamic_lookup `python3 -m pybind11 --includes` -lm -O3 -Wall -shared -std=c++11 -o pmd`python3-config --extension-suffix`

clean: 
	rm -rfv gr pmd pmd.d *.xyz pmd.dSYM *.d pmd.png
