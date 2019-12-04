#!/bin/bash

export PGPASSWORD="postgres"
PGUSER="crsoq_user"
PGPASS="crsoq_pass"
PGDB="crsoq_test"

# Crea un nuevo usuario
echo "Creating user: $PGUSER..."
psql -U postgres -c "CREATE USER $PGUSER WITH ENCRYPTED PASSWORD '$PGPASS'";

# createuser -U postgres $PGUSER; 
# psql -U postgres -c "ALTER USER $PGUSER WITH ENCRYPTED PASSWORD '$PGPASS'";

echo "Configuring database: $PGDB..."
dropdb -U postgres --if-exists $PGDB;
createdb -U postgres $PGDB;

psql -U postgres -c "GRANT ALL PRIVILEGES ON DATABASE $PGDB TO $PGUSER";
# Ejecuta las sql del archivo 'database.sql' sobre la db 'crsoq_db'
# psql -U $PGUSER $PGDB < ./app/bin/database.sql
psql -U postgres $PGDB < ./app/bin/database.sql

#echo "$PGDB configured..."


####################
# PGPORT=5432
# PGHOST="my.database.domain.com"
#PGUSER="postgres"
#PGDB="mydb"
#createdb -h $PGHOST -p $PGPORT -U $PGUSER $PGDB
