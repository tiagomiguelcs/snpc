#!/bin/bash
docker rm -f snpc 
docker rmi -f snpc 
docker build -t snpc .
docker run -d --name snpc -p 5151:80 snpc
echo ""
echo "All done! You can now access the Web app at http://localhost:5151"
