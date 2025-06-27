#!/bin/bash

# ========================================
# File: log_monitor.sh
# Author: Zachary Collins
# Description: Log Monitoring Script for Red Hat Linux
# ========================================

# Define log files to monitor
LOG_FILES=("/var/log/messages" "/var/log/secure")

# Define keywords to search for
KEYWORDS="ERROR|FAIL|CRITICAL|UNAUTHORIZED|DENIED"

echo "======================================"
echo "   Log Monitoring - $(date)"
echo "======================================"

# Loop through each log file and search for critical entries
for LOG_FILE in "${LOG_FILES[@]}"
do
    echo "Scanning $LOG_FILE for critical entries..."
    grep -Ei "$KEYWORDS" "$LOG_FILE" | tail -n 20
    echo "--------------------------------------"
done

echo "Log monitoring completed."
