================= Laravel prequisite ===================
1. php 7+ installed on machine/ VM
2. php exstention : sudo apt-get install php-mbstring php-xml php-zip php-json php-bcmath php-gd
3. composer installed on machine

============== Install laravel project =================
1. git pull

## copy and modify .env file
2. cp .env.example .env
	## vi .env
	## modify DB_HOST, DB_USER, DB_NAME, DB_PASSWORD

## install laravel dependency
3. composer install

## generate key
4. php artisan key:generate  

## database setup
5. restore database from *.sql file 

or

## migrate database using php artisan
6. php artisan migrate:refresh

=============== Alibaba KMS Prequisite ================
1. python and pip instaled
2. install KMS SDK python
	pip install aliyun-python-sdk-kms
	
=============== Menggunakan Alibaba KMS ===============
1. move file kms-git.py to another directory path
2. modify file kms-git.py
	## vi kms-git.py
	## modify access_key, secret_key, region_id, and secret_name

3. run python script
	## python3 kms-git.py

