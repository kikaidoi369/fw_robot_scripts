Fastwork: Automate Scripts
==========================
[![image](https://fastworkcareer.firebaseapp.com/static/images/ogimage-square-250.jpg)](https://fastwork.co/)
---
[![image](https://img.shields.io/badge/Python-v2.7.9-green.svg)](https://www.python.org/downloads/release/python-279/) [![image](https://img.shields.io/badge/Nodejs-v9.6.1-<COLOR>.svg)](https://nodejs.org/en/) [![image](https://img.shields.io/badge/Appium-v1.10.1-purple.svg)](http://appium.io/docs/en/about-appium/getting-started/#installation-via-npm) [![image](https://img.shields.io/badge/AndroidSDK-brightgreen.svg)](https://developer.android.com/studio/)



*This project was created for Fastwork application testing and send as interview test. And using Robot framework and Appium as main frameworks*

**The Test scenarios for this repository is shown as below:**
1. Login
2. Register
3. Search & Verify Result
---
### Software Requirements
1. Python v.2.7 (python libs as in requirement.txt)
2. Robot Freamework
3. Androind-SDK (with adb and uiautomator)
4. Nodejs
5. Appium Server (Able to download via nodejs)

Install Appium via node
```
>> npm install -g appium
```
Install python libs via pip
```
>> python -m pip install -r requirement.txt
```
---
### How to Execute
This project is based on Robot framework and Appium Library. It just need few things to set up before execute.

*Start Appium server at host 127.0.0.1 and port 4723*
```
>> appium -a 127.0.0.1 -p 4723
[Appium] Welcome to Appium v1.10.1
[Appium] Non-default server args:
[Appium]   address: 127.0.0.1
[Appium] Appium REST http interface listener started on 127.0.0.1:4723
```

*Check Device connection*
*For real devices, the devices need to enable developer mode and the USB debugging*
```
>> adb devices
List of devices attached
329aa151        device
```
When finished setting as above, now it's time to execute the robot scripts.

*Execute robot scripts*
```
# First Let's go to the automate_scripts directory
>> Fastwork\automate_scripts>pybot 01_login_facebook.robot
==============================================================================
01 Login Facebook
==============================================================================
Fastwork Login Positive Facebook
# The scripts will execute until done, then you can see the log.html file in that directory
```
---
### Ending Part
**Concern and Issues for this repository**
1. This scripts support only Android 
2. This scripts cannot input thai language into Edittext on Mobile

**After try using the Automate scripts, if you found any issues, you can contact me directly via contact as below**

Tel: 086-453-6156

Email: phonkornkrit@gmail.com

Line: jayjay369


