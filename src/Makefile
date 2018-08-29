NAME   := imylomylo/jl777-komodo-dev
TAG    := $$(curl -s https://api.github.com/repos/jl777/komodo/git/refs/heads/dev | jq -r '.object.sha')
IMG    := ${NAME}:${TAG}
LATEST := ${NAME}:latest

build:
	docker build --no-cache -t ${IMG} .
	docker tag ${IMG} ${LATEST}

push:
	docker push ${NAME}

login:
	docker log -u ${DOCKER_USER} -p ${DOCKER_PASS}

run:
	docker run -it -e LOCAL_USER_ID=1000 --mount src=${PWD}/../node,target=/home/user/.komodo,type=bind --mount src=/home/${USER}/.zcash-params,target=/home/user/.zcash-params,type=bind ${NAME}
#	docker run -it -e LOCAL_USER_ID=1000 --mount src=${PWD}/../node,target=/root/.komodo,type=bind --mount src=/home/${USER}/.zcash-params,target=/root/.zcash-params,type=bind ${NAME}

