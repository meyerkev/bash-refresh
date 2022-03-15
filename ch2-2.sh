#!/bin/bash
# Write a script that upon invocation shows the time and date, lists all logged-in users, and gives the system uptime. The script then saves this information to a logfile.

machine_state (){
    date
    who
    uptime
}

LOG_FILE=/tmp/machine_state.log
machine_state
echo "Writing to ${LOG_FILE?}"
machine_state >>${LOG_FILE?}
