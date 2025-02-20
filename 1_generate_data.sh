#!/bin/bash

# Output file
output_file="output.json"


# Initialize JSON structure
echo '{"results":[' > "$output_file"

# Loop to generate JSON entries from 0 to 1,000,000
for i in $(seq 0 100000); do
  # Generate random names for givenName and familyName
  givenName=aaaaaaaaaaaaaaaa
  familyName=bbbbbbbbbbbbbbbbbbb

  # Format each JSON entry
  if [ "$i" -lt 100000 ]; then
    echo "{\"id\":$i, \"givenName\":\"$givenName\", \"familyName\":\"$familyName\"}," >> "$output_file"
  else
    echo "{\"id\":$i, \"givenName\":\"$givenName\", \"familyName\":\"$familyName\"}" >> "$output_file"
  fi
done

# Close JSON array and object
echo ']}' >> "$output_file"

output_file2="output_2.json"

echo '{"results":[' > "$output_file2"

# Loop to generate JSON entries from 0 to 1,000,000
for i in $(seq 1 100000); do
  # Generate random names for givenName and familyName
  givenName=bbbbbbbbbbbbbbbbb
  familyName=aaaaaaaaaaaaaaaa

  # Format each JSON entry
  if [ "$i" -lt 100000 ]; then
    echo "{\"id\":$i, \"givenName\":\"$givenName\", \"familyName\":\"$familyName\"}," >> "$output_file2"
  else
    echo "{\"id\":$i, \"givenName\":\"$givenName\", \"familyName\":\"$familyName\"}" >> "$output_file2"
  fi
done

echo ']}' >> "$output_file2"


output_file3="output_3.json"

echo '{"results":[' > "$output_file3"

# Loop to generate JSON entries from 0 to 1,000,000
for i in $(seq 1 100000); do
  # Generate random names for givenName and familyName
  givenName=cccccccccccccccccccccc
  familyName=dddddddddddddd

  # Format each JSON entry
  if [ "$i" -lt 100000 ]; then
    echo "{\"id\":$i, \"givenName\":\"$givenName\", \"familyName\":\"$familyName\"}," >> "$output_file3"
  else
    echo "{\"id\":$i, \"givenName\":\"$givenName\", \"familyName\":\"$familyName\"}" >> "$output_file3"
  fi
done
# Close JSON array and object
echo ']}' >> "$output_file3"

echo "JSON file generated at $output_file"
