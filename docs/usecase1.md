
### Use Case 2: Send the push notification message to the indivisual mobile phone by specifying the device ID.

- In case runnning the following script, then the push notifications is sent to the specfied mobile.

    ```bash
    #!/bin/bash -eu
    
    icfn="ibmcloud fn"
    text="Your risk status becomes form ACCEPTABLE to HIGH.\nYou should sanitize your hands."
    title="Risk status Chnaged."
    targetDevices='["MODIFY_HERE"]'
    
    $icfn namespace target risk-notifier
    
    $icfn action invoke push-notifications/send-message --blocking --result \
        --param messageText "$text" \
        --param apnstitle "$title" \
        --param targetDeviceIds "$targetDevices" \
    
    ```

- You can identify the device ID by running the following script.

    ```bash
    #!/bin/bash -eu
    APP_GUID="<MODIFY_HERE>"
    
    ## IAM Access Token
    curl -sk -X POST --header "Content-Type: application/x-www-form-urlencoded" \
         --header "Accept: application/json" --data-urlencode "grant_type=urn:ibm:params:oauth:grant-type:apikey" \
         --data-urlencode "response_type=cloud_iam" \
         --data-urlencode "apikey=<MODIFY_HERE>" "https://iam.cloud.ibm.com/identity/token" > token.json
    
    ACCESS_TOKEN=`cat token.json | jq -r '.access_token'`
    #echo $ACCESS_TOKEN
    
    ## Get Devices
    function getDevices() {
        curl -s --request GET \
             --url "https://jp-tok.imfpush.cloud.ibm.com/imfpush/v1/apps/$APP_GUID/devices?expand=true" \
             --header 'accept: application/json' \
             --header "Authorization: $ACCESS_TOKEN" | jq '.'
    }
        
    getDevices
    
    ```
    
- Reference
    - [IBM Cloud Push Notifications Swagger](https://jp-tok.imfpush.cloud.ibm.com/imfpush/)
    - [IBM Cloud Push Notifications API Manual](https://cloud.ibm.com/apidocs/push-notifications)