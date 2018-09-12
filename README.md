# Test Facebook web app using Cucumber syntax and Robot Framework

### Test cases:
1. Login using valid and invalid credentials
2. Send message on messenger
3. Open and post info on group

### Directory structure
```
/Data               --> Contains user credentials
/Resources 
    /*App
        /pago       --> Contains page objects
        /*App.robot --> Contains keyword using cucumber syntax
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