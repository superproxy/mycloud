wget https://github.com/Itseez/opencv/archive/3.0.0.zip
unzip  3.0.0.zip 
cd opencv-3.0.0/
ls
mkdir build
cd build/

yum -y install gcc gcc-c++ gtk2-devel gimp-devel gimp-devel-tools gimp-help-browser zlib-devel libtiff-devel libjpeg-devel libpng-devel gstreamer-devel libavc1394-devel libraw1394-devel libdc1394-devel jasper-devel jasper-utils swig python libtool nasm
cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..
make



# make result
cp opencv-3.0.0/build/lib/cv2.so  .

