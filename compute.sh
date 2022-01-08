read -p "Enter value of a: " a
read -p "Enter value of b: " b
read -p "Enter value of c: " c

X=$((a+b*c))
Y=$((a*b+c))
Z=$((c+a/b))
W=$((a%b+c))


declare -A Compute
Compute[operation1]="$X"
Compute[operation2]="$Y"
Compute[operation3]="$Z"
Compute[operation4]="$W"

sort=("${Compute[@]}")

echo "Ascending order:"
for item in ${sort[@]}; do echo $item; done | sort

echo "Descending order:"
for item in ${sort[@]}; do echo $item; done | sort -r


