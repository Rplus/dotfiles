#!/bin/sh

FILE="$1"
FILE_NAME=${FILE%%.*}

echo "Convert $FILE to $FILE_NAME…"

mkdir -p $FILE_NAME
cp $FILE $FILE_NAME

# prefix `w-`: wati for developing
mv $FILE w-${FILE}

# remove file extension
mv ${FILE_NAME}/$FILE ${FILE_NAME}/${FILE_NAME}

exiftool -FrameCount -Duration -ImageSize ${FILE_NAME}/${FILE_NAME} > ${FILE_NAME}/info.txt
# identify -verbose -format "Frame %s: %Tcs | Duration: %[Iterations]\n" $FILE >> ${FILE_NAME}/info.txt

convert -coalesce -quality 80 ${FILE_NAME}/${FILE_NAME} ${FILE_NAME}/ani-%03d.jpg

echo "Convert $FILE to $FILE_NAME, done!"
