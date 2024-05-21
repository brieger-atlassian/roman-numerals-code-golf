
invalid_cases=0

while IFS=, read -r column1 column2; do
    output=$(go run roman_numerals.go $column1)
    if [ "$output" != "$column2" ]; then
        ((invalid_cases++))
    fi
done < "roman_numerals.csv"

echo $invalid_cases

NUM_CHARS=$(cat roman_numerals.go | wc | awk '{print $3}')
echo $NUM_CHARS