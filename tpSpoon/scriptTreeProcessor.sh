#!/bin/bash
# Indique au système que l'argument qui suit est le programme utilisé pour exécuter ce fichier
mvn package
java -cp .:target/tpSpoon-1.0-SNAPSHOT-jar-with-dependencies.jar vv.spoon.MainExample_Tree src/main/resources/example src/main/resources/example-instrumented
cd src/main/resources/example-instrumented
mvn package
java -cp .:target/example-1.0-SNAPSHOT.jar example.A 2
cat log
echo "ok"

 
exit 0
