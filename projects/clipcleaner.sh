#!/bin/bash
wl-paste --no-newline --watch sh -c 'sed "s/[^[:print:]\t]//g" | wl-copy'
