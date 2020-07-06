# Push Notifications

## DEMO

## Features
- Send push notifications with the mobile push notification service, APNs. By this push notifications, it can be exchange the information in real time.

    - Notify event message to the indivisual by sending the push notification from backend service, called Risk Notifier, to the mobile phone app in order to control the indicator device of the shop officer.
    - Broadcast the message

- Mobile can receive the push notifications without running the mobile app, as log as it's installed.

## Requirements
### Development Environment
- IBM Cloud
    - Push Notifications
    - Cloud Functions
    - Cloudant
- Xcode v11
- Apple Enterprise Developer Program


### Production Environment
- Mobile Phone
    - iOS only (Android is out of scope)
    - Install the mobile app
    - register the mobile phone device ID to the APNs.


## Installation
- [How to setup and configure Push Notificatin related services](./docs/Installations.md)
- [How to create the action of IBM Cloud Functions](./)
- aa


## Usage
- The action of IBM Cloud Functions
    - Send the push notification message to the indivisual mobile phone device by specifying the device ID.
    - Send the push notification message to the 


## Author
 - Kentaro Watanabe

 
## Licence
- MIT License






