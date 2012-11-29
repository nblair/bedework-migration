#!/bin/sh
# References:
#  https://metacpan.org/module/git-stitch-repo
#  https://github.com/Jasig/svn2git-migration#author-mapping
#  https://github.com/nirvdrum/svn2git
#  http://ifup.org/2009/02/07/the-right-tool-for-the-job-git-stitch-repo/

if [ "$1" == "" ]; then
  echo "Usage: migrate.sh <bedeworkProjectName> <githubProjectName>"
  exit 1
fi

if [ "$2" == "" ]; then
  echo "Usage: migrate.sh <bedeworkProjectName> <githubProjectName>"
  exit 1
fi

cd "`dirname $0`"
BASE_DIR=`pwd`
SCRIPT_DIR=$BASE_DIR/migration-scripts
POM_DIR=$BASE_DIR/migration-poms

svnrepo=$1
gitrepo=$2
common_script=$SCRIPT_DIR/cleanup.sh
script=$SCRIPT_DIR/$2.sh

echo "#######################################################################################"
echo Migrating Bedework project.
echo Running from: $BASE_DIR
echo Bedework SVN project: $svnrepo
echo Target github location: http://github.org/Bedework/$gitrepo.git
echo Project migration script: $script
echo "#######################################################################################"

if [ ! -f $script ]; then
  echo "No migration script found at $script"
  echo "Please create a migration script for this project."
  exit 1
fi

cd $BASE_DIR/projects
rm -rf $gitrepo
echo Cloning git@github.com:Bedework/$gitrepo.git
git clone git@github.com:Bedework/$gitrepo.git
if [ ! -d "$BASE_DIR/projects/$gitrepo" ]; then
  echo Failed to clone git@github.com:Bedework/$gitrepo.git
  exit 1
fi
cd $BASE_DIR/projects/$gitrepo
echo Running svn2git on https://www.bedework.org/svn/$svnrepo
svn2git https://www.bedework.org/svn/$svnrepo --verbose --authors $BASE_DIR/resolvedAuthors.txt
cd $BASE_DIR/projects/$gitrepo
git checkout refs/remotes/svn/trunk
git checkout -b trunk
git checkout master
git rebase trunk
git pull
source $common_script
source $script
cp -rf $POM_DIR/$gitrepo/* .
git commit -a -m "Changes made to project structure for mavenization (migration from SVN to github)."
#git push --mirror
echo Done.

