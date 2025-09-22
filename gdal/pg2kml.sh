#!/usr/bin/env bash

SCRIPTPATH="$(dirname "$0")"
source "$SCRIPTPATH"/.env

PGTABLES=tablename

OUTPUT=$HOME/Downloads/filename

S_SRS=31984
T_SRS=4326

ogr2ogr \
  -f "KML" "$OUTPUT".kml \
  PG:"host=$PGHOST 
      user=$PGUSER 
      password=$PGPASS 
      dbname=$PGDATABASE 
      port=$PGPORT 
      schemas=$PGSCHEMA 
      tables=$PGTABLES" \
  -s_srs EPSG:$S_SRS -t_srs EPSG:$T_SRS
