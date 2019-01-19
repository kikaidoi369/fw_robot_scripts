import subprocess
import datetime
import re

class adbLibrary():

    def adb_devices(self):
        devices_text = subprocess.check_output("adb devices").split("\r\n")
        devices_list = [line.split("\t") for line in devices_text if "\t" in line]
        return devices_list

    def get_active_devices(self):
        device_list = self.adb_devices()
        active_devices_list = []
        for device in range(len(device_list)):
            print str(device_list[device][0]),"   ",str(device_list[device][1])
            if str(device_list[device][1]) == "device":
                active_devices_list.append(device_list[device][0])
        return active_devices_list

    def get_all_mobile_number_in_active_devices(self):
        serial_list = self.get_active_devices()
        device_list = []
        dict_device = {}
        for serial in serial_list:
            dict_device["DeviceUDID"] = serial
            dict_device["sim1"]   = self.get_mobile_number_on_sim1(serial)
            dict_device["sim2"]   = self.get_mobile_number_on_sim2(serial)
            dict_device["DevicePlatform"] = self._adb_get_os_platform(serial)
            dict_device["DeviceVersion"] = self._adb_get_android_version(serial)
            dict_device["DeviceName"] = self._adb_get_device_name(serial)
            device_list.append(dict_device)
            dict_device = {}

        return  device_list

    def get_mobile_number_on_sim1(self,serialNumber):
        self._adb_set_active_sim_slot(serialNumber, "0")
        return self._adb_get_active_mobile_number(serialNumber)

    def get_mobile_number_on_sim2(self,serialNumber):
        self._adb_set_active_sim_slot(serialNumber, "1")
        return self._adb_get_active_mobile_number(serialNumber)

    def adb_make_call(self,serialNumber,mobileNumber):
        replaced_mobileNumber = str(mobileNumber).replace("#","%23")
        starting_message = str(subprocess.check_output("adb -s "+ serialNumber +" shell am start -a android.intent.action.CALL -d tel:"+replaced_mobileNumber))
        print "Device {0} called to {1}".format(serialNumber,mobileNumber)

    def adb_answer_call(self,serialNumber):
        starting_message = str(subprocess.check_output("adb -s "+ serialNumber +" shell input keyevent 5"))
        print "Device {0} answered call".format(serialNumber)

    def _adb_get_active_mobile_number(self,serialNumber):
        mobile_number = str(subprocess.check_output(
            "adb -s " + serialNumber + " shell \"service call iphonesubinfo 13 | grep -o \'[0-9a-f]\{8\} \' | tail -n+3 | while read a; do echo -n \\u${a:4:4}\\u${a:0:4}; done\"")).decode(
            "utf-8")
        mobile_number = str(mobile_number.replace('u', '\u').decode('unicode-escape'))
        if not mobile_number:
            return "empty"
        mobile_number = mobile_number.replace("+66", "0")[0:10]
        return mobile_number

    def _adb_get_active_sim_slot(self,serialNumber):
        active_sim_slot = int(
            subprocess.check_output("adb -s " + serialNumber + " shell settings get global multi_sim_voice_call")) + 1
        return active_sim_slot

    def _adb_set_active_sim_slot(self,serialNumber, simSlot):
        subprocess.check_output("adb -s " + serialNumber + " shell settings put global multi_sim_voice_call " + simSlot)
        active_sim_slot = int(self._adb_get_active_sim_slot(serialNumber))
        return active_sim_slot

    def get_device_name(self,serialNumber):
        device_name = str(subprocess.check_output("adb -s " + serialNumber + " shell settings get global unified_device_name")).replace("\r\n","")
        return device_name

    def get_os_platform(self,serialNumber):
        os_platform = str(subprocess.check_output("adb -s " + serialNumber + " shell getprop net.bt.name")).replace("\r\n","")
        return os_platform

    def get_android_version(self,serialNumber):
        android_version = str(subprocess.check_output("adb -s " + serialNumber + " shell getprop ro.build.version.release")).replace("\r\n","")
        return android_version

    def get_date_time(self):
        return datetime.datetime.now().strftime("%Y%m%d%H%M%S")

    def verify_result_with_flag(self,resultText,flag):
        return False

# print adbLibrary().get_date_time()