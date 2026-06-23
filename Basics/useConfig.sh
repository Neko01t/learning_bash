#!/bin/bash
source ./.config/basic.conf
echo "Message : $GREETING"
echo "Role : $USER_ROLE"
if [ "$ENABLE_LOGGING" = true ]; then
  echo "Loggin is enabled"
fi
for rule in "${!RULES[@]}"; do
  echo "${RULES[$rule]}"
done
