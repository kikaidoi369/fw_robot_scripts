*** Settings ***
Library     String
Library     Collections
Library     adbLibrary.py
Resource    keywords.robot

*** Variables ***
${remote_url}       http://127.0.0.1:4723/wd/hub
${fastwork_appPackage}       com.fastwork.app
${fastwork_appActivity}      com.fastwork.app.MainActivity
${no_reset_status}    false

########## LOCATORS #########

# Main Page
${fastwork_page}    //*[@package="${fastwork_appPackage}"]
${mainPage_signUP_button}   //android.widget.TextView[@text="สมัครสมาชิก" or @content-desc="สมัครสมาชิก"]
${mainPage_signIn_button}   //android.widget.TextView[@text="เข้าสู่ระบบ" or @content-desc="เข้าสู่ระบบ"]

# Register Page
${signUpPage_title}    //android.widget.TextView[@text="สมัครสมาชิก Fastwork" or @content-desc="สมัครสมาชิก Fastwork"] 
${signUpPage_signUpWithFacebook_button}     //android.widget.TextView[@text="สมัครด้วย Facebook" or content-desc="สมัครด้วย Facebook"]
${signUpPage_signUpWithGoogle_button}     //android.widget.TextView[@text="สมัครด้วย Google" or content-desc="สมัครด้วย Google"]
${signUpPage_username_editText}    //android.widget.EditText[contains(@text,"อีเมล์หรือเบอร์โทรศัพท์") or contains(@content-desc,"อีเมล์หรือเบอร์โทรศัพท์")]/..//android.widget.EditText




