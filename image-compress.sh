
ARGS='-resample 72 -resize 35%'

for IMG in $1/*.jpg; do
    echo $IMG
    mv $IMG $IMG.big
    convert $IMG.big $ARGS $IMG
done