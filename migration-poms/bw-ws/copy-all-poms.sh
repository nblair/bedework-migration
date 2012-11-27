#!/bin/sh
SRC_DIR=/home/ewittman/git/bedework-maven/bedework-xml
DST_DIR=/home/ewittman/Development/bedework/bedework-migration/migration-poms/bw-ws

for p in `ls /home/ewittman/git/bedework-maven/bedework-xml/ | grep bedework-xml`
do
  src=$p
  dst=`echo $src | sed s/bedework-xml/bw-ws/g`
  srcpom=$SRC_DIR/$src/pom.xml
  dstpom=$DST_DIR/$dst/pom.xml
  echo "Copying POM"
  echo "  from: $srcpom"
  echo "  to:   $dstpom"
  cp $srcpom $dstpom
done


