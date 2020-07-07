

### Use Case2: Send the push notification messages to all registered mobile phone devices.
- In case running the following script, then push notificaitons are sent to all the registered mobile phones.

    ```bash
    #!/bin/bash -eu
    
    icfn="ibmcloud fn"
    text="Your risk status becomes form ACCEPTABLE to HIGH.\nYou should sanitize your hands."
    title="Risk status Chnaged."
    
    $icfn namespace target risk-notifier
    
    $icfn action invoke push-notifications/send-message --blocking --result \
        --param messageText "$text" \
        --param apnstitle "$title"
    ```