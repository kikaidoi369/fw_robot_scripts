*** Keywords ***
Fastwork Template Login with Email Negative
    [Arguments]    ${UDID}   ${USERNAME}    ${PASSWORD}    ${ERROR_MESSAGE}
    ${device}=    Get Mobile Properties  ${UDID}
    Open Fastwork   ${device}
    Verify Main Page
        Click Login Link
    Login Verify Login Page
        Login Input Username EditText    ${USERNAME}
        Login Input Password EditText    ${PASSWORD}
        Login Click Login Button
    Login Verify Error Popup       ${ERROR_MESSAGE}

Fastwork Template Login with Email Positive
    [Arguments]    ${UDID}   ${USERNAME}    ${PASSWORD}
    ${device}=    Get Mobile Properties  ${UDID}
    Open Fastwork   ${device}
    Verify Main Page
        Click Login Link
    Login Verify Login Page
        Login Input Username EditText    ${USERNAME}
        Login Input Password EditText    ${PASSWORD}
        Login Click Login Button
    Verify Home Page
        Click Profile Menu
        Click Edit Profile Menu
    Verify Profile      ${USERNAME}

Fastwork Template Login with Facebook
    [Arguments]    ${UDID}   ${USERNAME}
    ${device}=    Get Mobile Properties  ${UDID}
    Open Fastwork   ${device}
    Verify Main Page
        Click Login Link
    Login Verify Login Page
        Login Click SignIn with Facebook Button
    Verify Home Page
        Click Profile Menu
        Click Edit Profile Menu
    Verify Profile      ${USERNAME}

Fastwork Template Register with Facebook
    [Arguments]    ${UDID}   ${USERNAME}
    ${device}=    Get Mobile Properties  ${UDID}
    Open Fastwork   ${device}
    Verify Main Page
        Click Register Button
    Register Verify Register Page
        Register Click SignUp with Facebook Button
    Verify Home Page
        Click Profile Menu
        Click Edit Profile Menu
    Verify Profile      ${USERNAME}

Fastwork Template Register with Email Positive
    [Arguments]    ${UDID}
    ${device}=    Get Mobile Properties  ${UDID}
    ${username}    ${password}     Generate Email and Password
    Open Fastwork   ${device}
    Verify Main Page
        Click Register Button
    Register Verify Register Page
        Register Input Username EditText     ${username}
        Register Click Continue Button
        Register Input Password EditText     ${password}
        Register Input Re-Password EditText   ${password}
        Register Click Set Password Button
    Verify Home Page
        Click Profile Menu
        Click Edit Profile Menu
    Verify Profile      ${username}
    Close Application
    Fastwork Template Login With Email Positive    ${UDID}   ${username}    ${password}
    
Fastwork Template Register with Email Negative1
    [Arguments]    ${UDID}   ${USERNAME}    ${ERROR_MESSAGE}
    ${device}=    Get Mobile Properties  ${UDID}
    Open Fastwork   ${device}
    Verify Main Page
        Click Register Button
    Register Verify Register Page
        Register Input Username EditText     ${USERNAME}
        Register Click Continue Button
    Register Verify Error Popup  ${ERROR_MESSAGE}

Fastwork Template Register with Email Negative2
    [Arguments]    ${UDID}   ${PASSWORD}    ${RE_PASSWORD}    ${ERROR_MESSAGE}
    ${device}=    Get Mobile Properties  ${UDID}
    ${username}=    Generate Email
    Open Fastwork   ${device}
    Verify Main Page
        Click Register Button
    Register Verify Register Page
        Register Input Username EditText     ${username}
        Register Click Continue Button
        Register Input Password EditText     ${PASSWORD}
        Register Input Re-Password EditText   ${RE_PASSWORD}
        Register Click Set Password Button
    Register Verify Error Popup  ${ERROR_MESSAGE}

Fastwork Search and Verify Result
    [Arguments]    ${UDID}   ${USERNAME}    ${PASSWORD}     ${SEARCH_TOPIC}     ${FOUND_FLAG}
    ${device}=    Get Mobile Properties  ${UDID}
    Open Fastwork   ${device}
    Verify Main Page
        Click Login Link
    Login Verify Login Page
        Login Input Username EditText    ${USERNAME}
        Login Input Password EditText    ${PASSWORD}
        Login Click Login Button
    Verify Home Page
        Home Input Search Box EditText   ${SEARCH_TOPIC}
        Home Click Arrow Button
        Home Verify Search Result    ${SEARCH_TOPIC}    ${FOUND_FLAG}