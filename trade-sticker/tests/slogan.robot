*** Settings ***
Library   Browser

*** Variables ***
${slogan}      

*** Test Cases ***
Example Test
    New Browser         headless=False
    New Page            https://trade-sticker-dev.vercel.app/
    Get Text            .logo-container h2    contains    Conectando colecionadores de figurinhas da copa.
    Take Screenshot 