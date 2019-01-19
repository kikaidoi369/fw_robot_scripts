*** Settings ***
Resource       ../resources/config.robot
Test Template    Fastwork Template Register with Email Negative2
Test Teardown    Close Application

*** Test Cases ***                                                           UDID            PASSWORD                           RE_PASSWORD                         ERROR_MESSAGE
Fastwork Register Password Negative Password Not Match                       329aa151        wrongpassw0rd                      wrongpasswrd                        มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Register Password Negative Empty Password                           329aa151        ${EMPTY}                           wrongpassw0rd                       มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Register Password Negative Empty Re-Password                        329aa151        wrongpassw0rd                      ${EMPTY}                            มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Register Password Negative Empty 2 Feilds                           329aa151        ${EMPTY}                           ${EMPTY}                            มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Register Password Negative Password Not Match with Spaces           329aa151        wr0ngpass                          w r 0 n g p a ss                    มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Register Password Negative Both Short Password                      329aa151        abc                                abc                                 มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Register Password Negative Both Long Password                       329aa151        thisisthelongest@wrong_passw0rd    thisisthelongest@wrong_passw0rd     มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Register Password Negative Boolean Expression                       329aa151        1=1                                1=1                                 มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ
Fastwork Register Password Negative Boolean                                  329aa151        True                               True                                มีข้อมูลไม่ถูกต้อง กรุณาตรวจสอบและลองใหม่อีกครั้งค่ะ

