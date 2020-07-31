
### How to create the action of IBM Cloud Functions, whitch can send the push notifications

- Setup to install the IBM Push Notifications package into the Cloudfunctions namespace.

```bash
$ git clone https://github.com/ibm-functions/package-push-notifications.git
$ ibmcloud fn property set --namespace risk-calculation-notification
ok: whisk namespace set to risk-notifier
$ cd package-push-notifications/runtimes/nodejs/
$ ibmcloud fn  deploy -m manifest.yaml
Success: Deployment completed successfully.
$ ibmcloud fn package list packages
/96e4911c-15bf-4779-aaaf-cf257c10caf2/push-notifications               private
$ ibmcloud fn service bind imfpush push-notifications
Credentials 'f61d5d98-f1e6-4feb-90ff-81c0620b6171' from 'imfpush' service instance 'mobile-app-with-push-push-1590413402291' bound to 'push-notifications'.
$ ibmcloud fn package get push-notifications parameters
ok: got package push-notifications, displaying field parameters
[
    {
        "key": "__bx_creds",
        "value": {
            "imfpush": {
                "apikey": ".......................",
                "appGuid": "...........................",
                "clientSecret": "...........................",
                "credentials": "............................",
                "iam_apikey_description": ".......................",
                "iam_apikey_name": ".....................",
                "iam_role_crn": "crn:v1:bluemix:public:iam::::serviceRole:Writer",
                "iam_serviceid_crn": "crn:v1:bluemix:public:iam-identity::a/46e87b48fab2475dafb9c00a07b2d50f::serviceid:ServiceId-6636393a-af1a-49af-91ca-2e581fa7b1a9",
                "instance": "mobile-app-with-push-push-1590413402291",
                "plan": "LITE",
                "url": "https://jp-tok.imfpush.cloud.ibm.com/imfpush/v1/apps/5c55f34e-5157-4cc6-a2b9-ef9f683822ab"
            }
        }
    }
]
```

