#!/bin/bash
# This script prompts the user for input and runs a prompt

suggestion="$(copilot --prompt 'Suggest a fun edit I can make to experimentat with this website, preceding the suggestion with the text 🛼 🛼 🛼 🛼 🛼\n' --allow-all)"
# process the suggestion appending it to the docs

echo "${suggestion}"
