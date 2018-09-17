# Test framework for Facebook WebApp
This test framework using Cucumber syntax and Robot Framework

### Test cases:
##### 1. Login using valid and invalid credentials
```
# Cucumber Syntax:
user login using valid credentials
    [Arguments]  ${credential}
    When user submits credentials from  ${credential}
    And user selects logout button on "Landing" page
    Then "Login" page is displayed

user login using invalid credentials
    [Arguments]  ${credential}
    When user submits credentials from  ${credential}
    Then "Login" page is displayed with error message
```
##### 2. Send message on messenger
```
# Cucumber Syntax:
When user selects messenger app from topbar
And user send to a friend message content  ${message_content}
Then message content is displayed
```
##### 3. Open and post info on group
```
# Cucumber Syntax:
When user selects group app from sidebar
And user send to a group post content  ${post_content}
Then post content is displayed
```

### Directory structure
```
/Data               --> Contains user credentials
/Resources 
    /*App
        /pago       --> Contains page objects
        *App.robot  --> Contains keyword using cucumber syntax
/Results            --> Contains all test results
/Test               --> Contains all test cases
```
Sample Run command: `robot -d results tests/facebook.robot`

### Required libraries:
* Robot Framework 3.0
* Chromedriver

### Install libraries
Run this command on terminal: `pip install -r requirements.txt`

### Get chromedriver
Download it here: http://chromedriver.chromium.org/downloads

Add it inside the project directory

On MacOSX, add the chromedriver on `/usr/local/bin`