*** Settings ***
Library     AppiumLibrary 
Library     String
Library     Collections
Library     DateTime
Library     adbLibrary.py

*** Variables ***
${signInPage_title}    //android.widget.TextView[@text="เข้าสู่ระบบ Fastwork" or @content-desc="เข้าสู่ระบบ Fastwork"]
${signInPage_signInWithFacebook_button}     //android.widget.TextView[@text="เข้าสู่ระบบด้วย Facebook" or content-desc="เข้าสู่ระบบด้วย Facebook"]
${signInPage_signInWithGoogle_button}     //android.widget.TextView[@text="เข้าสู่ระบบด้วย Google" or content-desc="เข้าสู่ระบบด้วย Google"]
${signInPage_username_editText}    //android.widget.EditText[contains(@text,"ใส่อีเมล์หรือเบอร์โทรศัพท์ของคุณ") or contains(@content-desc,"ใส่อีเมล์หรือเบอร์โทรศัพท์ของคุณ")]
${signInPage_password_editText}    //android.widget.EditText[@password="true"]
${signInPage_signIn_button}     //android.view.ViewGroup/android.widget.TextView[@text="เข้าสู่ระบบ" or @content-desc="เข้าสู่ระบบ"]
${signInPage_forgetPassword_link}    //android.widget.TextView[@text="ลืมรหัสผ่าน" or @content-desc="ลืมรหัสผ่าน"]
${signInPage_error_popup}     //android.widget.TextView[@resource-id="android:id/alertTitle"]

*** Keywords ***
Login Click SignIn with Facebook Button
    Wait Until Element Is Visible   ${signInPage_signInWithFacebook_button}
    Click Element   ${signInPage_signInWithFacebook_button}

Login Input Username EditText
    [Arguments]     ${USERNAME}=${EMPTY}
    Wait Until Element Is Visible   ${signInPage_username_editText}
    Input Text   ${signInPage_username_editText}    ${USERNAME}
    Click Element     //*[@text="หรือ" or @content-desc="หรือ"]

Login Input Password EditText
    [Arguments]     ${PASSWORD}=${EMPTY}
    Wait Until Element Is Visible   ${signInPage_password_editText}
    Input Password   ${signInPage_password_editText}    ${PASSWORD}
    Click Element     //*[@text="หรือ" or @content-desc="หรือ"]

Login Click Login Button
    Wait Until Element Is Visible   ${signInPage_signIn_button}
    Click Element     ${signInPage_signIn_button}
    
Login Verify Login Page
    Wait Until Element Is Visible   ${signInPage_title}                         timeout=10s
    Capture Screenshot     01_login_page
    Wait Until Element Is Visible   ${signInPage_signInWithFacebook_button}     timeout=10s
    Wait Until Element Is Visible   ${signInPage_signInWithGoogle_button}       timeout=10s
    Wait Until Element Is Visible   ${signInPage_username_editText}             timeout=10s
    Wait Until Element Is Visible   ${signInPage_password_editText}             timeout=10s
    Wait Until Element Is Visible   ${signInPage_signIn_button}                 timeout=10s

Login Verify Error Popup
    [Arguments]     ${ERROR_MESSAGE}
    Wait Until Element Is Visible   ${signInPage_error_popup}       timeout=10s
    Capture Screenshot     01_login_page_errorPopup
    ${actual_error_message}=    Get Text    ${signInPage_error_popup}
    Run Keyword Unless   "${ERROR_MESSAGE}" in "${actual_error_message}"    Fail    msg=Expected message does not contain in Actual Message\nEXPECTED: ${ERROR_MESSAGE}\nACTUAL: ${actual_error_message}
    Log     Expected Message contains in Actual Message\nEXPECTED: ${ERROR_MESSAGE}\nACTUAL: ${actual_error_message}