*** Settings ***
Resource       ../resources/config.robot
Test Template    Fastwork Search and Verify Result
Test Teardown    Close Application

*** Test Cases ***                                UDID           USERNAME                            PASSWORD                SEARCH_TOPIC       FOUND_FLAG
Fastwork Search and Verify Result Positive 1      329aa151       fast_auto20190119114452@gmail.com   fw20190119114452        Net Idol           ${TRUE}       
Fastwork Search and Verify Result Positive 2      329aa151       fast_auto20190119114452@gmail.com   fw20190119114452        Python             ${TRUE}     
Fastwork Search and Verify Result Positive 3      329aa151       fast_auto20190119114452@gmail.com   fw20190119114452        Website            ${TRUE}     
Fastwork Search and Verify Result Positive 4      329aa151       fast_auto20190119114452@gmail.com   fw20190119114452        Farm               ${TRUE}     
Fastwork Search and Verify Result Positive 5      329aa151       fast_auto20190119114452@gmail.com   fw20190119114452        Game               ${TRUE}  
   
Fastwork Search and Verify Result Negative 1      329aa151       fast_auto20190119114452@gmail.com   fw20190119114452        Murder             ${FALSE}     
Fastwork Search and Verify Result Negative 2      329aa151       fast_auto20190119114452@gmail.com   fw20190119114452        Kill               ${FALSE}     
Fastwork Search and Verify Result Negative 3      329aa151       fast_auto20190119114452@gmail.com   fw20190119114452        Drugs              ${FALSE}     
Fastwork Search and Verify Result Negative 4      329aa151       fast_auto20190119114452@gmail.com   fw20190119114452        123                ${FALSE}     
Fastwork Search and Verify Result Negative 5      329aa151       fast_auto20190119114452@gmail.com   fw20190119114452        \#345              ${FALSE}     
Fastwork Search and Verify Result Negative 6      329aa151       fast_auto20190119114452@gmail.com   fw20190119114452        \#&+               ${FALSE}       


