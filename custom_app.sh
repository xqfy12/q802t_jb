apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "Phone" ];then
        echo ">>> in custom_app for $apkBaseName to adjust the interface "registerForNetworkLocked" with "registerForPersoLocked""
        find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#registerForNetworkLocked#registerForPersoLocked#g'  

elif [ "$apkBaseName" = "Settings" ];then
    echo ">>> in custom_app $apkBaseName"
	
	# Remove the Official Verify Preference.
	sed -i -e "/^\.method.*setOfficialVerifyPreference()V/,/^\.end method/d" $tempSmaliDir/smali/com/android/settings/DeviceInfoSettings.smali
	sed -i -e "/setOfficialVerifyPreference/d" $tempSmaliDir/smali/com/android/settings/DeviceInfoSettings.smali	

fi
