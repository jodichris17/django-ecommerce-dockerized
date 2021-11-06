docker-compose down
docker rm $(docker ps -a -q) # remove all containers
docker rmi -f django-ecommerce_ecom_app
docker rmi -f django-ecommerce_ecom_nginx
docker volume rm django-ecommerce_ecom_data
docker volume rm django-ecommerce_ecom_static
