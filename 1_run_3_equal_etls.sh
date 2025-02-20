#!/bin/bash
bash 1_generate_data.sh

npm run build
# Run the first process in the background
npx etl lib/main.js &

# Run the second process in the background
npx etl lib/main2.js &

# Run the third process in the background
npx etl lib/main3.js &


# Wait for both processes to finish
wait

echo "All processes have completed."
