#!/bin/bash

GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
NC='\033[0m'

print_header() {
  echo -e "${CYAN}--------------------------------------${NC}"
  echo -e "${YELLOW} >>> $1 <<< ${NC}"
  echo -e "${CYAN}--------------------------------------${NC}"
}
clear
echo -e "${GREEN}Welcome to your System Dashboard!${NC}\n"
print_header "System Info"
echo "Current User : $USER"
echo "Operating Sys: $(uname -s)"
echo "Host Name    : $HOSTNAME"
echo ""
print_header "Uptime"
uptime | awk -F'( |,|:)+' '{print $6 " hours, " $7 " minutes"}'
echo ""
print_header "Disk Space (Root)"
df -h / | awk 'NR==2 {print "Total: " $2 " | Used: " $3 " | Free: " $4}'
echo ""
print_header "Memory Usage"
free -m | awk 'NR==2 {print "Total: " $2 "MB | Used: " $3 "MB | Free: " $4 "MB"}'
echo ""
echo -e "${GREEN}Script execution finished. Have a great day!${NC}"
