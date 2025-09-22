#!/usr/bin/env bash

SCRIPTPATH="$(dirname "$0")"
source "$SCRIPTPATH"/.env

OUTPUT=$HOME/Downloads/filename

QUERY='select geom from schema_name.table_name'

ogr2ogr \
  -f GPKG "$OUTPUT".gpkg \
  PG:"host=$PGHOST user=$PGUSER password=$PGPASS dbname=$PGDATABASE port=$PGPORT" \
  -sql "$QUERY"
