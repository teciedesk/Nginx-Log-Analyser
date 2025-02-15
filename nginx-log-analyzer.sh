#!/bin/bash

# Check if log file is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <nginx-access-log-file>"
    exit 1
fi

LOG_FILE=$1

# Check if file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "Error: File '$LOG_FILE' not found!"
    exit 1
fi

# Generate a timestamp for the output file
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
OUTPUT_FILE="nginx-analysis-${TIMESTAMP}.log"

# Print to both screen and log file
{
    echo "🔍 Analyzing log file: $LOG_FILE"
    echo "------------------------------------"

    echo "🔹 Top 5 IP addresses:"
    awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -5
    echo "------------------------------------"

    echo "🔹 Top 5 most requested paths:"
    awk '{print $7}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -5
    echo "------------------------------------"

    echo "🔹 Top 5 response status codes:"
    awk '{print $9}' "$LOG_FILE" | grep -E '^[0-9]+$' | sort | uniq -c | sort -rn | head -5
    echo "------------------------------------"

    echo "🔹 Top 5 user agents:"
    awk -F'"' '{print $6}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -5
    echo "------------------------------------"

    echo "✅ Log analysis completed!"
} | tee "$OUTPUT_FILE"

echo "📂 Analysis saved to: $OUTPUT_FILE"
