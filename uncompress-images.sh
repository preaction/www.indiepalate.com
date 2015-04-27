
for IMG in $@; do
    BASE=$(echo $IMG | sed 's/.big$//')
    echo "$IMG -> $BASE"
    mv $IMG $BASE
done
