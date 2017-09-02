#!/bin/bash
echo "[Purging]";
rake db:purge
echo "[Seeding]";
rake db:seed
echo "[Finished]";
