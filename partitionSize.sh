#!/bin/bash

lsblk --noheadings --raw -b | grep -e | sort -rk4 | head -n2
