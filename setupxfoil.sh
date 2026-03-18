cd Xfoil-for-Mac
cd orrs/bin
make -f Makefile_DP osgen

cd ../../plotlib
make libPlt_gSP.a
cd ../bin
make xfoil
make pplot 
make pxplot
