*** Settings ***
Resource       ../resources/config.robot
Test Template    Fastwork Template Login with Email Negative
Test Teardown    Close Application

*** Test Cases ***                                                          UDID               USERNAME                                PASSWORD                 ERROR_MESSAGE
Fastwork Login Negative Registed Email Wrong Password                       329aa151           fast_auto20190119114452@gmail.com       wrongpassw0rd            เข้าสู่ระบบไม่สำเร็จ กรุณาลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Registed Email Empty Password                       329aa151           fast_auto20190119114452@gmail.com       ${EMPTY}                 มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Registed Email Short Password                       329aa151           fast_auto20190119114452@gmail.com       a1b_3                    มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Registed Email Long Password                        329aa151           fast_auto20190119114452@gmail.com       thisisthelong_passw0rc1  มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Registed Email Wrong Password Without Domain        329aa151           fast_auto20190119114452                 wrongpassw0rd            มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Registed Email Empty Password Without Domain        329aa151           fast_auto20190119114452                 ${EMPTY}                 มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Registed Email Short Password Without Domain        329aa151           fast_auto20190119114452                 a1b_3                    มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Registed Email Long Password Without Domain         329aa151           fast_auto20190119114452                 thisisthelong_passw0rc1  มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Not Registed Email Wrong Password                   329aa151           fast_auto20170119114452@gmail.com       wrongpassw0rd            เข้าสู่ระบบไม่สำเร็จ กรุณาลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Not Registed Email Empty Password                   329aa151           fast_auto20170119114452@gmail.com       ${EMPTY}                 มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Not Registed Email Short Password                   329aa151           fast_auto20170119114452@gmail.com       a1b_3                    มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Not Registed Email Long Password                    329aa151           fast_auto20170119114452@gmail.com       thisisthelong_passw0rc1  มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Registed Mobile Wrong Password                      329aa151           0864536156                              wrongpassw0rd            เข้าสู่ระบบไม่สำเร็จ กรุณาลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Registed Mobile Empty Password                      329aa151           0864536156                              ${EMPTY}                 มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Registed Mobile Short Password                      329aa151           0864536156                              a1b_3                    มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Registed Mobile Long Password                       329aa151           0864536156                              thisisthelong_passw0rc1  มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Registed Mobile Telcode with Correct Password       329aa151           +66864536156                            CzUw1yvsyB               เข้าสู่ระบบไม่สำเร็จ กรุณาลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Registed Mobile Telcode Wrong Password              329aa151           +66864536156                            wrongpassw0rd            เข้าสู่ระบบไม่สำเร็จ กรุณาลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Registed Mobile Telcode Empty Password              329aa151           +66864536156                            ${EMPTY}                 มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Registed Mobile Telcode Short Password              329aa151           +66864536156                            a1b_3                    มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Registed Mobile Telcode Long Password               329aa151           +66864536156                            thisisthelong_passw0rc1  มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Not Registed Mobile Wrong Password                  329aa151           0923029828                              wrongpassw0rd            เข้าสู่ระบบไม่สำเร็จ กรุณาลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Not Registed Mobile Empty Password                  329aa151           0923029828                              ${EMPTY}                 มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Not Registed Mobile Short Password                  329aa151           0923029828                              a1b_3                    มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Not Registed Mobile Long Password                   329aa151           0923029828                              thisisthelong_passw0rc1  มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Not Registed Mobile Telcode Wrong Password          329aa151           +66923029828                            wrongpassw0rd            เข้าสู่ระบบไม่สำเร็จ กรุณาลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Not Registed Mobile Telcode Empty Password          329aa151           +66923029828                            ${EMPTY}                 มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Not Registed Mobile Telcode Short Password          329aa151           +66923029828                            a1b_3                    มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Not Registed Mobile Telcode Long Password           329aa151           +66923029828                            thisisthelong_passw0rc1  มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Empty Username Empty Password                       329aa151           ${EMPTY}                                ${EMPTY}                 มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Empty Username Wrong Password                       329aa151           ${EMPTY}                                wrongpassw0rd            Incorrect Email, Phone number or Password.
Fastwork Login Negative Empty Username Short Password                       329aa151           ${EMPTY}                                abc                      มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Empty Username Long Password                        329aa151           ${EMPTY}                                thisisthelong_passw0rc1  มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Login Negative Boolean Username and Password                       329aa151           true                                    true                     มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ 