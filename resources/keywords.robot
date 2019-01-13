*** Settings ***
Library     AppiumLibrary 

*** Keywords ***
Get Mobile Properties
    [Arguments]    ${UDID}
    ${device_name}=     Get Device Name   ${UDID}
    ${os_platform}=     Get OS Platform   ${UDID}
    ${android_version}=     Get Android Version   ${UDID}
    &{mobile_properties}=   Create Dictionary   DEVICE_NAME=${device_name}  OS=${os_platform}   OS_VERSION=${android_version}  UDID=${udid}
    [Return]    &{mobile_properties}

Open Fastwork 
    [Arguments]     ${DEVICE}
    Open Application    ${remote_url}   platformName=${DEVICE["OS"]}    platformVersion=${DEVICE["OS_VERSION"]}    udid=${DEVICE["UDID"]}    deviceName=${DEVICE["DEVICE_NAME"]}
        ...    appPackage=${fastwork_appPackage}    appActivity=${fastwork_appActivity}    noReset=${no_reset_status}
    Sleep   5s
    Wait Until Element Is Visible   ${fastwork_page}    timeout=10s    error=ERROR: Fastwork Application is not opened

Click Register Button
    Wait Until Element Is Visible   ${mainPage_signUP_Button}
    Click Element   ${mainPage_signUP_Button}

Click SignUp with Facebook Button
    Wait Until Element Is Visible   ${signUpPage_signUpWithFacebook_button}
    Click Element   ${signUpPage_signUpWithFacebook_button}

Click Username EditText
    Wait Until Element Is Visible   ${signUpPage_username_editText}
    Click Element   ${signUpPage_username_editText}

Verify Home Page
    Wait Until Element Is Visible   

# Click Login Button
#     Wait Until Element Is Visible   ${mainPage_signIn_Button}
#     Click Element   ${mainPage_signIn_Button}