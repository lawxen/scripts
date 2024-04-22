db="gyproc_eshop_dev1_dev"
password="password"
current_time=$(date "+%Y%m%d%H%M%S")
container="mariadb"
docker exec ${container} mariadb-dump -uroot -p${password} ${db} > "/root/sql/${db}_${current_time}.sql"
gzip /root/sql/${db}_${current_time}.sql

