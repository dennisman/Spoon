#!/bin/bash
# Indique au système que l'argument qui suit est le programme utilisé pour exécuter ce fichier
mvn package
java -cp .:target/tpSpoon-1.0-SNAPSHOT-jar-with-dependencies.jar vv.spoon.MainExample src/main/resources/example src/main/resources/example-instrumented
cp src/main/resources/example/pom.xml src/main/resources/example-instrumented
mkdir -p src/main/resources/example-instrumented/src/main/java/fr/univ/nantes
cp -r src/main/java/fr/univ/nantes/logger src/main/resources/example-instrumented/src/main/java/fr/univ/nantes
cd src/main/resources/example-instrumented
mvn package
java -cp .:target/example-1.0-SNAPSHOT.jar example.A 2
cat log
