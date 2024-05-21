
while IFS=, read -r column1 column2; do
    output=$(go run roman_numerals.go $column1)
    if [ "$output" == "$column2" ]; then
        echo "Match found: $column1 equals $column2"
    else
        echo "No match: $column1 does not equal $column2"
    fi
done < "roman_numerals.csv"


NUM_CHARS=$(cat roman_numerals.go | wc | awk '{print $3}')
echo $NUM_CHARS