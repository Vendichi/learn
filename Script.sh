#! /bin/bash

echo "Tag:"
read Tag
echo "Source:"
read Source

docker build -t yohan $Source
wait -n
docker tag yohan 192.168.40.43:5000/yohan:$Tag
wait -n
docker push 192.168.40.197:5000/yohan:$Tag

echo "Done"

exit

./script.sh
