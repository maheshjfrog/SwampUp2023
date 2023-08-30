sh cleanup.sh


curl --location --request PUT 'https://{SwampUp JPD host}/artifactory/api/repositories/jftd105lab3-mvn-dev-local' \
-H "Content-Type: application/json" \
--header 'Authorization: Bearer <TOKEN>' \
--data '{
        "key": "jftd105lab3-mvn-dev-local",
        "rclass": "federated",
        "packageType": "maven",
        "members": [
        {
        "url": "https://{SwampUp JPD host}/artifactory/jftd105lab3-mvn-dev-local",
        "enabled": true
        },
        {
        "url": "https://{SwampUp edge host}/artifactory/jftd105lab3-mvn-dev-local",
        "enabled": true
        },
        {
        "url": "https://{SwampUp Second JPD host}/artifactory/jftd105lab3-mvn-dev-local",
        "enabled": true
        }
        ]
    }'

