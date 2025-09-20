#!/bin/bash

PGHOST=localhost
PGPORT=5432
PGUSER=postgres
PGDATABASE=postgres

OUTPUT=$HOME/Downloads/filename

QUERY='select geom from schema_name.table_name'

ogr2ogr \
  -f XLSX "$OUTPUT".xlsx \
  PG:"host=$PGHOST user=$PGUSER password=$PGPASS dbname=$PGDATABASE port=$PGPORT" \
  -sql "$QUERY"
