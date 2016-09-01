mvn clean install
pkill -9 -f target/reddit-history.jar
java -jar target/reddit-history.jar $@