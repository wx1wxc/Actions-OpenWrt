while true
do
    make download -j8 V=s
    if [ `find dl -size -1024c -exec ls -l {} \; | wc -l` -eq 0 ]; then
        echo "Download complete"
        break
    else
        find dl -size -1024c -exec rm -f {} \;
    fi
done
