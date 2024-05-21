go build -o convert_roman_numerals convert_roman_numerals.go

invalid_cases=0

while IFS=, read -r column1 column2; do
    output=$(./convert_roman_numerals "$column1")
    if [ "$output" != "$column2" ]; then
        ((invalid_cases++))
    fi
done < "roman_numerals.csv"

if [ $invalid_cases == 0 ]; then
    NUM_CHARS=$(cat convert_roman_numerals.go | wc | awk '{print $3}')
    echo "Congratulations! Your code converted all roman numerals using only $NUM_CHARS characters"
else
    echo "Unfortunately your code failed on $invalid_cases cases. Only submissions that succceed on all cases will be counted for minimizing characters"
fi
