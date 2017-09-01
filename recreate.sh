#!/bin/bash
echo "[Droping]";
rake db:drop
echo "[Recreating]";
rake db:create
echo "[Migrating]";
rake db:migrate
echo "[Seeding]";
rake db:seed
echo "[Dumping]";
rake db:schema:dump
echo "[Finished]";
