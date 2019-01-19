*** Settings ***
Resource       ../resources/config.robot
Test Template    Fastwork Template Register with Email Negative1
Test Teardown    Close Application

*** Test Cases ***                                                  UDID            USERNAME                           ERROR_MESSAGE
Fastwork Register Email Negative without Address                    329aa151        kikaidoi369                        ขออภัยค่ะ กรุณากรอกอีเมลหรือเบอร์โทรศัพท์เท่านั้นค่ะ
Fastwork Register Email Negative without User&Domain name           329aa151        @gmail                             ขออภัยค่ะ กรุณากรอกอีเมลหรือเบอร์โทรศัพท์เท่านั้นค่ะ
Fastwork Register Email Negative without User                       329aa151        @gmail.com                         ขออภัยค่ะ กรุณากรอกอีเมลหรือเบอร์โทรศัพท์เท่านั้นค่ะ
Fastwork Register Email Negative without Domain name                329aa151        wrongformat@formatwork             ขออภัยค่ะ กรุณากรอกอีเมลหรือเบอร์โทรศัพท์เท่านั้นค่ะ
Fastwork Register Email Negative with Duplicate Email               329aa151        fast_auto20190119114452@gmail.com  ขออภัยค่ะ อีเมล์นี้ได้ถูกใช้ในบัญชีอื่นแล้ว

Fastwork Register Mobile Negative with Duplicate Mobile             329aa151        +66864536156                       ขออภัยค่ะ เบอร์โทรศัพท์นี้ได้ถูกใช้ในบัญชีอื่นแล้ว
Fastwork Register Mobile Negative with Duplicate Mobile             329aa151        0864536156                         ขออภัยค่ะ เบอร์โทรศัพท์นี้ได้ถูกใช้ในบัญชีอื่นแล้ว

Fastwork Register Negative Boolean Username                         329aa151        True                               ขออภัยค่ะ กรุณากรอกอีเมลหรือเบอร์โทรศัพท์เท่านั้นค่ะ



