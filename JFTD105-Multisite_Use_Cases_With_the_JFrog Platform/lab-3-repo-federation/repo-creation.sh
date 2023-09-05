sh cleanup.sh


curl --location --request PUT 'https://soleng.jfrog.io/artifactory/api/repositories/jftd105lab3-mvn-dev-local' \
-H "Content-Type: application/json" \
--header 'Authorization: Bearer eyJ2ZXIiOiIyIiwidHlwIjoiSldUIiwiYWxnIjoiUlMyNTYiLCJraWQiOiJsYkpadzNJUU13WXBBSWNRa01RRjN0dlA2Yml5M3dWcXdrQ0txUkxLaXhRIn0.eyJzdWIiOiJqZmFjQDAxZTlycTMza3ljMHQxMWtwangybmcwemo1L3VzZXJzL2FkbWluIiwic2NwIjoiYXBwbGllZC1wZXJtaXNzaW9ucy9hZG1pbiIsImF1ZCI6IipAKiIsImlzcyI6ImpmZmVAMDAwIiwiaWF0IjoxNjkzMzU2MjgzLCJqdGkiOiIzM2ZkNjJiZS01YmZiLTQyNTctYmQwOC0zZDg1MTVlYTcyNDAifQ.JYMhsLr1h6ecc3P0rG9Ca_-ITNJdBKeeMKnA2eS8wr8w_fKFKstcOkz1DJpE3UJr6SyegnLLRjNunPYpoekyVhj781u2VqtGcG6xXqJTT9vpN5B6adjzmx4e9DXXIA17ZmxCNhzCQrNJiQk_x6NGRNVjbu_SV1CA0pJRoIViayto_U1TRKRBxSmnA8LFpXJ36dLU9DMJ9gQhoYikMo238ZnVK44pl9nb9xu4A2tHxJEBG21H22nRo7e6DhCJXQR5G5tbSwq3Oy0J_a9urMXsa3O9ZlJCQe7Ajwnk25UcNuNr4lsgyuYJ0LB8Q9wYw7Y0N9oVMJYalZ07iGaSRWNc3Q' \
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

