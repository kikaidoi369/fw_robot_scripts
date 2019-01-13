*** Settings ***
Resource       ../resources/config.robot


*** Test Cases ***
Fastwork Register with Facebook
     ${device}=    Get Mobile Properties  329aa151
     Open Fastwork   ${device}
     Click Register Button
     Click SignUp with Facebook Button


# Fastwork Login
#      ${device}=    Get Mobile Properties  329aa151
#      Open Fastwork   ${device}
#      Click Login Button



