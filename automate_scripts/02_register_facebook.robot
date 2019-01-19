*** Settings ***
Resource       ../resources/config.robot
Test Template    Fastwork Template Register with Facebook
Test Teardown    Close Application

*** Test Cases ***                       UDID           USERNAME              
Fastwork Register Positive Facebook      329aa151       kikaidoi369@hotmail.com