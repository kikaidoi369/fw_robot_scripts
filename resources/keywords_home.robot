*** Settings ***
Library     AppiumLibrary 
Library     String
Library     Collections
Library     DateTime
Library     adbLibrary.py

*** Variables ***
${homePage_searchBox_editText}  //android.view.ViewGroup[@index='0']/android.widget.EditText[@index='1' and @clickable='true']
${homePage_arrow_button}        //android.view.ViewGroup[@index='0']/android.view.ViewGroup[@index='2']//android.widget.TextView[@index='0']
${searchPage_resultAmount_text}   //android.view.ViewGroup/android.widget.TextView[contains(@text,"Result") or contains(@content-desc,"Result")]
${searchpage_notFound_text}     //*[contains(@text,"ไม่พบงานที่คุณค้นหา") or contains(@content-desc,"ไม่พบงานที่คุณค้นหา")]


*** Keywords ***
Home Input Search Box EditText
    [Arguments]     ${SEARCH_TOPIC}
    Wait Until Element Is Visible   ${homePage_searchBox_editText}  timeout=7s
    Input Text   ${homePage_searchBox_editText}     ${SEARCH_TOPIC}

Home Click Arrow Button
    Wait Until Element Is Visible   ${homePage_arrow_button}
    Click Element   ${homePage_arrow_button}

Home Verify Search Result
    [Arguments]     ${SEARCH_TOPIC}     ${FOUND_FLAG}
    Wait Until Element Is Visible   //android.view.ViewGroup/android.widget.TextView[contains(@text,"${SEARCH_TOPIC}") or contains(@content-desc,"${SEARCH_TOPIC}")]
    Wait Until Element Is Visible   ${searchPage_resultAmount_text}
    Capture Screenshot     03_home_page_search
    ${amount_result_text}=   Get Text    ${searchPage_resultAmount_text}
    ${amount_result}=	Get Regexp Matches	${amount_result_text}    ^\\d+?
    ${amount_result}=   Convert To Integer  ${amount_result[0]}
    Run Keyword If     ${FOUND_FLAG}==${FALSE}     Home Verify Message Not Found Text  ${amount_result}
    Run Keyword If     ${FOUND_FLAG}==${TRUE}      Home Verify Search Should Return Results   ${SEARCH_TOPIC}     ${amount_result}
    

Home Verify Message Not Found Text
    [Arguments]     ${AMOUNT_RESULT}
    Wait Until Element Is Visible   ${searchPage_notFound_text}
    Should Be Equal As Integers     ${AMOUNT_RESULT}    0

Home Verify Search Should Return Results
    [Arguments]     ${SEARCH_TOPIC}     ${AMOUNT_RESULT}
    Run Keyword If     ${AMOUNT_RESULT}<=0     Fail    msg=Application does not return any Results\nAmount result: ${AMOUNT_RESULT}
    # Waiting for spec of request https://fastwork.co/search?q=<search_topic>
    