.class public Lcom/android/stocksettings/wifi/AdvancedWifiSettings;
.super Lcom/android/stocksettings/SettingsPreferenceFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mWapiCertInstall:Landroid/preference/Preference;

.field private mWapiCertUninstall:Landroid/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private zteNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initPreferences()V
    .locals 21

    .prologue
    .line 139
    const-string v17, "notify_open_networks"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 141
    .local v6, notifyOpenNetworks:Landroid/preference/CheckBoxPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "wifi_networks_available_notification_on"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v17, 0x1

    :goto_0
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 145
    const-string v17, "wifi_poor_network_detection"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    .line 147
    .local v7, poorNetworkDetection:Landroid/preference/CheckBoxPreference;
    if-eqz v7, :cond_0

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/stocksettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 158
    :cond_0
    :goto_1
    const-string v17, "wifi_scan_always_available"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    .line 160
    .local v10, scanAlwaysAvailable:Landroid/preference/CheckBoxPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "wifi_scan_always_enabled"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    const/16 v17, 0x1

    :goto_2
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 163
    new-instance v5, Landroid/content/Intent;

    const-string v17, "android.credentials.INSTALL_AS_USER"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v5, intent:Landroid/content/Intent;
    const-string v17, "com.android.certinstaller"

    const-string v18, "com.android.certinstaller.CertInstallerMain"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v17, "install_as_uid"

    const/16 v18, 0x3f2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    const-string v17, "suspend_optimizations"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    .line 172
    .local v14, suspendOptimizations:Landroid/preference/CheckBoxPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "wifi_suspend_optimizations_enabled"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/16 v17, 0x1

    :goto_3
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 175
    const-string v17, "frequency_band"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 177
    .local v4, frequencyPref:Landroid/preference/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 178
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v15

    .line 180
    .local v15, value:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_9

    .line 181
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Landroid/preference/Preference;I)V

    .line 193
    .end local v15           #value:I
    :cond_1
    :goto_4
    const-string v17, "sleep_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    .line 194
    .local v11, sleepPolicyPref:Landroid/preference/ListPreference;
    if-eqz v11, :cond_3

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/stocksettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 196
    const v17, 0x7f070025

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 198
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "wifi_sleep_policy"

    const/16 v19, 0x2

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 202
    .restart local v15       #value:I
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 203
    .local v13, stringValue:Ljava/lang/String;
    invoke-virtual {v11, v13}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 204
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 210
    .end local v13           #stringValue:Ljava/lang/String;
    .end local v15           #value:I
    :cond_3
    const-string v17, "select_in_ssids_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/ListPreference;

    .line 211
    .local v12, ssidPref:Landroid/preference/ListPreference;
    if-eqz v12, :cond_c

    .line 212
    const-string v17, "persist.env.settings.ssid"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 214
    const-string v17, "AdvancedWifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "chenlidong:SystemProperties.getBoolean(PROP_SSID, false):"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "persist.env.settings.ssid"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "ssid_pref_select_type"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 220
    .restart local v15       #value:I
    const-string v17, "AdvancedWifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "chenlidong:value:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 231
    .end local v15           #value:I
    :goto_5
    const-string v17, "auto_connect_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 232
    .local v2, AutoPref:Landroid/preference/CheckBoxPreference;
    if-eqz v2, :cond_f

    .line 233
    const-string v17, "persist.env.settings.autocon"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "wifi_auto_connect_type"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-nez v17, :cond_d

    const/16 v17, 0x1

    :goto_6
    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 238
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 246
    :goto_7
    const-string v17, "wifi_gsm_connect_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/CheckBoxPreference;

    .line 248
    .local v16, wifi2cellPref:Landroid/preference/CheckBoxPreference;
    if-eqz v16, :cond_12

    .line 249
    const-string v17, "persist.env.settings.wifi2cell"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0b07fa

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c0012

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v19

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c0012

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    const/16 v17, 0x1

    :goto_8
    invoke-virtual/range {v16 .. v17}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 254
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 262
    :goto_9
    const-string v17, "wifi_priority_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    .line 263
    .local v9, priorityTypePref:Landroid/preference/CheckBoxPreference;
    const-string v17, "wifi_priority_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 264
    .local v8, prioritySettingPref:Landroid/preference/Preference;
    if-eqz v9, :cond_15

    if-eqz v8, :cond_15

    .line 265
    const-string v17, "persist.env.settings.wifiprior"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 266
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0b0809

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c000f

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v19

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c0010

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    const/16 v17, 0x1

    :goto_a
    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 279
    :goto_b
    const-string v17, "gsm_wifi_connect_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    .line 280
    .local v3, cell2wifiPref:Landroid/preference/ListPreference;
    if-eqz v3, :cond_17

    .line 281
    const-string v17, "persist.env.settings.cell2wifi"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 282
    const-string v17, "AdvancedWifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SystemProperties.getBoolean(PROP_CELL2WIFI, false):"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "persist.env.settings.cell2wifi"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "data_wifi_connect_type"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 286
    .restart local v15       #value:I
    const-string v17, "AdvancedWifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "chenlidong:value11:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 288
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 295
    .end local v15           #value:I
    :goto_c
    return-void

    .line 141
    .end local v2           #AutoPref:Landroid/preference/CheckBoxPreference;
    .end local v3           #cell2wifiPref:Landroid/preference/ListPreference;
    .end local v4           #frequencyPref:Landroid/preference/ListPreference;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #poorNetworkDetection:Landroid/preference/CheckBoxPreference;
    .end local v8           #prioritySettingPref:Landroid/preference/Preference;
    .end local v9           #priorityTypePref:Landroid/preference/CheckBoxPreference;
    .end local v10           #scanAlwaysAvailable:Landroid/preference/CheckBoxPreference;
    .end local v11           #sleepPolicyPref:Landroid/preference/ListPreference;
    .end local v12           #ssidPref:Landroid/preference/ListPreference;
    .end local v14           #suspendOptimizations:Landroid/preference/CheckBoxPreference;
    .end local v16           #wifi2cellPref:Landroid/preference/CheckBoxPreference;
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 151
    .restart local v7       #poorNetworkDetection:Landroid/preference/CheckBoxPreference;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "wifi_watchdog_poor_network_test_enabled"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    const/16 v17, 0x1

    :goto_d
    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_6
    const/16 v17, 0x0

    goto :goto_d

    .line 160
    .restart local v10       #scanAlwaysAvailable:Landroid/preference/CheckBoxPreference;
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 172
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v14       #suspendOptimizations:Landroid/preference/CheckBoxPreference;
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 184
    .restart local v4       #frequencyPref:Landroid/preference/ListPreference;
    .restart local v15       #value:I
    :cond_9
    const-string v17, "AdvancedWifiSettings"

    const-string v18, "Failed to fetch frequency band"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 187
    .end local v15           #value:I
    :cond_a
    if-eqz v4, :cond_1

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 224
    .restart local v11       #sleepPolicyPref:Landroid/preference/ListPreference;
    .restart local v12       #ssidPref:Landroid/preference/ListPreference;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 227
    :cond_c
    const-string v17, "AdvancedWifiSettings"

    const-string v18, "Fail to get ssid pref"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 234
    .restart local v2       #AutoPref:Landroid/preference/CheckBoxPreference;
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 240
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 243
    :cond_f
    const-string v17, "AdvancedWifiSettings"

    const-string v18, "Fail to get auto connect pref"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 250
    .restart local v16       #wifi2cellPref:Landroid/preference/CheckBoxPreference;
    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 256
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    .line 259
    :cond_12
    const-string v17, "AdvancedWifiSettings"

    const-string v18, "Fail to get wifi2cell pref"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 267
    .restart local v8       #prioritySettingPref:Landroid/preference/Preference;
    .restart local v9       #priorityTypePref:Landroid/preference/CheckBoxPreference;
    :cond_13
    const/16 v17, 0x0

    goto/16 :goto_a

    .line 272
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_b

    .line 276
    :cond_15
    const-string v17, "AdvancedWifiSettings"

    const-string v18, "Fail to get priority pref..."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 290
    .restart local v3       #cell2wifiPref:Landroid/preference/ListPreference;
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_c

    .line 293
    :cond_17
    const-string v17, "AdvancedWifiSettings"

    const-string v18, "Fail to get cellular2wifi pref"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c
.end method

.method private initWapiCertInstallPreference()V
    .locals 3

    .prologue
    .line 527
    const-string v1, "wapi_cert_install"

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 528
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 529
    const-string v1, "AdvancedWifiSettings"

    const-string v2, "initWapiCertInstallPreference pref != null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 534
    :goto_0
    return-void

    .line 532
    :cond_0
    const-string v1, "AdvancedWifiSettings"

    const-string v2, "initWapiCertInstallPreference pref == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initWapiCertUninstallPreference()V
    .locals 3

    .prologue
    .line 536
    const-string v1, "wapi_cert_uninstall"

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 537
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 538
    const-string v1, "AdvancedWifiSettings"

    const-string v2, "initWapiCertUninstallPreference pref != null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 543
    :goto_0
    return-void

    .line 541
    :cond_0
    const-string v1, "AdvancedWifiSettings"

    const-string v2, "initWapiCertUninstallPreference pref == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshWifiInfo()V
    .locals 14

    .prologue
    const v13, 0x7f0b0344

    .line 480
    iget-object v11, p0, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 482
    .local v7, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v11, "mac_address"

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 483
    .local v9, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez v7, :cond_4

    const/4 v3, 0x0

    .line 484
    .local v3, macAddress:Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .end local v3           #macAddress:Ljava/lang/String;
    :goto_1
    invoke-virtual {v9, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 487
    const-string v11, "current_ip_address"

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 488
    .local v8, wifiIpAddressPref:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/stocksettings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 489
    .local v2, ipAddress:Ljava/lang/String;
    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .end local v2           #ipAddress:Ljava/lang/String;
    :cond_0
    invoke-virtual {v8, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 491
    const-string v11, "current_gateway"

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 492
    .local v6, wifiGatewayPref:Landroid/preference/Preference;
    const/4 v1, 0x0

    .line 493
    .local v1, gateway:Ljava/lang/String;
    const-string v11, "current_netmask"

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 494
    .local v10, wifiNetmaskPref:Landroid/preference/Preference;
    const/4 v4, 0x0

    .line 495
    .local v4, netmask:Ljava/lang/String;
    const-string v11, "persist.env.settings.netinfo"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 496
    iget-object v11, p0, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 497
    .local v0, dhcpInfo:Landroid/net/DhcpInfo;
    if-eqz v7, :cond_1

    .line 498
    if-eqz v0, :cond_1

    .line 499
    iget v11, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v11}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v1

    .line 500
    iget v11, v0, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v11}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v4

    .line 503
    :cond_1
    if-eqz v6, :cond_2

    .line 504
    if-nez v1, :cond_6

    invoke-virtual {p0, v13}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_2
    invoke-virtual {v6, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 507
    :cond_2
    if-eqz v10, :cond_3

    .line 508
    if-nez v4, :cond_7

    invoke-virtual {p0, v13}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_3
    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 522
    .end local v0           #dhcpInfo:Landroid/net/DhcpInfo;
    :cond_3
    :goto_4
    return-void

    .line 483
    .end local v1           #gateway:Ljava/lang/String;
    .end local v4           #netmask:Ljava/lang/String;
    .end local v6           #wifiGatewayPref:Landroid/preference/Preference;
    .end local v8           #wifiIpAddressPref:Landroid/preference/Preference;
    .end local v10           #wifiNetmaskPref:Landroid/preference/Preference;
    :cond_4
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 484
    .restart local v3       #macAddress:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .end local v3           #macAddress:Ljava/lang/String;
    .restart local v0       #dhcpInfo:Landroid/net/DhcpInfo;
    .restart local v1       #gateway:Ljava/lang/String;
    .restart local v4       #netmask:Ljava/lang/String;
    .restart local v6       #wifiGatewayPref:Landroid/preference/Preference;
    .restart local v8       #wifiIpAddressPref:Landroid/preference/Preference;
    .restart local v10       #wifiNetmaskPref:Landroid/preference/Preference;
    :cond_6
    move-object v11, v1

    .line 504
    goto :goto_2

    :cond_7
    move-object v11, v4

    .line 508
    goto :goto_3

    .line 512
    .end local v0           #dhcpInfo:Landroid/net/DhcpInfo;
    :cond_8
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 513
    .local v5, screen:Landroid/preference/PreferenceScreen;
    if-eqz v5, :cond_3

    .line 514
    if-eqz v6, :cond_9

    .line 515
    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 517
    :cond_9
    if-eqz v10, :cond_3

    .line 518
    invoke-virtual {v5, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4
.end method

.method private updateFrequencyBandSummary(Landroid/preference/Preference;I)V
    .locals 3
    .parameter "frequencyBandPref"
    .parameter "index"

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, summaries:[Ljava/lang/String;
    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 320
    return-void
.end method

.method private updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 7
    .parameter "sleepPolicyPref"
    .parameter "value"

    .prologue
    .line 298
    if-eqz p2, :cond_2

    .line 299
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070026

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, values:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/stocksettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f070025

    .line 302
    .local v2, summaryArrayResId:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, summaries:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 304
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 305
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 306
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 315
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :goto_2
    return-void

    .line 300
    .restart local v3       #values:[Ljava/lang/String;
    :cond_0
    const v2, 0x7f070024

    goto :goto_0

    .line 303
    .restart local v0       #i:I
    .restart local v1       #summaries:[Ljava/lang/String;
    .restart local v2       #summaryArrayResId:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 313
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :cond_2
    const-string v4, ""

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 314
    const-string v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid sleep policy value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 124
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 125
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const v0, 0x7f050046

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->addPreferencesFromResource(I)V

    .line 115
    const-string v0, "AdvancedWifiSettings"

    const-string v1, "Oncreate findpref."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v0, "wapi_cert_install"

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->mWapiCertInstall:Landroid/preference/Preference;

    .line 117
    const-string v0, "wapi_cert_uninstall"

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->mWapiCertUninstall:Landroid/preference/Preference;

    .line 119
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 14
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 350
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 352
    .local v7, key:Ljava/lang/String;
    const-string v10, "frequency_band"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 354
    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 355
    .local v9, value:I
    iget-object v10, p0, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v11, 0x1

    invoke-virtual {v10, v9, v11}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V

    .line 356
    invoke-direct {p0, p1, v9}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Landroid/preference/Preference;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .end local v9           #value:I
    :cond_0
    const-string v10, "sleep_policy"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 366
    :try_start_1
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 367
    .local v8, stringValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "wifi_sleep_policy"

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 369
    invoke-direct {p0, p1, v8}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 378
    .end local v8           #stringValue:Ljava/lang/String;
    :cond_1
    const-string v10, "select_in_ssids_type"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 379
    const-string v10, "AdvancedWifiSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ssid pref type is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :try_start_2
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_2

    .line 387
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "wifi_auto_connect_type"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_6

    const/4 v1, 0x1

    .line 389
    .local v1, autoConn:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 391
    iget-object v10, p0, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 394
    .end local v1           #autoConn:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "ssid_pref_select_type"

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 406
    :cond_3
    const-string v10, "gsm_wifi_connect_type"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 407
    const-string v10, "AdvancedWifiSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Gsm to Wifi connect type is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :try_start_3
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "data_wifi_connect_type"

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 418
    :cond_4
    const-string v10, "wifi_gsm_connect_type"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 419
    const-string v10, "AdvancedWifiSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wifi2cell connect type is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v10, p2

    .line 420
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 421
    .local v2, checked:Z
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f0b07fa

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f0c0012

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    :goto_1
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 427
    .end local v2           #checked:Z
    :cond_5
    const-string v10, "auto_connect_type"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    move-object/from16 v10, p2

    .line 428
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 429
    .restart local v2       #checked:Z
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_auto_connect_type"

    if-eqz v2, :cond_8

    const/4 v10, 0x0

    :goto_2
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 434
    if-nez v2, :cond_a

    .line 436
    const-string v10, "AdvancedWifiSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isChecked:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v10, p0, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->zteNetworks:Ljava/util/List;

    .line 438
    iget-object v10, p0, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->zteNetworks:Ljava/util/List;

    if-eqz v10, :cond_b

    .line 439
    iget-object v10, p0, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->zteNetworks:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 440
    .local v3, config:Landroid/net/wifi/WifiConfiguration;
    const-string v10, "AdvancedWifiSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "turn autoconnect off, config = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v10, p0, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v10

    iget v11, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v10, v11, :cond_9

    iget-object v10, p0, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_9

    .line 444
    const-string v10, "AdvancedWifiSettings"

    const-string v11, "chenlidong111 continue"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 357
    .end local v2           #checked:Z
    .end local v3           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v6           #i$:Ljava/util/Iterator;
    .restart local p1
    :catch_0
    move-exception v5

    .line 358
    .local v5, e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b0271

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 360
    const/4 v10, 0x0

    .line 475
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .end local p1
    .end local p2
    :goto_4
    return v10

    .line 370
    .restart local p1
    .restart local p2
    :catch_1
    move-exception v5

    .line 371
    .restart local v5       #e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b01f5

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 373
    const/4 v10, 0x0

    goto :goto_4

    .line 387
    .end local v5           #e:Ljava/lang/NumberFormatException;
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 399
    :catch_2
    move-exception v5

    .line 401
    .restart local v5       #e:Ljava/lang/NumberFormatException;
    const/4 v10, 0x0

    goto :goto_4

    .line 412
    .end local v5           #e:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v5

    .line 413
    .restart local v5       #e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b080a

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 415
    const/4 v10, 0x0

    goto :goto_4

    .line 421
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #checked:Z
    :cond_7
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f0c0011

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    goto/16 :goto_1

    .line 429
    :cond_8
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 447
    .end local p1
    .restart local v3       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_9
    const-string v10, "AdvancedWifiSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "chenlidong222 disable : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v10, p0, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v11, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto/16 :goto_3

    .line 453
    .end local v3           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v6           #i$:Ljava/util/Iterator;
    .restart local p1
    :cond_a
    iget-object v10, p0, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 454
    .local v4, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v4, :cond_b

    .line 455
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 456
    .restart local v3       #config:Landroid/net/wifi/WifiConfiguration;
    iget-object v10, p0, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v11, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto :goto_5

    .line 464
    .end local v2           #checked:Z
    .end local v3           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    .end local p1
    :cond_b
    const-string v10, "wifi_priority_type"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 465
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 466
    .restart local v2       #checked:Z
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f0b0809

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f0c0010

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    :goto_6
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 472
    .end local v2           #checked:Z
    :cond_c
    const-string v10, "wapi_cert_install"

    invoke-virtual {p0, v10}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->mWapiCertInstall:Landroid/preference/Preference;

    .line 473
    const-string v10, "wapi_cert_uninstall"

    invoke-virtual {p0, v10}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->mWapiCertUninstall:Landroid/preference/Preference;

    .line 475
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 466
    .restart local v2       #checked:Z
    :cond_d
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f0c000f

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    goto :goto_6
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    .line 549
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, key:Ljava/lang/String;
    const-string v2, "AdvancedWifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceClick key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    if-nez v1, :cond_1

    .line 565
    :cond_0
    :goto_0
    return v5

    .line 552
    :cond_1
    const-string v2, "wapi_cert_install"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 553
    const-string v2, "AdvancedWifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceClick key 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 555
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.wapicert.INSTALL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    invoke-virtual {p0, v0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 558
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const-string v2, "wapi_cert_uninstall"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 559
    const-string v2, "AdvancedWifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceClick key 2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 561
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.wapicert.UNINSTALL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    invoke-virtual {p0, v0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 324
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, key:Ljava/lang/String;
    const-string v3, "notify_open_networks"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 345
    :goto_0
    return v2

    .line 330
    .restart local p2
    :cond_1
    const-string v3, "wifi_poor_network_detection"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 331
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_watchdog_poor_network_test_enabled"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 334
    .restart local p2
    :cond_3
    const-string v3, "suspend_optimizations"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 335
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_suspend_optimizations_enabled"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 338
    .restart local p2
    :cond_5
    const-string v3, "wifi_scan_always_available"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 339
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_scan_always_enabled"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v2

    :cond_6
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 343
    .restart local p2
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onResume()V

    .line 130
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->initPreferences()V

    .line 132
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->initWapiCertInstallPreference()V

    .line 133
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->initWapiCertUninstallPreference()V

    .line 135
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    .line 136
    return-void
.end method
