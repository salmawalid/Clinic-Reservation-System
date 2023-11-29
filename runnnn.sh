#!/bin/bash

docker build -t backend -f backend/Dockerfile ./backend

docker run -d -p 5000:5000 backend

docker build -t database -f database/Dockerfile ./database

docker run -d -p 3306:3306 database

docker build -t frontend -f my-frontend-app/Dockerfile ./my-frontend-app

docker run -d -p 3000:3000 frontend


docker run -d -p 6000:5000 backend1:1
docker build -t .

