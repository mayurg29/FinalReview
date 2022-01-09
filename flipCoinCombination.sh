read -p "Enter number of times you want to flip a coin: " flips
read -p "Select the combination 1.Singlet 2.Doublet 3.Triplet: " coins
declare -A  combination

   for (( i=1; i<=$flips; i++))
   do  
       side=""
       for ((j=1; j<=$coins; j++))
       do
            coin=$((RANDOM%2+1))
            if [ $coin == 1 ]
            then
                side+=H
            else
                side+=T
            fi
       done
       echo $side
       combination[$side]=$((${combination[$side]}+1))
   done
   echo "${combination[@]}"

   