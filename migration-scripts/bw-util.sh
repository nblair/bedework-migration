mkdir -p src/main/java
git mv src/edu src/main/java/.
mkdir src/test
git mv tests/src src/test/java
git rm -r tests
git rm bundle.xml
git rm rpiutil.bnd


