NAME=docker-ns3-30

build: Dockerfile
	if [ -d "./ns-allinone-3.30" ]; then \
		echo "Dir exists, skip downloading .."; \
	else \
		wget http://www.nsnam.org/release/ns-allinone-3.30.tar.bz2; \
		tar -xf ./ns-allinone-3.30.tar.bz2; \
		rm ./ns-allinone-3.30.tar.bz2; \
	fi
	docker build -t $(NAME) .

run:
	docker run --rm -it -v `pwd`/ns-allinone-3.30/ns-3.30/src/:/usr/ns3/ns-3.30/src -e DISPLAY=docker.for.mac.host.internal:0 $(NAME)