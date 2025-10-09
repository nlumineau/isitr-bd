#!/usr/bin/env bash
set -e

TP_DB="formation"

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    create role etudiant with password 'pwdetudiant';
    create database "$TP_DB" with owner "etudiant";
EOSQL


psql -v ON_ERROR_STOP=0 -d "$TP_DB" -a -U etudiant -f /db-data.sql