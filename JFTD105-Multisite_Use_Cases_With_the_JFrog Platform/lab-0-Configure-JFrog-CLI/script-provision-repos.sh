
jf c use swampup

sh create_local_repos.sh

# switch to SUP016-edge config
jf c use swampupedge

# creating repos on edge nodes
sh create_local_repos_for_edge.sh

# switch back to MAIN JPD
jf c use swampup