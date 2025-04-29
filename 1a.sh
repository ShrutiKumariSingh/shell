#!/bin/bash
echo "Currently logged-in users:"
who | awk '{print $1}'
