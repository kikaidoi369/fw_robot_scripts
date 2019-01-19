*** Settings ***
Library     AppiumLibrary 
Library     String
Library     Collections
Library     DateTime
Library     adbLibrary.py

*** Variables ***
${signUpPage_title}    //android.widget.TextView[@text="สมัครสมาชิก Fastwork" or @content-desc="สมัครสมาชิก Fastwork"] 
${signUpPage_signUpWithFacebook_button}     //android.widget.TextView[@text="สมัครด้วย Facebook" or content-desc="สมัครด้วย Facebook"]
${signUpPage_signUpWithGoogle_button}     //android.widget.TextView[@text="สมัครด้วย Google" or content-desc="สมัครด้วย Google"]
${signUpPage_username_title}        //*[@text="อีเมล์หรือเบอร์โทรศัพท์:" or @content-desc="อีเมล์หรือเบอร์โทรศัพท์:"]
${signUpPage_username_editText}    //android.widget.EditText[contains(@text,"ใส่อีเมล์หรือเบอร์โทรศัพท์ของคุณ") or contains(@content-desc,"ใส่อีเมล์หรือเบอร์โทรศัพท์ของคุณ")]
${signUpPage_continue_button}     //android.view.ViewGroup/android.widget.TextView[@text="ดำเนินการต่อ" or @content-desc="ดำเนินการต่อ"]
${signUpPage_password_title}    //*[@text="รหัสผ่าน:" or @content-desc="รหัสผ่าน:"]
${signUpPage_password_editText}     //android.widget.EditText[@text="ใส่รหัสผ่านที่ต้องการ..." or @content-desc="ใส่รหัสผ่านที่ต้องการ..."]
${signUpPage_repassword_title}      //*[@text="ยืนยันรหัสผ่าน:" or @content-desc="ยืนยันรหัสผ่าน:"]
${signUpPage_repassword_editText}   //android.widget.EditText[@text="ใส่รหัสผ่านที่ต้องการอีกครั้ง..." or @content-desc="ใส่รหัสผ่านที่ต้องการอีกครั้ง..."]
${signUpPage_error_popup}     //android.widget.TextView[@resource-id="android:id/alertTitle"]
${signUpPage_setPassword_button}    //*[@text="ตั้งรหัสผ่าน" or @content-desc="ตั้งรหัสผ่าน"]

*** Keywords ***
Register Verify Register Page
    Wait Until Element Is Visible   ${signUpPage_title}
    Wait Until Element Is Visible   ${signUpPage_signUpWithFacebook_button}
    Wait Until Element Is Visible   ${signUpPage_signUpWithGoogle_button}
    Wait Until Element Is Visible   ${signUpPage_username_editText}
    Wait Until Element Is Visible   ${signUpPage_continue_button}
    Capture Screenshot     02_register_page

Register Click SignUp with Facebook Button
    Wait Until Element Is Visible   ${signUpPage_signUpWithFacebook_button}
    Click Element   ${signUpPage_signUpWithFacebook_button}

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

Register Click Set Password Button
    Wait Until Element Is Visible   ${signUpPage_setPassword_button}
    Click Element   ${signUpPage_setPassword_button}

Register Verify Error Popup
    [Arguments]     ${ERROR_MESSAGE}
    Wait Until Element Is Visible   ${signUpPage_error_popup}       timeout=10s
    Capture Screenshot  02_register_page_errorPopup
    ${actual_error_message}=    Get Text    ${signUpPage_error_popup}
    Run Keyword Unless   "${ERROR_MESSAGE}" in "${actual_error_message}"    Fail    msg=Expected message does not contain in Actual Message\nEXPECTED: ${ERROR_MESSAGE}\nACTUAL: ${actual_error_message}
    Log     Expected Message contains in Actual Message\nEXPECTED: ${ERROR_MESSAGE}\nACTUAL: ${actual_error_message}
