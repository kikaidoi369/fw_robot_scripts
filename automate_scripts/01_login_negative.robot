*** Settings ***
Resource       ../resources/config.robot
Test Template    Fastwork Template Login with Email Negative
Test Teardown    Close Application

*** Test Cases ***                                               UDID               USERNAME                                PASSWORD                 ERROR_MESSAGE
Fastwork Login Negative Email Wrong Password                     329aa151           fast_auto20190119114452@gmail.com       wrongpassw0rd            เข้าสู่ระบบไม่สำเร็จ กรุณาลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Email Empty Password                     329aa151           fast_auto20190119114452@gmail.com       ${EMPTY}                 มีข้อมูลไม่ถูกต้อง 
Fastwork Login Negative Email Short Password                     329aa151           fast_auto20190119114452@gmail.com       a1b_3                    มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Email Long Password                      329aa151           fast_auto20190119114452@gmail.com       thisisthelong_passw0rc1  มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Mobile Wrong Password                    329aa151           0864536156                              wrongpassw0rd            มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Mobile Empty Password                    329aa151           0864536156                              ${EMPTY}                 มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Mobile Short Password                    329aa151           0864536156                              a1b_3                    มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Mobile Long Password                     329aa151           0864536156                              thisisthelong_passw0rc1  มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Mobile Telcode with Correct Password     329aa151           +66864536156                            CzUw1yvsyB               มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Mobile Telcode Wrong Password            329aa151           +66864536156                            wrongpassw0rd            มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Mobile Telcode Empty Password            329aa151           +66864536156                            ${EMPTY}                 มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Mobile Telcode Short Password            329aa151           +66864536156                            a1b_3                    มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Mobile Telcode Long Password             329aa151           +66864536156                            thisisthelong_passw0rc1  มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Empty Username Wrong Password            329aa151           ${EMPTY}                                ${EMPTY}                 มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Email Username Empty Password            329aa151           ${EMPTY}                                wrongpassw0rd            Incorrect Email, Phone number or Password.
Fastwork Login Negative Email Username Short Password            329aa151           ${EMPTY}                                abc                      มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Email Username Long Password             329aa151           ${EMPTY}                                thisisthelong_passw0rc1  มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Boolean Username and Password            329aa151           true                                    true                     มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ 
