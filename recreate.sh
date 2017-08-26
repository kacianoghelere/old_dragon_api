#!/bin/bash
echo "[Droping and recreating]";
rake db:drop
rake db:create
echo "[Migrating]";
rake db:migrate
echo "[Seeding]";
rake db:seed
echo "[Finished]";
