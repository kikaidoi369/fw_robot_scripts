*** Settings ***
Resource       ../resources/config.robot
Test Template    Fastwork Login Negative Template
Test Teardown    Close Application

*** Test Cases ***       UDID           USERNAME                     PASSWORD             ERROR_MESSAGE
Fastwork Negative 1      329aa151       phonkornkrit@gmail.com       wrongpassw0rd        เข้าสู่ระบบไม่สำเร็จ กรุณาลองใหม่อีกครั้งค่ะ
Fastwork Negative 2      329aa151       ${EMPTY}                     ${EMPTY}             มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Negative 3      329aa151       phonkornkrit@gmail.com       ${EMPTY}             มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Negative 4      329aa151       ${EMPTY}                     wrongpassw0rd        Incorrect Email, Phone number or Password.
Fastwork Negative 5      329aa151       0864536156                   ${EMPTY}             มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Negative 6      329aa151       ${EMPTY}                     abc                  มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Negative 7      329aa151       +66864536156                 ${EMPTY}             มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Negative 8      329aa151       1=1                          1=1                  มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ

# Fastwork Login Negative
#      ${device}=    Get Mobile Properties  329aa151
#      Open Fastwork   ${device}
#      Verify Main Page
#           Click Login Link
#      Verify Login Page
#           Input Username EditText    
#           Input Password EditText    wrongpassw0rd
#           Click Login Button
#      Verify Error Popup

*** Keywords ***
Fastwork Login Negative Template
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