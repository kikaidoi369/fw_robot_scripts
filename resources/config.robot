*** Settings ***
Library     String
Library     Collections
Library     DateTime
Library     adbLibrary.py
Resource    keywords.robot
Resource    template.robot

*** Variables ***
${remote_url}       http://127.0.0.1:4723/wd/hub
${fastwork_appPackage}       com.fastwork.app
${fastwork_appActivity}      com.fastwork.app.MainActivity
${no_reset_status}    false

########## LOCATORS #########

${fastwork_page}    //*[@package="${fastwork_appPackage}"]

# Main Page
${mainPage_title}       //android.widget.TextView[contains(@text,"Fastwork") or contains(@content-desc,"Fastwork")]
${mainPage_signUP_button}   //android.widget.TextView[@text="สมัครสมาชิก" or @content-desc="สมัครสมาชิก"]
${mainPage_signIn_link}   //android.widget.TextView[@text="เข้าสู่ระบบ" or @content-desc="เข้าสู่ระบบ"]

# Register Page
${signUpPage_title}    //android.widget.TextView[@text="สมัครสมาชิก Fastwork" or @content-desc="สมัครสมาชิก Fastwork"] 
${signUpPage_signUpWithFacebook_button}     //android.widget.TextView[@text="สมัครด้วย Facebook" or content-desc="สมัครด้วย Facebook"]
${signUpPage_signUpWithGoogle_button}     //android.widget.TextView[@text="สมัครด้วย Google" or content-desc="สมัครด้วย Google"]
${signUpPage_username_title}        //*[@text="อีเมล์หรือเบอร์โทรศัพท์:" or @content-desc="อีเมล์หรือเบอร์โทรศัพท์:"]
${signUpPage_username_editText}    //android.widget.EditText[contains(@text,"ใส่อีเมล์หรือเบอร์โทรศัพท์ของคุณ") or contains(@content-desc,"ใส่อีเมล์หรือเบอร์โทรศัพท์ของคุณ")]
${signUpPage_continue_button}     //android.view.ViewGroup/android.widget.TextView[@text="ดำเนินการต่อ" or @content-desc="ดำเนินการต่อ"]
${signUpPage_password_title}    //*[@text="รหัสผ่าน:" or @content-desc="รหัสผ่าน:"]
${signUpPage_password_editText}     //android.widget.EditText[@text="ใส่รหัสผ่านที่ต้องการ..." or @content-desc="ใส่รหัสผ่านที่ต้องการ..."]
${signUpPage_repassword_title}      //*[@text="ยืนยันรหัสผ่าน:" or @content-desc="ยืนยันรหัสผ่าน:"]
${signUpPage_repassword_editText}   //android.widget.EditText[@text="ใส่รหัสผ่านที่ต้องการอีกครั้ง..." or @content-desc="ใส่รหัสผ่านที่ต้องการอีกครั้ง..."]
${signUpPage_error_popup}     //android.widget.TextView[@resource-id="android:id/alertTitle"]
${signUpPage_setPassword_button}    //*[@text="ตั้งรหัสผ่าน" or @content-desc="ตั้งรหัสผ่าน"]

# Login Page
${signInPage_title}    //android.widget.TextView[@text="เข้าสู่ระบบ Fastwork" or @content-desc="เข้าสู่ระบบ Fastwork"]
${signInPage_signInWithFacebook_button}     //android.widget.TextView[@text="เข้าสู่ระบบด้วย Facebook" or content-desc="เข้าสู่ระบบด้วย Facebook"]
${signInPage_signInWithGoogle_button}     //android.widget.TextView[@text="เข้าสู่ระบบด้วย Google" or content-desc="เข้าสู่ระบบด้วย Google"]
${signInPage_username_editText}    //android.widget.EditText[contains(@text,"ใส่อีเมล์หรือเบอร์โทรศัพท์ของคุณ") or contains(@content-desc,"ใส่อีเมล์หรือเบอร์โทรศัพท์ของคุณ")]
${signInPage_password_editText}    //android.widget.EditText[@password="true"]
${signInPage_signIn_button}     //android.view.ViewGroup/android.widget.TextView[@text="เข้าสู่ระบบ" or @content-desc="เข้าสู่ระบบ"]
${signInPage_forgetPassword_link}    //android.widget.TextView[@text="ลืมรหัสผ่าน" or @content-desc="ลืมรหัสผ่าน"]
${signInPage_error_popup}     //android.widget.TextView[@resource-id="android:id/alertTitle"]

# Navigation Menu Bar
${navbar_home_button}           //*[@text="หน้าแรก" or @content-desc="หน้าแรก"]
${navbar_category_button}       //*[@text="หมวดหมู่" or @content-desc="หมวดหมู่"]
${navbar_order_button}          //*[@text="ออเดอร์" or @content-desc="ออเดอร์"]
${navbar_notification_button}   //*[@text="แจ้งเตือน" or @content-desc="แจ้งเตือน"]
${navbar_profile_button}        //*[@text="โปรไฟล์" or @content-desc="โปรไฟล์"]

# Profile Page
${profilePage_title}    //*[contains(@text,"โปรไฟล์ของคุณ") or contains(@content-desc,"โปรไฟล์ของคุณ")]
${profilePage_editProfile_menu}     //*[@text="ตั้งค่าโปรไฟล์" or @content-desc="ตั้งค่าโปรไฟล์"]

# Edit Profile Page
${editProfilePage_title}    //*[@text="แก้ไข Profile" or @content-desc="แก้ไข Profile"]