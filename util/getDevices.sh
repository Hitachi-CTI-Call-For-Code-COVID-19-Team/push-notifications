#!/bin/bash -eu
APP_GUID="5c55f34e-5157-4cc6-a2b9-ef9f683822ab"

## Reference
# Swagger
# https://jp-tok.imfpush.cloud.ibm.com/imfpush/
#
# API manual
# https://cloud.ibm.com/apidocs/push-notifications

## IAM Access Token
#echo <<END
curl -sk -X POST --header "Content-Type: application/x-www-form-urlencoded" \
     --header "Accept: application/json" --data-urlencode "grant_type=urn:ibm:params:oauth:grant-type:apikey" \
     --data-urlencode "response_type=cloud_iam" \
     --data-urlencode "apikey=sllcQNcGDCWzwRrnnVlCRbJK8S_Eyh8XDd7x_8nWqDr-" "https://iam.cloud.ibm.com/identity/token" > token.json
#END

ACCESS_TOKEN=`cat token.json | jq -r '.access_token'`
CLIENT_SECRET="e930184e-2fd1-4687-9711-0a6f7f9a292e"

#echo $ACCESS_TOKEN

## Get Devices
function getDevices() {
    curl -s --request GET \
         --url "https://jp-tok.imfpush.cloud.ibm.com/imfpush/v1/apps/$APP_GUID/devices?expand=true" \
         --header 'accept: application/json' \
         --header "Authorization: $ACCESS_TOKEN" | jq '.'
}


## Delete Devices
function deleteDevices() {
    for i in `
    curl -s --request GET \
         --url "https://jp-tok.imfpush.cloud.ibm.com/imfpush/v1/apps/$APP_GUID/devices?expand=true" \
         --header 'accept: application/json' \
         --header "Authorization: $ACCESS_TOKEN" | jq '.devices[].deviceId' | xargs echo`
     do
         echo $i
         read KEY
         if [ "$KEY" = "y" ]; then
    
    curl -s --request DELETE \
         --url "https://jp-tok.imfpush.cloud.ibm.com/imfpush/v1/apps/$APP_GUID/devices/$i" \
         --header 'accept: application/json' \
         --header "clientSecret: $CLIENT_SECRET"
         #--header "Authorization: $ACCESS_TOKEN"
         fi
     done
}

getDevices

#deleteDevices
