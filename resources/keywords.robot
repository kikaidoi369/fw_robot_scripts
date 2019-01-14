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
    Wait Until Element Is Visible   ${fastwork_page}    timeout=10s    error=ERROR: Fastwork Application is not opened

Click Register Button
    Wait Until Element Is Visible   ${mainPage_signUP_Button}
    Click Element   ${mainPage_signUP_Button}

Click SignUp with Facebook Button
    Wait Until Element Is Visible   ${signUpPage_signUpWithFacebook_button}
    Click Element   ${signUpPage_signUpWithFacebook_button}

Input Username EditText
    [Arguments]     ${USERNAME}=${EMPTY}
    Wait Until Element Is Visible   ${signUpPage_username_editText}
    Input Text   ${signInPage_username_editText}    ${USERNAME}
    Click Element     ${signInPage_signIn_button}
    Sleep   1s

Input Password EditText
    [Arguments]     ${PASSWORD}=${EMPTY}
    Wait Until Element Is Visible   ${signInPage_password_editText}
    Input Password   ${signInPage_password_editText}    ${PASSWORD}
    Click Element     ${signInPage_signIn_button}
    Sleep   1s

Click Login Link
    Wait Until Element Is Visible   ${mainPage_signIn_link}
    Click Element   ${mainPage_signIn_link}

Click Login Button
    Wait Until Element Is Visible   ${signInPage_signIn_button}
    Click Element     ${signInPage_signIn_button}
    # ${location}=    Get Element Location    ${signInPage_signIn_button}
    # Click Element At Coordinates   ${location["x"]}     ${location["y"]}

Verify Main Page
    Wait Until Element Is Visible   ${mainPage_title}               timeout=10s
    Wait Until Element Is Visible   ${mainPage_signUP_button}       timeout=10s 
    Wait Until Element Is Visible   ${mainPage_signIn_link}         timeout=10s
    AppiumLibrary.Capture Page Screenshot     00_main_page.png   

Verify Login Page
    Wait Until Element Is Visible   ${signInPage_title}                         timeout=10s
    Wait Until Element Is Visible   ${signInPage_signUpWithFacebook_button}     timeout=10s
    Wait Until Element Is Visible   ${signInPage_signUpWithGoogle_button}       timeout=10s
    Wait Until Element Is Visible   ${signInPage_username_editText}             timeout=10s
    Wait Until Element Is Visible   ${signInPage_password_editText}             timeout=10s
    Wait Until Element Is Visible   ${signInPage_signIn_button}                 timeout=10s
    AppiumLibrary.Capture Page Screenshot     01_login_page.png

Verify Error Popup
    [Arguments]     ${ERROR_MESSAGE}
    Wait Until Element Is Visible   ${signInPage_error_popup}       timeout=10s
    ${actual_error_message}=    Get Text    ${signInPage_error_popup}
    Should Be Equal As Strings      ${ERROR_MESSAGE}      ${actual_error_message}
    AppiumLibrary.Capture Page Screenshot     01_login_page_error_popup.png

