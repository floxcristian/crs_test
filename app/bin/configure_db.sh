#!/bin/bash

export PGPASSWORD="crsoq_pass"
PGUSER="crsoq_user"
PGDB="crsoq_test"

# Crea un nuevo usuario
echo "Creating user: $PGUSER..."

psql -U postgres -c "CREATE USER $PGUSER WITH ENCRYPTED PASSWORD $PGPASS";
# createuser -U postgres $PGUSER --encrypted --login; #--interactive

#psql -U postgres GRANT ALL PRIVILEGES ON DATABASE $PGDB TO $PGUSER;


#echo "Configuring database: $PGDB..."

# Crea la db 'crsoq_db' - -w = --no-password
# dropdb -U $PGUSER  --if-exists $PGDB;
# createdb -U $PGUSER $PGDB;

# Ejecuta las sql del archivo 'database.sql' sobre la db 'crsoq_db'
# psql -U $PGUSER $PGDB < ./app/bin/database.sql

#echo "$PGDB configured..."


####################
# PGPORT=5432
# PGHOST="my.database.domain.com"
#PGUSER="postgres"
#PGDB="mydb"
#createdb -h $PGHOST -p $PGPORT -U $PGUSER $PGDB
