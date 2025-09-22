#!/usr/bin/env bash

SCRIPTPATH="$(dirname "$0")"
source "$SCRIPTPATH"/.env

PGTABLES=tablename

OUTPUT=$HOME/Downloads/filename

XMIN=608703
YMIN=8976244
XMAX=610049
YMAX=8977313

ogr2ogr \
  -spat $XMIN $YMIN $XMAX $YMAX \
  -f "ESRI Shapefile" "$OUTPUT".shp \
  PG:"host=$PGHOST 
      user=$PGUSER 
      password=$PGPASS 
      dbname=$PGDATABASE 
      port=$PGPORT 
      schemas=$PGSCHEMA 
      tables=$PGTABLES"
