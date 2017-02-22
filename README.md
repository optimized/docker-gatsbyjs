# docker-gatsbyjs

Docker file for use with @gatsbyjs

1. Create the folder which gonna host your site

    ```
    docker run -it --rm -v $(pwd):/srv -w="/srv" optimized/docker-gatsbyjs new <yoursite>
    ```

    Also, If you want to use one of the [Gatsby Starters](https://github.com/gatsbyjs/gatsby#gatsby-starters) add it at the end

    ```
    docker run -it --rm -v $(pwd):/srv -w="/srv" optimized/docker-gatsbyjs new <yoursite> https://github.com/gatsbyjs/gatsby-starter-blog
    ```

2. Start the develop process inside yoursite folder

    ```
    cd <yoursite>
    docker run -it --rm -v $(pwd):/srv -w="/srv" -p="80:8000" optimized/docker-gatsbyjs develop
    ```

3. Build your site

    ```
    docker run -it --rm -v $(pwd):/srv -w="/srv" optimized/docker-gatsbyjs build
    ```

Notice: `node_modules` will be rebuilt if the folder doesn't exist or if you run `build`
