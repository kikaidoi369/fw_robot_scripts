*** Settings ***
Resource       ../resources/config.robot
Test Template    Fastwork Template Register with Email Negative
Test Teardown    Close Application

*** Test Cases ***       UDID           USERNAME                      PASSWORD       RE_PASSWORD          ERROR_MESSAGE
Fastwork Negative 1      329aa151       zicecenzor@gmail.com          wrongpassw0rd  ${EMPTY}             มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Negative 2      329aa151       zicecenzor@gmail.com          ${EMPTY}       wrongpassw0rd        มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Negative 3      329aa151       zicecenzor@gmail.com          ${EMPTY}       ${EMPTY}             มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Negative 4      329aa151       zicecenzor@gmail.com          wrongpassw0rd  passwordwrong        มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Negative 5      329aa151       0864536156                    ${EMPTY}       ${EMPTY}             มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Negative 6      329aa151       ${EMPTY}                      abc            abc                  มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Negative 7      329aa151       +66864536156                  ${EMPTY}       0                    มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Negative 8      329aa151       zicecenzor@gmail.com          1=1            1=1                  มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ


*** Keywords ***
Fastwork Template Register with Email Negative
    [Arguments]    ${UDID}   ${USERNAME}     ${PASSWORD}    ${RE_PASSWORD}    ${ERROR_MESSAGE}
    ${device}=    Get Mobile Properties  ${UDID}
    Open Fastwork   ${device}
    Verify Main Page
        Click Register Button
    Verify Register Page
        Register Input Username EditText     ${USERNAME}
        Register Click Continue Button
        Register Input Password EditText     ${PASSWORD}
        Register Input Re-Password EditText   ${RE_PASSWORD}
        Register Click Set Password Button
     Register Verify Error Popup  ${ERROR_MESSAGE}
