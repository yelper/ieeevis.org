OIFS="$IFS"
IFS=$'\n'

for file in *.eps; do convert  -colorspace rgb $file "`basename $file .eps`.png"; done
for file in *.jpg; do convert $file "`basename $file .jpg`.png"; done
for file in *.pdf; do convert  -colorspace rgb $file "`basename $file .pdf`.png"; done

for file in *.png; do mv $file converted/; done
IFS="$OIFS"

