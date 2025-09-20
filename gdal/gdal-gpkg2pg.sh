#!/bin/bash

PGHOST=localhost
PGPORT=5432
PGUSER=postgres
PGDATABASE=postgres

INPUT=~/path/to/file

ogr2ogr \
  -f PostgreSQL \
  PG:"host=$PGHOST user=$PGUSER password=$PGPASS dbname=$PGDATABASE port=$PGPORT" \
  "$INPUT".gpkg
