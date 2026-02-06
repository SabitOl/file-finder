#!/bin/bash

echo "What's the file name you're looking for?"
read FILENAME

if [ -f "$FILENAME" ]; then
echo "The file exists here:"
realpath "$FILENAME"
fi

echo "Do you want to see the file content? If yes, press any key on your keyboard. If no, press ctrl+c to exit."
read ANSWER

if [ -n "$ANSWER" ]; then 
cat "$FILENAME" 

fi
