.PHONEY: trusty vivid

trusty:
	docker build -t trusty -f Dockerfile.trusty .
	docker run -v "${PWD}":/docker --rm trusty -c "cp /tmp/trusty.tar.gz /docker"
	docker build -t brimstone/ubuntu:14.04 -f Dockerfile.trusty.scratch .
	rm -f trusty.tar.gz
	docker rmi trusty

vivid:
	docker build -t vivid -f Dockerfile.vivid .
	docker run -v "${PWD}":/docker --rm vivid -c "cp /tmp/vivid.tar.gz /docker"
	docker build -t brimstone/ubuntu:15.04 -f Dockerfile.vivid.scratch .
	rm -f vivid.tar.gz
	docker rmi vivid
