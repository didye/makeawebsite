#!/bin/bash
# This script requests an experiment suggestion and appends the Markdown response.

if gh copilot -- -p "Suggest a fun edit I can make to experiment with this website, including example code I can copy into the project. Precede this first suggestion with a heading describing it. Then give me a follow-up suggestion, but this time don't give me the code, so that I can learn how to implement it myself – you can include pseudocode if appropriate. Return only the response as Markdown, with no introduction or extra commentary." --silent --no-color >> TODO.md; then
  printf "\n💡 Suggestion added to TODO.md\n"
else
  printf "\n🙈 Could not generate a suggestion; see the error above.\n" >&2
  exit 1
fi
