#!/bin/bash
# Converts jpegs to webp
# Loop through each JPEG file
for i in {0001..0490}
do
    # Check if the JPEG file exists
    if [[ -f "$i.jpeg" ]]; then
        echo "Converting $i.jpeg to $i.webp"
        cwebp -q 60 "$i.jpeg" -o "$i.webp" #change integer to quality of choice, here 60%
    else
        echo "$i.jpeg does not exist"
    fi
done
