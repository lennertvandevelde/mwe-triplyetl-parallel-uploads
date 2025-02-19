#!/bin/bash

npm run build
# Run the first process in the background
npx etl lib/main.js &

# Run the second process in the background
npx etl lib/main2.js &

# Wait for both processes to finish
wait

echo "Both processes have completed."
