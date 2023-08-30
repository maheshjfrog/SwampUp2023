

### Prerequisites
# LAB 0 - Configure JFrog CLI

# use cURL 

 1. Replace {SwampUp JPD host} with valid value
 2. Replace {SwampUp JPD Edge host} with valid value
 3. Replace {SwampUp Second JPD host} with valid value
 4. Copy and execute the below command in the terminal

curl --location --request PUT 'https://{SwampUp JPD host}.jfrog.io/artifactory/api/repositories/jftd105lab3usr<ID>-mvn-dev-local' \
-H "Content-Type: application/json" \
--header 'Authorization: Bearer <TOKEN>' \
--data '{
"key": "jftd105lab3-mvn-dev-local",
"rclass": "federated",
"packageType": "maven",
"members": [
{
"url": "https://{SwampUp JPD host}.jfrog.io/artifactory/jftd105lab3-mvn-dev-local",
"enabled": true
},
{
"url": "https://{SwampUp EDGE host}.jfrog.io/artifactory/jftd105lab3-mvn-dev-local",
"enabled": true
},
{
"url": "https://{SwampUp Second JPD host}.jfrog.io/artifactory/jftd105lab3-mvn-dev-local",
"enabled": true
}
]
}'