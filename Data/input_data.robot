# Author: Raja David Hasugian

*** Variables ***
${BROWSER} =  chrome
${BASE_URL} =  https://
${BLANK} =  #BLANK

# Credentials
&{USER_VALID}  email=[type_user_email]  password=[type_user_password]
&{USER_INVALID}  email=invalid@email.com  password=invalid
