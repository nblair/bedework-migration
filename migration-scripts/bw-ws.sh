mkdir -p src/main
git mv schemas src/main/.
mkdir bw-ws-appleServer
mkdir bw-ws-bwlicense
mkdir bw-ws-caldav
mkdir bw-ws-calws-soap
mkdir bw-ws-calws-soap-strict
mkdir bw-ws-carddav
mkdir bw-ws-catdav
mkdir bw-ws-category
mkdir bw-ws-dav
mkdir bw-ws-exchangews
mkdir bw-ws-icalendar
mkdir bw-ws-icalendar-strict
mkdir bw-ws-synchws
mkdir bw-ws-tzsvr
mkdir bw-ws-vcard
mkdir bw-ws-xrd
# These only have a pom.xml that we're not going to use anymore
git rm -r appleServer
git rm -r bwlicense
git rm -r caldav
git rm -r category
git rm -r icalendar
git rm -r icalendar-strict
git rm -r timezones
git rm -r vcard
# Now remove the folder from the local file system
rm -rf appleServer
rm -rf bwlicense
rm -rf caldav
rm -rf category
rm -rf icalendar
rm -rf icalendar-strict
rm -rf timezones
rm -rf vcard

