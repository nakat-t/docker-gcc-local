# Supported tags

* `latest`, `11`
* `10`
* `9`
* `8`
* `7`
* `6`
* `5`
* `4.9`
* `4.8`

# Introduction

A personal docker image for C/C++ builds with gcc and some software added.

# How to use this image

Mount the directory containing your source files on `/data` and run the container.

```
docker run -it --rm -v $PWD:/data nakatt/gcc:10 make
```
