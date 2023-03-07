*** Settings ***
Library    RPA.Tables
Library    RPA.Excel.Files

*** Keywords ***
Read orders as table
    Open workbook    ${ORDERS_FILE}
    ${worksheet}=    Read worksheet   header=${TRUE}
    ${orders}=       Create table     ${worksheet}
    [Return]         ${orders}
    [Teardown]       Close workbook