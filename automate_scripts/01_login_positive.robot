*** Settings ***
Resource       ../resources/config.robot
Test Template    Fastwork Template Login with Email Positive
Test Teardown    Close Application

*** Test Cases ***                      UDID           USERNAME                            PASSWORD
Fastwork Login Positive Email 1         329aa151       phonkornkrit@gmail.com              CzUw1yvsyB
Fastwork Login Positive Email 2         329aa151       fast_auto20190119114452@gmail.com   fw20190119114452
Fastwork Login Positive Mobile 1        329aa151       0864536156                          CzUw1yvsyB