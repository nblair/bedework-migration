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

# Reorganize calws-soap
# ###############################3
mkdir -p src/main/wsdls/calws-soap
mkdir -p src/main/schemas/calws-soap
git mv calws-soap/*.xsd src/main/schemas/calws-soap/.
git mv calws-soap/wsdlbindings src/main/wsdls/calws-soap/.
git mv calws-soap/*.wsdl src/main/wsdls/calws-soap/.
git rm -r calws-soap
rm -rf calws-soap
sed -i 's/\.\.\/schemas\//\.\.\//' src/main/schemas/calws-soap/*.xsd
sed -i 's/wsmessages\.xsd/\.\.\/\.\.\/schemas\/calws-soap\/wsmessages\.xsd/' src/main/wsdls/calws-soap/*.wsdl

# Reorganize calws-soap-strict
# ###############################3
mkdir -p src/main/wsdls/calws-soap-strict
mkdir -p src/main/schemas/calws-soap-strict
git mv calws-soap-strict/*.xsd src/main/schemas/calws-soap-strict/.
git mv calws-soap-strict/wsdlbindings src/main/wsdls/calws-soap-strict/.
git mv calws-soap-strict/*.wsdl src/main/wsdls/calws-soap-strict/.
git rm -r calws-soap-strict
rm -rf calws-soap-strict
sed -i 's/\.\.\/schemas\//\.\.\//' src/main/schemas/calws-soap-strict/*.xsd
sed -i 's/wsmessages\.xsd/\.\.\/\.\.\/schemas\/calws-soap-strict\/wsmessages\.xsd/' src/main/wsdls/calws-soap-strict/*.wsdl

# Reorganize exchangews
# ###############################3
mkdir -p src/main/wsdls/exchangews
mkdir -p src/main/schemas/exchangews
git mv exchangews/*.xsd src/main/schemas/exchangews/.
git mv exchangews/wsdlbindings src/main/wsdls/exchangews/.
git mv exchangews/*.wsdl src/main/wsdls/exchangews/.
git rm -r exchangews
rm -rf exchangews
sed -i 's/\.\.\/schemas\//\.\.\//' src/main/schemas/exchangews/*.xsd
sed -i 's/messages\.xsd/\.\.\/\.\.\/schemas\/exchangews\/messages\.xsd/' src/main/wsdls/exchangews/*.wsdl




