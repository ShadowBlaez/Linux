#!/bin/bash

ps aux

read -p "Enter a Process ID to stop: " Process_ID

kil -9 "$Process_ID" 2>/dev/null || echo "Process $Process_ID not found"

