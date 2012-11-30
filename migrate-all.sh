#!/bin/sh

# Just make a bunch of calls to migrate.sh with the right settings!
# ##################################################################

cd "`dirname $0`"
BASEDIR=`pwd`

$BASEDIR/migrate.sh bwxml bw-ws
$BASEDIR/migrate.sh rpiutil bw-util
$BASEDIR/migrate.sh access bw-access
$BASEDIR/migrate.sh davutil bw-davio
$BASEDIR/migrate.sh webdav bw-webdav
$BASEDIR/migrate.sh caldav bw-caldav

