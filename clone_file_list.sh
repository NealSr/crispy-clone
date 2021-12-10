if [ -z "$1" ]
  then
    echo "Usage: sh clone_file_list.sh host_name user_name repo_file"
    exit 1
fi

for line in `cat $3`; do
  git clone git@$1:$2/$line.git
done