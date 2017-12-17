#!/bin/bash

PGPASSWORD=$POSTGRES_PASSWORD psql -U $POSTGRES_USER -h $POSTGRES_HOST -c "DROP DATABASE musicbrainz;" postgres && /createdb.sh -fetch
