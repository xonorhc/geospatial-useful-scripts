#!/bin/bash

PGHOST=localhost
PGPORT=5432
PGUSER=postgres
PGDATABASE=postgres

OUTPUT=$HOME/Downloads/filename

ogr2ogr \
  -f "ESRI Shapefile" "$OUTPUT".shp \
  PG:"host=$PGHOST user=$PGUSER password=$PGPASS dbname=$PGDATABASE port=$PGPORT" \
  -sql "SELECT * FROM tablename"
