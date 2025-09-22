#!/usr/bin/env bash

SCRIPTPATH="$(dirname "$0")"
source "$SCRIPTPATH"/.env

PGTABLES='tablename_1,tablename_2'

OUTPUT=$HOME/Downloads/filename.gpkg

XMIN=608703
YMIN=8976244
XMAX=610049
YMAX=8977313

ogr2ogr \
  -spat $XMIN $YMIN $XMAX $YMAX "$OUTPUT" \
  PG:"host=$PGHOST 
      user=$PGUSER 
      password=$PGPASS 
      dbname=$PGDATABASE 
      port=$PGPORT 
      schemas=$PGSCHEMA 
      tables=$PGTABLES"
