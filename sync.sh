#!/bin/bash

echo "Dumping the production database"
pg_dump $PRODUCTION_DATABASE_URL -f dump.out --format c

echo "Restoring the staging database"
pg_restore $STAGING_DATABASE_URL dump.out --clean --no-acl --no-owner
