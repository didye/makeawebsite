# Publish your site to github pages

# needs tweaked for fully static sites in which case we can copy contents to a folder we pass as dist
# user must have pushed to a repo they own before doing this

printf "\n🚨 You must push your code to a repo you own before publishing\n👈 Use the Source Control section on the left\n✏️ Enter a message and Commit your code\n🌳 Go ahead and publish your project to a new GitHub repo\n\n🚀 Done all that and ready to proceed? (y/n)? "
read answer

pubdir=""
if [ "$answer" != "${answer#[Yy]}" ] ; then 
  npm run build || rsync -a ../ ../dist
  if [ -d "dist" ]; then
  pubdir="dist"
  else 
    if [ -d "public" ]; then
    pubdir="public"
    else
      if [ -d "out" ]; then
      pubdir="out"
      else
        if [ -d "_site" ]; then
        pubdir="_site"
        else
          if [ -d "build" ]; then
          pubdir="build"
          else
            if [ -d "docs" ]; then
            pubdir="docs"
            fi
          fi
        fi
      fi
    fi
  fi
  if [ -n "$pubdir" ]; then
    npx --yes --package=gh-pages gh-pages -d "$pubdir"
    printf "\n🎉 Your site may take a few minutes to deploy fully – you'll find the address at your GitHub repo > Settings > Pages\n"
  else
    exit 1
  fi
else
    exit 1
fi
