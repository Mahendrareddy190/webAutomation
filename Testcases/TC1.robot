*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Lanch browser
    open browser    https://practo.com/  chrome
    maximize browser window

search_dentist
    input text    xpath://*[@id="c-omni-container"]/div/div[1]/div[1]/input   Bangalore
    sleep    1s
    click element    xpath://*[@id="c-omni-container"]/div/div[1]/div[2]/div[2]/div[1]
    input text    xpath://*[@id="c-omni-container"]/div/div[2]/div/input    dentist
    sleep    2s
    click element    xpath://*[@id="c-omni-container"]/div/div[2]/div[2]/div[1]/div[1]

display_doctor_profile
    wait until element is visible   xpath://*[@id="container"]/div/div[4]/div/div[1]/div/div[3]/div[1]/div/div[1]/div[2]/a    timeout=10s
    click link    xpath://*[@id="container"]/div/div[4]/div/div[1]/div/div[3]/div[1]/div/div[1]/div[2]/a
    sleep   5s
bookAppoint
    wait until element is visible     css:c-day-slot__next-btn~c-apt-btn--dark-fitY   timeout=10s
    click button    css:div.c-day-slot__next-btn~c-apt-btn--dark-fitY
    sleep    5s