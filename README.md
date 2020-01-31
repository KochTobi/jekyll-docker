# jekyll-docker
This repository contains everything needed to launch a jekyll website locally on your machine.

## building your docker image
The docker image can be build using one of the following commands.

```bash
docker build -t <imagename> .
docker build -t <imagename> --build-arg jekyll_directory='<your existing directoy>' .
```
The first command builds an image with the empty [template files](default_jekyll).
The second command builds an image with a jekyll site you already created. Make sure that the provided folder contains a Gemfile!

## running your jekyll server
After your image was created you can run the server the following way:
```bash
docker run -it --rm --name <container_name> -p "<host port>:4000" <imagename[:tag]>
```

## example
```bash
docker build -t jekylldocker .
docker run -it --name myserverinstance -p "8080:4000" jekylldocker
```
You can then reach your site under [localhost:8080](http://localhost:8080)
