build:
	docker build --build-arg rebuild=$$RANDOM --tag rayanah/role-service .

run:
	docker run -it --rm --name role-service -p 8081:8081 -d rayanah/role-service 

debug:
	docker exec -it role-service sh

logs:
	docker logs role-service

followu:
	docker logs -f role-service

stop:
	docker stop role-service

clean:
	docker rm role-service
