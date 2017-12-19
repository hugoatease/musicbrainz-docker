#!/bin/bash

SEARCH_UPDATER_JAR=`dirname "$0"`/updater.jar

# Check presence of the updater jar
if [ ! -e $SEARCH_UPDATER_JAR ]; then
    echo "JAR '$SEARCH_UPDATER_JAR' not found..."
    echo "You should maybe run 'mvn package'..."
    exit
fi

# Run the updater: if $INDEXES is set, use for specifying indexes to update
if [ -z "$INDEXES" ]; then
    java -Xmx512M -jar $SEARCH_UPDATER_JAR --db-host $DB_HOST --db-name $DB_NAME --db-user $DB_USER --db-password "$DB_PASSWORD" --indexes-dir $INDEXES_DIR $@
else
    java -Xmx512M -jar $SEARCH_UPDATER_JAR --indexes $INDEXES --db-host $DB_HOST --db-name $DB_NAME --db-user $DB_USER --db-password "$DB_PASSWORD" --indexes-dir $INDEXES_DIR $@
fi

# Notify the search servlet that indexes have changed
if [ -n "$SERVLET_HOST" ] ; then
    curl -s -o /dev/null $SERVLET_HOST/?reload
fi
