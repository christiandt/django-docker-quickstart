default:
	$(MAKE) install

install:
	./setup.sh
	sudo chown -R $USER .

run:
	docker-compose up

superuser:
	docker-compose run web python manage.py makemigrations
	docker-compose run web python manage.py migrate
	docker-compose run web python manage.py createsuperuser
