NAME = fabriziopandini/loop
VERSION = 0.1

all: package

package:
	docker build --rm --build-arg HTTP_PROXY=$http_proxy --build-arg HTTPS_PROXY=$https_proxy --build-arg NO_PROXY=$no_proxy -t $(NAME):$(VERSION) .
    
tag: 
	docker tag $(NAME):$(VERSION) $(NAME):latest 
    
push: 
	@docker push $(NAME)
	
rmi: 
	docker rmi $(NAME):$(VERSION); \
	docker rmi $(NAME):latest 