*** Settings ***
Resource       ../resources/config.robot
Test Template    Fastwork Template Register with Email Positive
Test Teardown    Close Application

*** Test Cases ***                  UDID    
Fastwork Register Positive 1        329aa151