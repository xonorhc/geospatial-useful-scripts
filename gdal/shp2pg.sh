#!/usr/bin/env bash

SCRIPTPATH="$(dirname "$0")"
source "$SCRIPTPATH"/.env

INPUT=~/path/to/file
PGTABLENAME=tablename

ogr2ogr \
  -f PostgreSQL \
  PG:"host=$PGHOST user=$PGUSER password=$PGPASS dbname=$PGDATABASE port=$PGPORT schemas=$PGSCHEMA" \
  "$INPUT".shp \
  -nln $PGTABLENAME \
  -nlt PROMOTE_TO_MULTI \
  -lco precision=NO
