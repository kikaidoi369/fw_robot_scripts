*** Settings ***
Resource       ../resources/config.robot
Test Template    Fastwork Template Login with Facebook
Test Teardown    Close Application

*** Test Cases ***                       UDID           USERNAME              
Fastwork Login Positive Facebook         329aa151       kikaidoi369@hotmail.com