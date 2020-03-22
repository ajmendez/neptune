build:
	docker build -t ajmendez/neptune:latest -t ajmendez/neptune:0.0.0 -t neptune .

login:
	docker login

push:
	docker push ajmendez/neptune:latest

run:
	docker run -it --rm \
		--gpus all \
		--name neptune \
		-p 8888:8888 \
		-v /home/ajmendez/notebooks/:/app \
		neptune \
		jupyter notebook \
			--ip=0.0.0.0
