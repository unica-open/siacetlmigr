export ETL_PROD=/skedul/etl_open/siac-int-01/siacmigr
export KETTLE_HOME=$ETL_PROD

cd $ETL_PROD
/appserv/pentaho440/data-integration/kitchen.sh -file=$ETL_PROD/capitolo/migrCapitolo.kjb \
-param:db_siac=$1 \
-param:nome_ente=$2 \
-param:p_anno_bilancio=$3 \
-param:p_data_elaborazione=$4 \
-param:p_ente=$5 \
-param:p_fase_bilancio=$6 \
-param:p_login_operazione=$7 \
-param:p_login_operazione_del=$8 \
-param:p_tipo_capitolo_e=$9 \
-param:p_tipo_capitolo_u=${10} \
-param:p_tipo_elab=${11} \
-level={$12}
