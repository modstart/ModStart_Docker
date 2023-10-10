[program:Template]
process_name=%(program_name)s_%(process_num)02d
command=php /data/website/modstart/artisan queue:listen database --queue=default --sleep=5 --memory=4096 --tries=1 --timeout=86400
autostart=true
autorestart=true
user=www-data
numprocs=1
startsecs = 0
