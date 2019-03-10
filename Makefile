default:
	$(MAKE) install

install:
	./setup.sh
	sudo chown -R $USER .

run:
	docker-compose up
