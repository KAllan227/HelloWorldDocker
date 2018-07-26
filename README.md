# Hello World Application

### Dependencies
N/A

### How to download this image
Download the image via...
```
docker pull docker.conygre.com:5000/kimberlyallan
```

### How to use this image
Start an instance of the Hello World application via...
```
docker run -itd --name CONTAINERNAME -p EXTERNALPORT:80 docker.conygre.com:5000/kimberlyallan
```
... where **CONTAINERNAME** is your name for the container and **EXTERNALPORT** is the port you would like to expose for the application.

### Application User Manual
To view the "Hello World!" message, navigate to the following URL...
```
HOST:EXTERNALPORT/api/Hello
```
... where **HOST** is the host machine running the container and **EXTERNALPORT** is the port assigned in the previous section.
