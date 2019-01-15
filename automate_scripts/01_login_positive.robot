*** Settings ***
Resource       ../resources/config.robot
Test Template    Fastwork Template Login Positive
Test Teardown    Close Application

*** Test Cases ***       UDID           USERNAME                     PASSWORD
Fastwork Positive 1      329aa151       phonkornkrit@gmail.com       CzUw1yvsyB
Fastwork Positive 2      329aa151       0864536156                   CzUw1yvsyB