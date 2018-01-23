# make result
cp opencv-3.0.0/build/lib/cv2.so  .

#=== face detect pytho programe

#find ./  -name haarcascade_frontalface_default.xml
cp opencv-3.0.0/data/haarcascades/haarcascade_frontalface_default.xml  .
find ./  -name  abba.png

wget -O  raw.jpg http://imgsrc.baidu.com/imgad/pic/item/9a504fc2d56285358e6bf5d59aef76c6a6ef63be.jpg


python detect.py  raw.jpg   haarcascade_frontalface_default.xml 
