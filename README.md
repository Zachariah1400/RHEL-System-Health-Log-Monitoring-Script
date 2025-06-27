# RHEL-System-Health-Log-Monitoring-Script

## 📋 Overview
This project includes two Bash scripts designed for **Red Hat Enterprise Linux (RHEL)** to monitor system health and scan system logs for common errors. These scripts are useful for IT Help Desk, System Administrators, and Security Analysts to quickly assess system performance and identify critical issues.

---

## ⚙️ Features
- System uptime reporting  
- Disk space usage monitoring  
- Memory and CPU load checking  
- TCP port visibility  
- Log file scanning for critical errors and security events  
- Supports Red Hat log files: `/var/log/messages` and `/var/log/secure`

---

## 📂 Project Structure
```text
linux-system-monitoring/
├── health_check.sh       # System health monitoring script
├── log_monitor.sh        # Log scanning script
├── sample_outputs/       # Example output files
│   ├── health_check_output.txt
│   └── log_monitor_output.txt
└── README.md             # Project documentation
