#!/usr/bin/env bash

SCRIPTPATH="$(dirname "$0")"
source "$SCRIPTPATH"/.env

INPUT=~/path/to/file

PGTABLENAME=tablename
GEOMETRY=POINT
SRS=4674

ogr2ogr \
	-f PostgreSQL \
	PG:"host=$PGHOST user=$PGUSER password=$PGPASS dbname=$PGDATABASE port=$PGPORT schemas=$PGSCHEMA" \
	"$INPUT".csv \
	-nln $PGTABLENAME \
	-nlt $GEOMETRY \
	-a_srs EPSG:$SRS
