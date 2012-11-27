git rm -r .settings
git rm .classpath
git rm .project
git rm build.xml
echo .settings > .gitignore
echo .classpath >> .gitignore
echo .project >> .gitignore
echo target >> .gitignore
git add .gitignore

