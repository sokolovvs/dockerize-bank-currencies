#!/bin/bash

read -p "Please, input the migration description: " migrationDescription
createdAt=$(date +%s)
repositoryRoot=`pwd`

pathToMigration="$repositoryRoot/services/postgres/migrations/V${createdAt}__${migrationDescription}.sql"
pathToUndoMigration="$repositoryRoot/services/postgres/migrations/U${createdAt}__${migrationDescription}.sql"


touch "$pathToMigration"
touch "$pathToUndoMigration"

echo "You can write your migration into $pathToMigration"
echo "You can write the undo-migration into $pathToMigration"