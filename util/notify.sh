#!/bin/bash -eu

icfn="ibmcloud fn"
#text="Your risk status becomes form ACCEPTABLE to HIGH.\nYou should sanitize your hands."
text="Current Risk status is high. You should sanitize your hands."
#title="Current Risk: high"
#title="Current Risk: acceptable"
#title="Current Risk: low"
title="indicator: off"
targetDevices='["E9B0E15F-19D0-4721-A7E4-DB6C0B220FB4"]'
apnsType="SILENT"

$icfn namespace target risk-notifier

$icfn action invoke push-notifications/send-message --blocking --result \
    --param apnsType "$apnsType" \
    --param messageText "$text" \
    --param apnstitle "$title" \
    --param targetDeviceIds "$targetDevices" 
