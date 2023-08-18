## Laravel Docker Example

This simple way to dockerize Laravel app without Laravel sail. This image you can use this to put on your server or in Kubernetes.

### Inside container we place

- nginx 
- php-fpm
- supervisor 

**!At this moment docker doesn't contain NPM packages manager.!**

**Build**

`docker build -t example/laravel-docker .`

**Run**

`docker run -p 80:80 example/laravel-docker`
