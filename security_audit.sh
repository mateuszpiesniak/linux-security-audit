#!/bin/bash
set -e
trap 'echo "ERROR: Audit failed at line $LINENO" >&2' ERR

echo "===== LINUX SECURITY AUDIT ====="
echo "Audit started at: $(date '+%Y-%m-%d %H:%M:%S')"

echo ""
echo "Current user:"

whoami

echo ""
echo "User identity and groups:"
id

echo ""
echo "System information:"
uname -a

echo ""
echo "Audit date and time:"
date

echo ""
echo "Disk usage:"
df -h

echo ""
echo "Memory usage:"
free -h

echo ""
echo "Top processes by CPU usage:"
ps aux --sort=-pcpu | head -n 10

echo ""
echo "Network listeners:"
ss -tuln

echo ""
echo "Logged-in users and sessions:"
w

echo ""
echo "System cron directory:"
ls -la /etc/cron.d

echo ""
echo "Audit completed at: $(date '+%Y-%m-%d %H:%M:%S')"
echo "Audit status: SUCCESS"
echo "===== AUDIT FINISHED ====="
