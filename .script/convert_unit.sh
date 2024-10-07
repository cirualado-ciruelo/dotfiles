#!/bin/bash

convert_unit() {
  input=$1
  # Extract the number part (before any letter)
  number=$(echo "$input" | sed -E 's/([0-9]+(\.[0-9]+)?)\s*[kMB]*/\1/')
  # Extract the suffix (k, M, B)
  suffix=$(echo "$input" | sed -E 's/[0-9]+(\.[0-9]+)?\s*([kMB])?/\2/')

  # Default multiplier is 1
  multiplier=1

  case "$suffix" in
    k)
      multiplier=1000
      ;;
    M)
      multiplier=1000000
      ;;
    B)
      multiplier=1000000000
      ;;
    "")
      multiplier=1
      ;;
    *)
      echo "Unsupported unit: $suffix"
      exit 1
      ;;
  esac

  # Perform the calculation and round to the nearest integer (no decimals)
  result=$(echo "scale=0; $number * $multiplier / 1" | bc)

  # Use awk to format the number with commas
  formatted_result=$(echo "$result" | awk '{printf "%\047d\n", $0}')

  # Convert to Japanese units (integers)
  if [ "$result" -ge 100000000 ]; then
    japanese_unit=$(echo "$result / 100000000" | bc)
    japanese_text="${japanese_unit}億"
  elif [ "$result" -ge 10000 ]; then
    japanese_unit=$(echo "$result / 10000" | bc)
    japanese_text="${japanese_unit}万"
  else
    japanese_text="${result}"
  fi

  echo "$formatted_result: $japanese_text"
}

# Example usage:
# Convert input (pass as argument to the script)
if [ -z "$1" ]; then
  echo "Please provide a value (e.g., 1.57k or 10.3M)."
  exit 1
fi

convert_unit "$1"
