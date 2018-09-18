# Test framework for Facebook WebApp
This test framework using Cucumber syntax and Robot Framework

### Test cases
##### 1. Login using valid and invalid credentials
```
# Keyword and Cucumber syntax:
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
# Cucumber syntax:
When user selects messenger app from topbar
And user send to a friend message content  ${message_content}
Then message content is displayed
```
##### 3. Open and post info on group
```
# Cucumber syntax:
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
Sample Run command: 
```
# Put all test results in 'Results' directory 
robot -d Results Tests/facebook.robot

# Put test results in specific directory
robot -d Results/facebook Tests/facebook.robot
robot -d Results/messenger Tests/messenger.robot
robot -d Results/group Tests/group.robot
```

##### Notes:
Add your credentials first inside `Data/input_data.robot` before running above command


### Required libraries
* Robot Framework 3.0
* Chromedriver

### Install libraries
Run this command on terminal: `pip install -r requirements.txt`

### Get chromedriver
Download it here: http://chromedriver.chromium.org/downloads

Add it inside the project directory

On MacOSX, add the chromedriver on `/usr/local/bin`