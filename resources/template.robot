*** Keywords ***
Fastwork Template Login Negative
    [Arguments]    ${UDID}   ${USERNAME}    ${PASSWORD}    ${ERROR_MESSAGE}
    ${device}=    Get Mobile Properties  ${UDID}
    Open Fastwork   ${device}
    Verify Main Page
        Click Login Link
    Verify Login Page
        Input Username EditText    ${USERNAME}
        Input Password EditText    ${PASSWORD}
        Click Login Button
    Verify Error Popup       ${ERROR_MESSAGE}

Fastwork Template Login Positive
    [Arguments]    ${UDID}   ${USERNAME}    ${PASSWORD}
    ${device}=    Get Mobile Properties  ${UDID}
    Open Fastwork   ${device}
    Verify Main Page
        Click Login Link
    Verify Login Page
        Input Username EditText    ${USERNAME}
        Input Password EditText    ${PASSWORD}
        Click Login Button
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
    Verify Login Page
        Click SignIn with Facebook Button
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
    Verify Register Page
        Click SignUp with Facebook Button
    Verify Home Page
        Click Profile Menu
        Click Edit Profile Menu
    Verify Profile      ${USERNAME}