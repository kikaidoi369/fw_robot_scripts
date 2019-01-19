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
    [Arguments]     ${DEVICE}   ${NO_RESET}=${FALSE}
    Open Application    ${remote_url}   platformName=${DEVICE["OS"]}    platformVersion=${DEVICE["OS_VERSION"]}    udid=${DEVICE["UDID"]}    deviceName=${DEVICE["DEVICE_NAME"]}
        ...    appPackage=${fastwork_appPackage}    appActivity=${fastwork_appActivity}    noReset=${NO_RESET}
    Wait Until Element Is Visible   ${fastwork_page}    timeout=10s    error=ERROR: Fastwork Application is not opened

Click Register Button
    Wait Until Element Is Visible   ${mainPage_signUP_Button}
    Click Element   ${mainPage_signUP_Button}

Input Username EditText
    [Arguments]     ${USERNAME}=${EMPTY}
    Wait Until Element Is Visible   ${signInPage_username_editText}
    Input Text   ${signInPage_username_editText}    ${USERNAME}
    Click Element     //*[@text="หรือ" or @content-desc="หรือ"]

Input Password EditText
    [Arguments]     ${PASSWORD}=${EMPTY}
    Wait Until Element Is Visible   ${signInPage_password_editText}
    Input Password   ${signInPage_password_editText}    ${PASSWORD}
    Click Element     //*[@text="หรือ" or @content-desc="หรือ"]

Click Login Link
    Wait Until Element Is Visible   ${mainPage_signIn_link}
    Click Element   ${mainPage_signIn_link}

Verify Main Page
    Wait Until Element Is Visible   ${mainPage_title}               timeout=10s
    Capture Screenshot     00_main_page  
    Wait Until Element Is Visible   ${mainPage_signUP_button}       timeout=10s 
    Wait Until Element Is Visible   ${mainPage_signIn_link}         timeout=10s

Verify Home Page
    Wait Until Element Is Visible   ${navbar_home_button}   timeout=10s
    Capture Screenshot     03_home_page
    Wait Until Element Is Visible   ${navbar_category_button}
    Wait Until Element Is Visible   ${navbar_order_button}
    Wait Until Element Is Visible   ${navbar_notification_button}
    Wait Until Element Is Visible   ${navbar_profile_button}

Verify Profile
    [Arguments]     ${EXPECTED}
    Wait Until Element Is Visible   ${editProfilePage_title}
    Capture Screenshot     04_profile_page_editProfile
    Wait Until Element Is Visible   //*[contains(@text,"${EXPECTED}") or contains(@content-desc,"${EXPECTED}")]     timeout=10s     error=Expected value is not found\nExpected: ${EXPECTED}

Click Home Menu
    Wait Until Element Is Visible   ${navbar_home_button}
    Click Element     ${navbar_home_button}

Click Profile Menu
    Wait Until Element Is Visible   ${navbar_profile_button}
    Click Element     ${navbar_profile_button}
    Wait Until Element Is Visible   ${profilePage_title}

Click Edit Profile Menu
    Wait Until Element Is Visible   ${profilePage_editProfile_menu}
    Click Element     ${profilePage_editProfile_menu}
    Wait Until Element Is Visible   ${editProfilePage_title}

Generate Email and Password
    ${date_id}=     Get Date Time
    ${username}=    Generate Email      ${date_id}
    ${password}=    Generate Password   ${date_id}
    [Return]    ${username}  ${password}

Generate Email
    [Arguments]     ${DATETIME_ID}=${TRUE}
    ${date_id_gen}=     Get Date Time
    ${DATETIME_ID}=     Set Variable If     ${DATETIME_ID}     ${date_id_gen}
    [Return]    fast_auto${DATETIME_ID}@gmail.com

Generate Password
    [Arguments]     ${DATETIME_ID}=${TRUE}
    ${date_id_gen}=     Get Date Time
    ${DATETIME_ID}=     Set Variable If     ${DATETIME_ID}     ${date_id_gen}
    [Return]    fw${DATETIME_ID}


Capture Screenshot
    [Arguments]     ${PAGE}
    ${date_id}=     Get Date Time
    AppiumLibrary.Capture Page Screenshot     ${TEST NAME}_${PAGE}_${date_id}.png
