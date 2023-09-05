if [[ $# -eq 0 ]] ; then
    echo 'Pass the student number, for example 00 or 32.'
    exit 1
fi
for row in $(cat ./delete-repos.json | jq -r '.[] | @base64'); do
    _jq() {
      echo ${row} | base64 --decode | jq -r ${1}
    }

    jf rt repo-delete $1-"$(_jq '.key')" --quiet
    jf c use swampupedge
    jf rt repo-delete $1-"$(_jq '.key')" --quiet
    jf c use swampup

done
