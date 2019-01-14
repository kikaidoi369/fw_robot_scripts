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

${fastwork_page}    //*[@package="${fastwork_appPackage}"]

# Main Page
${mainPage_title}       //android.widget.TextView[contains(@text,"Fastwork") or contains(@content-desc,"Fastwork")]
${mainPage_signUP_button}   //android.widget.TextView[@text="สมัครสมาชิก" or @content-desc="สมัครสมาชิก"]
${mainPage_signIn_link}   //android.widget.TextView[@text="เข้าสู่ระบบ" or @content-desc="เข้าสู่ระบบ"]

# Register Page
${signUpPage_title}    //android.widget.TextView[@text="สมัครสมาชิก Fastwork" or @content-desc="สมัครสมาชิก Fastwork"] 
${signUpPage_signUpWithFacebook_button}     //android.widget.TextView[@text="สมัครด้วย Facebook" or content-desc="สมัครด้วย Facebook"]
${signUpPage_signUpWithGoogle_button}     //android.widget.TextView[@text="สมัครด้วย Google" or content-desc="สมัครด้วย Google"]
${signUpPage_username_editText}    //android.widget.EditText[contains(@text,"ใส่อีเมล์หรือเบอร์โทรศัพท์ของคุณ") or contains(@content-desc,"ใส่อีเมล์หรือเบอร์โทรศัพท์ของคุณ")]


# Login Page
${signInPage_title}    //android.widget.TextView[@text="เข้าสู่ระบบ Fastwork" or @content-desc="เข้าสู่ระบบ Fastwork"]
${signInPage_signUpWithFacebook_button}     //android.widget.TextView[@text="เข้าสู่ระบบ Fastwork" or content-desc="เข้าสู่ระบบ Fastwork"]
${signInPage_signUpWithGoogle_button}     //android.widget.TextView[@text="เข้าสู่ระบบ Fastwork" or content-desc="เข้าสู่ระบบ Fastwork"]
${signInPage_username_editText}    //android.widget.EditText[contains(@text,"ใส่อีเมล์หรือเบอร์โทรศัพท์ของคุณ") or contains(@content-desc,"ใส่อีเมล์หรือเบอร์โทรศัพท์ของคุณ")]
${signInPage_password_editText}    //android.widget.EditText[@password="true"]
# ${signInPage_password_editText}    //android.widget.TextView[@text="รหัสผ่าน:" or @content-desc="รหัสผ่าน:"]/..//following-sibling::android.widget.EditText
${signInPage_signIn_button}     //android.view.ViewGroup/android.widget.TextView[@text="เข้าสู่ระบบ" or @content-desc="เข้าสู่ระบบ"]
${signInPage_forgetPassword_link}    //android.widget.TextView[@text="ลืมรหัสผ่าน" or @content-desc="ลืมรหัสผ่าน"]
${signInPage_error_popup}     //android.widget.TextView[@resource-id="android:id/alertTitle"]

${signInPage_errorIncorrectData_message}
${signInPage_errorIncorrectData_message}

