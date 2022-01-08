coin=$((RANDOM%2+1))
echo $coin

    if [ $coin == 1 ]
    then 
        echo "Heads"
    else 
        echo "Tails"
    fi
