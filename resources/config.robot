*** Settings ***
Resource    template.robot
Resource    keywords.robot
Resource    keywords_register.robot
Resource    keywords_login.robot
Resource    keywords_home.robot

*** Variables ***
${remote_url}       http://127.0.0.1:4723/wd/hub
${fastwork_appPackage}       com.fastwork.app
${fastwork_appActivity}      com.fastwork.app.MainActivity

########## LOCATORS #########

${fastwork_page}    //*[@package="${fastwork_appPackage}"]

# Main Page
${mainPage_title}       //android.widget.TextView[contains(@text,"Fastwork") or contains(@content-desc,"Fastwork")]
${mainPage_signUP_button}   //android.widget.TextView[@text="สมัครสมาชิก" or @content-desc="สมัครสมาชิก"]
${mainPage_signIn_link}   //android.widget.TextView[@text="เข้าสู่ระบบ" or @content-desc="เข้าสู่ระบบ"]

# Navigation Menu Bar
${navbar_home_button}           //*[@text="หน้าแรก" or @content-desc="หน้าแรก"]
${navbar_category_button}       //*[@text="หมวดหมู่" or @content-desc="หมวดหมู่"]
${navbar_order_button}          //*[@text="ออเดอร์" or @content-desc="ออเดอร์"]
${navbar_notification_button}   //*[@text="แจ้งเตือน" or @content-desc="แจ้งเตือน"]
${navbar_profile_button}        //*[@text="โปรไฟล์" or @content-desc="โปรไฟล์"]


# Profile Page
${profilePage_title}    //*[contains(@text,"Fastwork Coin") or contains(@content-desc,"Fastwork Coin")]
${profilePage_editProfile_menu}     //*[@text="ตั้งค่าโปรไฟล์" or @content-desc="ตั้งค่าโปรไฟล์"]

# Edit Profile Page
${editProfilePage_title}    //*[@text="แก้ไข Profile" or @content-desc="แก้ไข Profile"]