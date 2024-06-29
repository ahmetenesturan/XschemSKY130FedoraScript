### XSCHEM INSTALL

sudo dnf install git svn libX11-common.noarch libX11-devel.x86_64 libXrender.x86_64 libXrender-devel.x86_64 libX11-xcb.x86_64 libXrender-devel.x86_64 cairo.x86_64 cairo-devel.x86_64 tcl.x86_64 tcl-devel.x86_64 tk.x86_64 tk-devel.x86_64 flex bison libXpm.x86_64 libXpm-devel.x86_64 libjpeg-turbo.x86_64 libjpeg-turbo-devel.x86_64 xterm gawk mawk tcl-tclreadline.x86_64 tcl-tclreadline-devel.x86_64 autoconf libtool automake libXaw-devel.x86_64 readline-devel.x86_64 patch

svn checkout svn://repo.hu/xschem/trunk xschem-src

cd xschem-src

./configure

sudo make

sudo make install

cd ..

echo "XSchem was installed."

### NGSPICE INSTALL

git clone git://git.code.sf.net/p/ngspice/ngspice ngspice-src

cd ngspice-src

./autogen.sh
mkdir release
cd release
../configure --with-x --enable-xspice --disable-debug --enable-cider --with-readline=yes --enable-openmp --enable-predictor --enable-osdi
make 2>&1 | tee make.log
sudo make install

cd ..
cd ..

echo "ngSpice was installed."

### MAGIC INSTALL

git clone git://opencircuitdesign.com/magic magic-src

cd magic-src

./configure
make
sudo make install

cd ..

echo "Magic was installed."

### OPENPDK INSTALL

git clone git://opencircuitdesign.com/open_pdks open_pdks-src

cd open_pdks-src

./configure --enable-sky130-pdk --enable-sram-sky130
make
sudo make install
make veryclean

cd ..

echo "openPDK was installed."

#REMOVE SOURCE FILES

sudo rm -rf magic-src/ ngspice-src/ xschem-src/

echo "All Installations are Finished."
