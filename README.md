# docker-gatsbyjs

Docker file for use with @gatsbyjs

```
docker run -it --rm -v $(pwd):/srv -w="/srv" -p="80:80" 6e6a/docker-gatsbyjs new yoursite
```

```
docker run -it --rm -v $(pwd):/srv -w="/srv" -p="80:80" 6e6a/docker-gatsbyjs develop
```
