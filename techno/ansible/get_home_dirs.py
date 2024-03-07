#!/usr/bin/env python3

import os

with open('/etc/passwd', 'r') as f:
    for line in f:
        parts = line.strip().split(':')
        username = parts[0]
        home_dir = parts[5]
        print(f'{username}:{home_dir}')
