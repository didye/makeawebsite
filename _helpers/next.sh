#!/bin/bash
# This script prompts the user for input and runs a prompt

suggestion="$(copilot --prompt 'Suggest an edit the user can make to this website project, preceding the suggestion with the text 🛼 🛼 🛼 🛼 🛼\n' --allow-all)"
echo "${suggestion}"
