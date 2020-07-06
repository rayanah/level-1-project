build:
	docker build --build-arg rebuild=$$RANDOM --tag rayanah/office-server .

run:
	docker run -it --rm --name office-server -p 8084:80 -d rayanah/office-server 

debug:
	docker exec -it office-server sh

logs:
	docker logs office-server

follow:
	docker logs -f office-server

stop:
	docker stop office-service

clean:
	docker rm office-server

