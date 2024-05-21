
invalid_cases=0

go build -o roman_numerals_executable convert_roman_numerals.go

while IFS=, read -r column1 column2; do
    output=$(./roman_numerals_executable "$column1")
    if [ "$output" != "$column2" ]; then
        ((invalid_cases++))
    fi
done < "roman_numerals.csv"

echo $invalid_cases

NUM_CHARS=$(cat convert_roman_numerals.go | wc | awk '{print $3}')
echo $NUM_CHARS