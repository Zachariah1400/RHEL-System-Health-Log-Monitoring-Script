#!/bin/bash

# ========================================
# File: health_check.sh
# Author: Zachary Collins
# Description: System Health Monitoring Script for Red Hat Linux
# ========================================

echo "======================================"
echo "   System Health Check - $(date)"
echo "======================================"

echo ""
echo "Uptime:"
uptime
echo ""

echo "Disk Usage:"
df -h
echo ""

echo "Memory Usage:"
free -h
echo ""

echo "CPU Load (1 min, 5 min, 15 min averages):"
top -bn1 | grep "load average"
echo ""

echo "Open TCP Ports:"
ss -tuln
echo ""

echo "Health check completed successfully."
