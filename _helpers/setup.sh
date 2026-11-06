#!/bin/bash
# This script prompts the user for input and runs a prompt

prompt="$(<.github/prompts/didye.prompt.md)"
copilot --prompt "$prompt" --allow-all
npm run start || npx --yes serve
