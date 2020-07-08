build:
	docker build --build-arg rebuild=$$RANDOM --tag rayanah/office-service .

run:
	docker run -it --rm --name office-service -p 8084:80 -d rayanah/office-service 

debug:
	docker exec -it office-service sh

logs:
	docker logs office-service

follow:
	docker logs -f office-service

stop:
	docker stop office-service

clean:
	docker rm office-service

