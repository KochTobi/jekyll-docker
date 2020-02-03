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
Alternatively, if you want to use a host directory:
```bash
docker run -it --rm --name <container_name> -p "4000:4000" -v $PWD:/home/jekyll/site <imagename[:tag]>
```
## example
```bash
docker build -t jekylldocker .
docker run -it --name myserverinstance -p "4000:4000" jekylldocker
```
You can then reach your site under [0.0.0.0:4000](http://0.0.0.0:4000) or use [localhost](http:0.0.0.0:4000) as an entrypoint.
