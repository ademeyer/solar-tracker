#!/bin/bash

CMD=$(python3 /usr/share/spa/sunposition.py -t $(date +%s))

CMD >> /usr/share/nginx/html/dish_position.txt 
