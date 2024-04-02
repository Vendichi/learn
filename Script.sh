#! /bin/bash

echo "Tag:"
read Tag
echo "Source:"
read Source

docker build -t vendichi $Source
wait -n
docker tag vendichi 192.168.40.197:5000/vendichi:$Tag
wait -n
docker push 192.168.40.197:5000/vendichi:$Tag

echo "Done"

exit

./script.sh
