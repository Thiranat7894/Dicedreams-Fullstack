*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${Browser}  chrome
${URL}   https://dicedreams-font-end.vercel.app

${Delay}    1s



*** Keywords ***

login check
   Open Browser    ${URL}    ${Browser}

    Click Button    id=login-button
    Wait Until Element Is Visible  xpath=//div[@id='login-form']/div  10s
    Input Text      name=identifier    WOJA2
    Click Button   id=loginPassword
    Input Text      name=loginPassword   111111 
    Click Button    id=login-submit-button
    Wait Until Page Contains  เข้าสู่ระบบสำเร็จ  10s
    Sleep    1
    Capture Page Screenshot  Photo/Viwearticle/TC1001.png
    

Check text Tc9001
    Page Should Contain  สร้างโพสต์สำเร็จ
    sleep    ${Delay}
    Capture Page Screenshot  Photo/Viwearticle/TC9001.png

Check text Tc9002
    Page Should Contain  กรุณากรอกชื่อโพสต์
    sleep    ${Delay}
    Capture Page Screenshot  Photo/Viwearticle/TC9002.png

Check text Tc9003
    Page Should Contain  กรุณากรอกรายละเอียดของโพสต์
    sleep    ${Delay}
    Capture Page Screenshot  Photo/Viwearticle/TC9003.png

Check text Tc9004
    Page Should Contain  กรุณาอัพโหลดรูปภาพด้วย
    sleep    ${Delay}
    Capture Page Screenshot  Photo/Viwearticle/TC9004.png

*** Test Cases ***
TC9001 สร้างโพสต์นัดเล่น

    Open Browser    ${URL}    ${Browser}

    login check
    sleep    ${Delay}
    Wait Until Element Is Visible    id=post-box    10s
    Click Element                    id=post-box
    sleep    ${Delay}
    Click Button  id=game-option-7-wonders-duel
    Input Text      name=nameGames    หมาป่า
    Execute JavaScript    console.log('Testing JavaScript');
    Input Text      name=detailPost  ต้องการจำนวนมากมาเกินที่กำหนดได้
    Wait Until Element Is Visible     xpath=//*[@id="num_people"]    10s
    Click Element    xpath=//*[@id="num_people"]    
    Click Element    xpath=//ul[@id=':R9al9pkn9uuja:']/li[6]
    Click Button    xpath=//*[@id=":R6ja9kn9uuja:"]
    Input Text    name=dateMeet    09/20/2024
    Click Button    xpath=//*[@id=":R6la9kn9uuja:"]
    Click Button    xpath=/html/body/main/div/form/div/div[4]/div/div[2]/div/div/div/button
    Wait Until Element Is Visible    id=games_image    10s
    Click Element    xpath=//*[@id="games_image"]/div[4]
   
    Click Image     xpath=//*[@id="games_image"]/div[3]/div/div[1]/div[3]
    Choose File   xpath=//*[@id="games_image"]/div[3]/div    ภาพถ่ายหน้าจอ 2567-09-06 เวลา 12.23.50.png
    Click Button    id=PostGames
    sleep    ${Delay}
    Check text TC9001
    sleep    ${Delay}
    Close Browser

TC9002 สร้างโพสต์นัดเล่นไม่ใส่ชื่อเกม

    Open Browser    ${URL}    ${Browser}

    login check
    sleep    ${Delay}
    Wait Until Element Is Visible    xpath=//a[contains(@href, '/post-play')]    10s
    Click Element                    xpath=//a[contains(@href, '/post-play')]
    sleep    ${Delay}
    Click Button  id=name_games
    
    Execute JavaScript    console.log('Testing JavaScript');
    Input Text      name=detailPost  ต้องการจำนวนมากมาเกินที่กำหนดได้
    Wait Until Element Is Visible     xpath=//*[@id="num_people"]    10s
    Click Element    xpath=//*[@id="num_people"]    
    Click Element    xpath=//ul[@id=':R9al9pkn9uuja:']/li[6]
    Click Button    xpath=//*[@id=":R6ja9kn9uuja:"]
    Input Text    name=dateMeet    09/20/2024
    Click Button    xpath=//*[@id=":R6la9kn9uuja:"]
    Click Button    xpath=/html/body/main/div/form/div/div[4]/div/div[2]/div/div/div/button
    Wait Until Element Is Visible    id=games_image    10s
    Click Element    xpath=//*[@id="games_image"]/div[4]
    
    Click Button    id=PostGames
    sleep    ${Delay}
    Check text Tc9002
    sleep    ${Delay}
    Close Browser

TC9003 สร้างโพสต์นัดเล่นไม่ใส่รายละเอียด

    Open Browser    ${URL}    ${Browser}

    login check
    sleep    ${Delay}
    Wait Until Element Is Visible    xpath=//a[contains(@href, '/post-play')]    10s
    Click Element                    xpath=//a[contains(@href, '/post-play')]
    sleep    ${Delay}
    Click Button  id=name_games
    Input Text      name=nameGames    หมาป่า
    Execute JavaScript    console.log('Testing JavaScript');
   
    Wait Until Element Is Visible     xpath=//*[@id="num_people"]    10s
    Click Element    xpath=//*[@id="num_people"]    
    Click Element    xpath=//ul[@id=':R9al9pkn9uuja:']/li[6]
    Click Button    xpath=//*[@id=":R6ja9kn9uuja:"]
    Input Text    name=dateMeet    09/20/2024
    Click Button    xpath=//*[@id=":R6la9kn9uuja:"]
    Click Button    xpath=/html/body/main/div/form/div/div[4]/div/div[2]/div/div/div/button
    Wait Until Element Is Visible    id=games_image    10s
    Click Element    xpath=//*[@id="games_image"]/div[4]
    
    Click Button    id=PostGames
    sleep    ${Delay}
    Check text Tc9003
    sleep    ${Delay}
    Close Browser

TC9004 สร้างโพสต์นัดเล่นไม่ใส่วัน

    Open Browser    ${URL}    ${Browser}

    login check
    sleep    ${Delay}
    Wait Until Element Is Visible    xpath=//a[contains(@href, '/post-play')]    10s
    Click Element                    xpath=//a[contains(@href, '/post-play')]
    sleep    ${Delay}
    Click Button  id=name_games
    Input Text      name=nameGames    หมาป่า
    Execute JavaScript    console.log('Testing JavaScript');
    Input Text      name=detailPost  ต้องการจำนวนมากมาเกินที่กำหนดได้
    Wait Until Element Is Visible     xpath=//*[@id="num_people"]    10s
    Click Element    xpath=//*[@id="num_people"]    
    Click Element    xpath=//ul[@id=':R9al9pkn9uuja:']/li[6]
    Click Button    xpath=//*[@id=":R6ja9kn9uuja:"]
     Input Text    name=dateMeet    09/20/2024
    Click Button    xpath=//*[@id=":R6la9kn9uuja:"]
    Click Button    xpath=/html/body/main/div/form/div/div[4]/div/div[2]/div/div/div/button
    Wait Until Element Is Visible    id=games_image    10s
    Click Element    xpath=//*[@id="games_image"]/div[4]
    Click Button    id=PostGames
    sleep    ${Delay}
    Check text Tc9004
    sleep    ${Delay}
    Close Browser