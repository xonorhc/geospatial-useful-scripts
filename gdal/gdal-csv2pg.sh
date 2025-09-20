#!/bin/bash

PGHOST=localhost
PGPORT=5432
PGUSER=postgres
PGDATABASE=postgres
PGSCHEMA=public

INPUT=~/path/to/file

PGTABLENAME=tablename
GEOMETRY=POINT
SRS=31984

ogr2ogr \
  -f PostgreSQL \
  PG:"host=$PGHOST user=$PGUSER password=$PGPASS dbname=$PGDATABASE port=$PGPORT schemas=$PGSCHEMA" \
  "$INPUT".csv \
  -nln $PGTABLENAME \
  -nlt $GEOMETRY \
  -a_srs EPSG:$SRS

# -oo GEOM_POSSIBLE_NAMES=geom \
# -oo KEEP_GEOM_COLUMNS=NO \
# -lco GEOMETRY_NAME=geom \
# -oo AUTODETECT_TYPE=YES
# -s_srs EPSG:$S_SRS -t_srs EPSG:$T_SRS \
# -oo X_POSSIBLE_NAMES=longitude* -oo Y_POSSIBLE_NAMES=latitude*
