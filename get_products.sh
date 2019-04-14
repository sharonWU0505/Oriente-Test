#!/bin/bash

main_page=https://f2e-test.herokuapp.com
login_api=https://f2e-test.herokuapp.com/api/auth
product_api=https://f2e-test.herokuapp.com/api/products?limit=1000

echo "Please enter the username."
read username
echo "Please enter the password."
read -s password

csrf=$(curl -L $main_page -c cookie.txt | grep -o 'csrf:.*\"}' | cut -d ':' -f 2 | tr -d '"}')
curl -X POST -d "username=$username&password=$password&csrf=$csrf" $login_api -b cookie.txt -c cookie.txt
curl -X GET $product_api -b cookie.txt > products.json
