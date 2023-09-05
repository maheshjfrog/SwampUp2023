for row in $(cat ./local-repos-for-edge.json | jq -r '.[] | @base64'); do
    _jq() {
      echo ${row} | base64 --decode | jq -r ${1}
    }

    jf rt repo-create template-local-rescue.json --vars "repo-name=$1-$(_jq '.key');package-type=$(_jq '.packageType');repo-type=$(_jq '.rclass');repo-layout=$(_jq '.repoLayoutRef');project-key=$(_jq '.projectKey');env=$(_jq '.environments');xray-enable=$(_jq '.xrayIndex')"
done