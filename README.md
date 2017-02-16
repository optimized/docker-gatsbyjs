# docker-gatsbyjs

Docker file for use with @gatsbyjs

1. Create the folder which gonna host your site

    ```
    docker run -it --rm -v $(pwd):/srv -w="/srv" 6e6a/docker-gatsbyjs new <yoursite>
    ```

    Also, If you want to use one of the [Gatsby Starters](https://github.com/gatsbyjs/gatsby#gatsby-starters) add it at the end

    ```
    docker run -it --rm -v $(pwd):/srv -w="/srv" 6e6a/docker-gatsbyjs new <yoursite> https://github.com/wpioneer/gatsby-starter-lumen
    ```

2. Start the develop process inside yoursite folder

    ```
    cd <yoursite>
    docker run -it --rm -v $(pwd):/srv -w="/srv" -p="80:8000" 6e6a/docker-gatsbyjs develop
    ```

3. Build your site

    ```
    docker run -it --rm -v $(pwd):/srv -w="/srv" 6e6a/docker-gatsbyjs build
    ```
