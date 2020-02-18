export ETL_PROD=/skedul/etl_open/siac-int-01/siacmigr
export KETTLE_HOME=$ETL_PROD

cd $ETL_PROD
/appserv/pentaho440/data-integration/kitchen.sh -file=$ETL_PROD/impacc/migrMovimentiGestione.kjb \
-param:db_siac=$1 \
-param:nome_ente=$2 \
-param:p_anno_esercizio=$3 \
-param:p_clean_all=$4 \
-param:p_ente=$5 \
-param:p_login_operazione=$6 \
-param:p_login_operazione_del=$7 \
-level=$8
