if [[ $# -eq 0 ]] ; then
    echo 'Pass the student number, for example 00 or 32.'
    exit 1
fi
jf c use swampup

sh create_local_repos.sh $1

# switch to SUP016-edge config
jf c use swampupedge

# creating repos on edge nodes
sh create_local_repos_for_edge.sh $1

# switch back to MAIN JPD
jf c use swampup