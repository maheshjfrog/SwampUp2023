# passing student number will be prefixed in the repo name
if [[ $# -eq 0 ]] ; then
    echo 'Pass the student number, for example 00 or 32.'
    exit 1
fi

#Invoke the push replication
sh lab-1-push-replication-rescue.sh $1
sh lab-1-pull-replication-rescue.sh $1