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

Click SignIn with Facebook Button
    Wait Until Element Is Visible   ${signInPage_signInWithFacebook_button}
    Click Element   ${signInPage_signInWithFacebook_button}

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

Register Input Username EditText
    [Arguments]     ${USERNAME}
    Wait Until Element Is Visible   ${signUpPage_username_editText}
    Input Text   ${signUpPage_username_editText}    ${USERNAME}
    Click Element    ${signUpPage_username_title}
    
Register Input Password EditText
    [Arguments]     ${PASSWORD}=${EMPTY}
    Wait Until Element Is Visible   ${signUpPage_password_editText}
    Input Password   ${signUpPage_password_editText}    ${PASSWORD}
    Click Element    ${signUpPage_password_title}

Register Input Re-Password EditText
    [Arguments]     ${PASSWORD}=${EMPTY}
    Wait Until Element Is Visible   ${signUpPage_repassword_editText}
    Input Password   ${signUpPage_repassword_editText}    ${PASSWORD}
    Click Element    ${signUpPage_repassword_title}

Register Click Continue Button
    Wait Until Element Is Visible   ${signUpPage_continue_button}
    Click Element   ${signUpPage_continue_button}
    Wait Until Element Is Visible   ${signUpPage_repassword_editText}

Register Click Set Password Button
    Wait Until Element Is Visible   ${signUpPage_setPassword_button}
    Click Element   ${signUpPage_setPassword_button}

Click Login Link
    Wait Until Element Is Visible   ${mainPage_signIn_link}
    Click Element   ${mainPage_signIn_link}

Click Login Button
    Wait Until Element Is Visible   ${signInPage_signIn_button}
    Click Element     ${signInPage_signIn_button}
    
Verify Main Page
    Wait Until Element Is Visible   ${mainPage_title}               timeout=10s
    Wait Until Element Is Visible   ${mainPage_signUP_button}       timeout=10s 
    Wait Until Element Is Visible   ${mainPage_signIn_link}         timeout=10s
    AppiumLibrary.Capture Page Screenshot     00_main_page.png   

Verify Login Page
    Wait Until Element Is Visible   ${signInPage_title}                         timeout=10s
    Wait Until Element Is Visible   ${signInPage_signInWithFacebook_button}     timeout=10s
    Wait Until Element Is Visible   ${signInPage_signInWithGoogle_button}       timeout=10s
    Wait Until Element Is Visible   ${signInPage_username_editText}             timeout=10s
    Wait Until Element Is Visible   ${signInPage_password_editText}             timeout=10s
    Wait Until Element Is Visible   ${signInPage_signIn_button}                 timeout=10s
    AppiumLibrary.Capture Page Screenshot     01_login_page.png

Verify Register Page
    Wait Until Element Is Visible   ${signUpPage_title}
    Wait Until Element Is Visible   ${signUpPage_signUpWithFacebook_button}
    Wait Until Element Is Visible   ${signUpPage_signUpWithGoogle_button}
    Wait Until Element Is Visible   ${signUpPage_username_editText}
    Wait Until Element Is Visible   ${signUpPage_continue_button}
    AppiumLibrary.Capture Page Screenshot     02_register_page.png


Verify Error Popup
    [Arguments]     ${ERROR_MESSAGE}
    Wait Until Element Is Visible   ${signInPage_error_popup}       timeout=10s
    ${actual_error_message}=    Get Text    ${signInPage_error_popup}
    Should Be Equal As Strings      ${ERROR_MESSAGE}      ${actual_error_message}
    AppiumLibrary.Capture Page Screenshot     01_login_page_errorPopup.png

Register Verify Error Popup
    [Arguments]     ${ERROR_MESSAGE}
    Wait Until Element Is Visible   ${signUpPage_error_popup}       timeout=10s
    ${actual_error_message}=    Get Text    ${signUpPage_error_popup}
    Should Be Equal As Strings      ${ERROR_MESSAGE}      ${actual_error_message}
    AppiumLibrary.Capture Page Screenshot     02_register_page_errorPopup_${SUITE NAME}_${TEST NAME}.png

Verify Home Page
    Wait Until Element Is Visible   ${navbar_home_button}   timeout=10s
    Wait Until Element Is Visible   ${navbar_category_button}
    Wait Until Element Is Visible   ${navbar_order_button}
    Wait Until Element Is Visible   ${navbar_notification_button}
    Wait Until Element Is Visible   ${navbar_profile_button}
    AppiumLibrary.Capture Page Screenshot     03_home_page_.png

Verify Profile
    [Arguments]     ${EXPECTED}
    Wait Until Element Is Visible   ${editProfilePage_title}
    Wait Until Element Is Visible   //*[contains(@text,"${EXPECTED}") or contains(@content-desc,"${EXPECTED}")]     timeout=10s     error=Expected value is not found\nExpected: ${EXPECTED}
    AppiumLibrary.Capture Page Screenshot     04_profile_page_editProfile.png

Click Profile Menu
    Wait Until Element Is Visible   ${navbar_profile_button}
    Click Element     ${navbar_profile_button}
    Wait Until Element Is Visible   ${profilePage_title}

Click Edit Profile Menu
    Wait Until Element Is Visible   ${profilePage_editProfile_menu}
    Click Element     ${profilePage_editProfile_menu}
    Wait Until Element Is Visible   ${editProfilePage_title}
