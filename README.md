# docker-gatsbyjs

Docker file for use with @gatsbyjs

First, you need to create the folder which gonna host your site
```
docker run -it --rm -v $(pwd):/srv -w="/srv" 6e6a/docker-gatsbyjs new yoursite
```
Second, you start the develop process
```
docker run -it --rm -v $(pwd):/srv -w="/srv" -p="80:8000" 6e6a/docker-gatsbyjs develop
```
Third, and lastone you build your site
```
docker run -it --rm -v $(pwd):/srv -w="/srv" 6e6a/docker-gatsbyjs build
```
