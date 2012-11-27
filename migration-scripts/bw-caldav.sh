mkdir -p bw-caldav-util/src/main/java
mkdir -p bw-caldav-server/src/main/java
git add bw-caldav-util
git add bw-caldav-server
git mv server/src/org bw-caldav-server/src/main/java/.
git mv util/src/org bw-caldav-util/src/main/java/.
echo .settings > bw-caldav-server/.gitignore
echo .classpath >> bw-caldav-server/.gitignore
echo .project >> bw-caldav-server/.gitignore
echo target >> bw-caldav-server/.gitignore
cp bw-caldav-server/.gitignore bw-caldav-util/.
git add bw-caldav-server/.gitignore
git add bw-caldav-util/.gitignore
git rm -r server
git rm -r util
rm -rf server
rm -rf util

