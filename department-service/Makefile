build:
	docker build --build-arg rebuild=$$RANDOM --tag rayanah/department-service .

run:
	docker run -it --rm --name department-server -p 8083:80 -d rayanah/department-service 

debug:
	docker exec -it department-service sh

logs:
	docker logs department-service

followu:
	docker logs -f department-service

stop:
	docker stop department-service

clean:
	docker rm department-service