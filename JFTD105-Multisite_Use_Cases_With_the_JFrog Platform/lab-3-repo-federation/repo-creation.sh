sh cleanup.sh


curl --location --request PUT 'https://soleng.jfrog.io/artifactory/api/repositories/jftd105lab3-mvn-dev-local' \
-H "Content-Type: application/json" \
--header 'Authorization: Bearer <TOKEN>' \
--data '{
        "key": "jftd105lab3-mvn-dev-local",
        "rclass": "federated",
        "packageType": "maven",
        "members": [
        {
        "url": "https://soleng.jfrog.io/artifactory/jftd105lab3-mvn-dev-local",
        "enabled": true
        },
        {
        "url": "https://solengedge.jfrog.io/artifactory/jftd105lab3-mvn-dev-local",
        "enabled": true
        },
        {
        "url": "https://sup111epsum01.jfrog.io/artifactory/jftd105lab3-mvn-dev-local",
        "enabled": true
        }
        ]
    }'

