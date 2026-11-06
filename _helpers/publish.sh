# Publish your site to github pages

# needs tweaked for fully static sites
# user must have pushed to a repo they own before doing this

printf "\n🚨 You must push your code to a repo you own before publishing\n👈 Use the Source Control section on the left\n✏️ Enter a message and Commit your code\n🌳 Go ahead and publish your project to a new GitHub repo\n\n🚀 Done all that and ready to proceed? (y/n)? "
read answer

if [ "$answer" != "${answer#[Yy]}" ] ; then 
  npm run build 
  npm run deploy
  printf "\n🎉 Your site may take a few minutes to deploy fully – you'll find the address at your GitHub repo > Settings > Pages"
else
    exit 1
fi
