#!/bin/bash

gnome-terminal --tab --title=consul.sh -- bash -c "cd ~ && consul agent -dev;exec bash"
gnome-terminal --tab --title=adservice.sh -- bash -c "cd ./adservice && go run main.go;exec bash"
gnome-terminal --tab --title=cartservice.sh -- bash -c "cd ./cartservice && go run main.go;exec bash"
gnome-terminal --tab --title=currencyservice.sh -- bash -c "cd ./currencyservice && go run main.go;exec bash"
gnome-terminal --tab --title=emailservice.sh -- bash -c "cd ./emailservice && go run main.go;exec bash"

gnome-terminal --tab --title=paymentservice.sh -- bash -c "cd ./paymentservice && go run main.go;exec bash"
gnome-terminal --tab --title=productcatalogservice.sh -- bash -c "cd ./productcatalogservice && go run main.go;exec bash"
gnome-terminal --tab --title=recommendationservice .sh -- bash -c "cd ./recommendationservice && go run main.go;exec bash"
gnome-terminal --tab --title=shippingservice.sh -- bash -c "cd ./shippingservice && go run main.go;exec bash"
gnome-terminal --tab --title=checkoutservice.sh -- bash -c "cd ./checkoutservice && go run main.go;exec bash"

gnome-terminal --tab --title=frontend.sh -- bash -c "cd ./frontend && go run main.go handler.go middleware.go rpc.go;exec bash"