import sys
import cv2

imagePath = sys.argv[1]
cascPath  = sys.argv[2]


image = cv2.imread(imagePath)

gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)




faceCascade = cv2.CascadeClassifier(cascPath)

#faces = faceCascade.detectMultiScale(gray, scaleFactor=1.1, minNeighbors=5, minSize=(30,30), flags=cv2.cv.CV_HAAR_SCALE_IMAGE)
faces = faceCascade.detectMultiScale(gray, scaleFactor=1.1, minNeighbors=5, minSize=(30,30), flags=0)

for(x,y,w,h) in faces:
   cv2.rectangle(image, (x,y), (x+w,y+h), (0,255,0), 2)
#cv2.imshow("faces found", image)
cv2.imwrite("result.jpg", image)
print("faces found")
#cv2.waitKey(0)
