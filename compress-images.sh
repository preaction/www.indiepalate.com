
ARGS='-resample 72 -resize 35% -quality 65%'

for IMG in $@; do
    echo $IMG
    NEWNAME=$(echo $IMG | sed 's/.jpg$/.big.jpg/')
    mv $IMG $NEWNAME
    convert $NEWNAME $ARGS $IMG
done
