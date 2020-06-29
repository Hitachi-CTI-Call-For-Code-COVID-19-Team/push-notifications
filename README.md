## Setup

### Reference

- Set up with the following URL as a reference.
    https://cloud.ibm.com/docs/solution-tutorials?topic=solution-tutorials-ios-mobile-push-analytics

### Advance Preparation
- Sign up for ADEP(Apple Developer Enterprise Program)
- Install Xcode
### IBM Cloud Portal : Building Mobile Apps from the Swift Starter Kit in the IBM Cloud app development dashboard.

<img src="img/image-20200629230715320.png" alt="image-20200629230715320" style="zoom:50%;" />

<img src="img/image-20200629231004317.png" alt="image-20200629231004317" style="zoom:50%;" />

- Download the code. Setting up the client SDK

    ```
    $ sudo gem install cocoapods --pre
    $ unzip MobileAppwithPushNotificationsC4CCOVID19-Swift.zip
    $ cd MobileAppwithPushNotificationsC4CCOVID19-Swift
    $ pod install
    ```

### Apple Developer Portal:  Get APNs credentials and configure the Push Notifications service instance.

- Register App ID　

    　<img src="img/image-20200629231113624.png" alt="image-20200629231113624" style="zoom:50%;" />

    - If you are in the Developer role, the registration button for the App ID doesn't appear. The Account Holder role is required.

    <img src="img/image-20200629231240015.png" alt="image-20200629231240015" style="zoom:50%;" />

    <img src="/Users/kwata/memo/C4C/PushNotifications/image-20200629203244344.png" alt="image-20200629203244344" style="zoom:50%;" />

    - Specify Push Notifications for Capability.

        <img src="img/image-20200629205721913.png" alt="image-20200629205721913" style="zoom:50%;" />

    <img src="img/image-20200629205938015.png" alt="image-20200629205938015" style="zoom:50%;" />

### Developper Client PC: Creating APNs SSL Certificates (one for development and one for distribution)

- Create Certificate Signing Request (CSR) in case your client is MacOSX

    - Launch Keychain Access in /Applications/Utilities.
    - Select Key Chain Access > Certificate Assistant > Request Certificate from Certificate Authority.
    - In the Certificate Assistant dialog, enter your email address in the User email address field.
    - Enter the name of the key in the "Common Name" field (e.g. Gita Kumar Dev Key).
    - Leave the "CA's email address" field blank.
    - Select 'Save to Disk' and click 'Continue'.

    <img src="img/image-20200629211355873.png" alt="image-20200629211355873" style="zoom:50%;" />

- Reference

    - https://help.apple.com/developer-account/#/devbfa00fef7

### Apple Developer Portal: Create a client SSL certificate

<img src="img/image-20200629212236812.png" alt="image-20200629212236812" style="zoom:50%;" />

<img src="img/image-20200629212302767.png" alt="image-20200629212302767" style="zoom:50%;" />

- Upload the CSR file

    <img src="img/image-20200629212409336.png" alt="image-20200629212409336" style="zoom:50%;" />

- Download the client certificate (.cer file)

    <img src="img/image-20200629212516077.png" alt="image-20200629212516077" style="zoom:50%;" />

### Developer Client PC:  Create the Personal Information Exchange Format file.

- Import the client certificate (.cer file) and export in Personal Information Exchange Format (.p12 format) by Keychain Access.app on MacOSX
- Remember the password of .p12 format file.

<img src="img/image-20200629213047182.png" alt="image-20200629213047182" style="zoom:50%;" />

<img src="img/image-20200629213700522.png" alt="image-20200629213700522" style="zoom:50%;" />

<img src="img/image-20200629213736989.png" alt="image-20200629213736989" style="zoom:50%;" />

<img src="img/image-20200629213833878.png" alt="image-20200629213833878" style="zoom:50%;" />

<img src="img/image-20200629213905362.png" alt="image-20200629213905362" style="zoom:50%;" />

<img src="img/image-20200629213948905.png" alt="image-20200629213948905" style="zoom:50%;" />

<img src="img/image-20200629214020206.png" alt="image-20200629214020206" style="zoom:50%;" />

### IBM Cloud Portal: Configuration of Push Notifications Service Instance

<img src="img/image-20200629220934505.png" alt="image-20200629220934505" style="zoom:50%;" />

<img src="img/image-20200629221039444.png" alt="image-20200629221039444" style="zoom:50%;" />

<img src="img/image-20200629221122178.png" alt="image-20200629221122178" style="zoom:50%;" />

<img src="img/image-20200629230509353.png" alt="image-20200629230509353" style="zoom:50%;" />

<img src="img/image-20200629230324447.png" alt="image-20200629230324447" style="zoom:50%;" />

