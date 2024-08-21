if [ -z "$1" ]
  then
    echo "Please provide a tag."
    exit
fi

docker build . -t zombie19x/demo-node-app:$1
