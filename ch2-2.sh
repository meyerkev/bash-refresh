#!/bin/bash
# Write a script that upon invocation shows the time and date, lists all logged-in users, and gives the system uptime. The script then saves this information to a logfile.

date
who
uptime

LOG_FILE=/tmp/machine_state.log
echo "Writing to ${LOG_FILE?}"
date >>${LOG_FILE?}
who >>${LOG_FILE?}
uptime >>${LOG_FILE?}
