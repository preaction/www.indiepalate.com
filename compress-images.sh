
ARGS='-resample 72 -resize 35% -quality 65%'

for IMG in $@; do
    echo $IMG
    mv $IMG $IMG.big
    convert $IMG.big $ARGS $IMG
done
