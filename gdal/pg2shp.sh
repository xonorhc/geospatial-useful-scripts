#!/usr/bin/env bash

SCRIPTPATH="$(dirname "$0")"
source "$SCRIPTPATH"/.env

OUTPUT=$HOME/Downloads/filename

ogr2ogr \
  -f "ESRI Shapefile" "$OUTPUT".shp \
  PG:"host=$PGHOST user=$PGUSER password=$PGPASS dbname=$PGDATABASE port=$PGPORT" \
  -sql "SELECT * FROM tablename"
