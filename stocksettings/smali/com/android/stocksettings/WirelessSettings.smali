.class public Lcom/android/stocksettings/WirelessSettings;
.super Lcom/android/stocksettings/SettingsPreferenceFragment;
.source "WirelessSettings.java"


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/stocksettings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mManageMobilePlanMessage:Ljava/lang/String;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/stocksettings/nfc/NfcEnabler;

.field private mNsdEnabler:Lcom/android/stocksettings/NsdEnabler;

.field private mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/stocksettings/WirelessSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/stocksettings/WirelessSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/stocksettings/WirelessSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/stocksettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    return-object p1
.end method

.method private hasSimCard()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 327
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    .line 328
    .local v1, multiSimManager:Landroid/telephony/MSimTelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 329
    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    .line 330
    .local v2, numPhones:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 333
    invoke-virtual {v1, v0}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v5

    if-eq v5, v4, :cond_1

    .line 344
    .end local v0           #i:I
    .end local v2           #numPhones:I
    :cond_0
    :goto_1
    return v4

    .line 330
    .restart local v0       #i:I
    .restart local v2       #numPhones:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    .end local v0           #i:I
    .end local v2           #numPhones:I
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 339
    .local v3, singleSimManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 344
    .end local v3           #singleSimManager:Landroid/telephony/TelephonyManager;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 179
    invoke-static {p0}, Lcom/android/stocksettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v1

    .line 183
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, toggleable:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 175
    const-string v0, "WirelessSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 394
    const v0, 0x7f0b0776

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 384
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 385
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 387
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/stocksettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/stocksettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/stocksettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/stocksettings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 390
    .end local v0           #isChoiceYes:Ljava/lang/Boolean;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "savedInstanceState"

    .prologue
    .line 190
    invoke-super/range {p0 .. p1}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 191
    if-eqz p1, :cond_0

    .line 192
    const-string v19, "mManageMobilePlanMessage"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 194
    :cond_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onCreate: mManageMobilePlanMessage="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/stocksettings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 196
    const-string v19, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 197
    const-string v19, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    .line 199
    const v19, 0x7f05004c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 201
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    if-eqz v19, :cond_f

    const/4 v7, 0x1

    .line 203
    .local v7, isSecondaryUser:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 204
    .local v2, activity:Landroid/app/Activity;
    const-string v19, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    .line 206
    const-string v19, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    .line 208
    .local v11, manageSub:Landroid/preference/PreferenceScreen;
    invoke-direct/range {p0 .. p0}, Lcom/android/stocksettings/WirelessSettings;->hasSimCard()Z

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 222
    const-string v19, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    .line 223
    .local v12, nfc:Landroid/preference/CheckBoxPreference;
    const-string v19, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 224
    .local v3, androidBeam:Landroid/preference/PreferenceScreen;
    const-string v19, "toggle_nsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/CheckBoxPreference;

    .line 226
    .local v13, nsd:Landroid/preference/CheckBoxPreference;
    new-instance v19, Lcom/android/stocksettings/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v2, v1}, Lcom/android/stocksettings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/stocksettings/AirplaneModeEnabler;

    .line 227
    new-instance v19, Lcom/android/stocksettings/nfc/NfcEnabler;

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v12, v3}, Lcom/android/stocksettings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/WirelessSettings;->mNfcEnabler:Lcom/android/stocksettings/nfc/NfcEnabler;

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 233
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "airplane_mode_toggleable_radios"

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 237
    .local v18, toggleable:Ljava/lang/String;
    if-nez v7, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1110042

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    if-eqz v19, :cond_10

    const/4 v8, 0x1

    .line 239
    .local v8, isWimaxEnabled:Z
    :goto_1
    if-nez v8, :cond_11

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    .line 241
    .local v17, root:Landroid/preference/PreferenceScreen;
    const-string v19, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 242
    .local v16, ps:Landroid/preference/Preference;
    if-eqz v16, :cond_1

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 251
    .end local v16           #ps:Landroid/preference/Preference;
    .end local v17           #root:Landroid/preference/PreferenceScreen;
    :cond_1
    :goto_2
    if-eqz v18, :cond_2

    const-string v19, "wifi"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 252
    :cond_2
    const-string v19, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    const-string v20, "toggle_airplane"

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 254
    :cond_3
    if-eqz v7, :cond_4

    .line 255
    const-string v19, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 259
    :cond_4
    if-eqz v18, :cond_5

    const-string v19, "bluetooth"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 264
    :cond_5
    if-eqz v18, :cond_6

    const-string v19, "nfc"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 265
    :cond_6
    const-string v19, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    const-string v20, "toggle_airplane"

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 266
    const-string v19, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    const-string v20, "toggle_airplane"

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 270
    :cond_7
    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v19, v0

    if-nez v19, :cond_8

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 274
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/WirelessSettings;->mNfcEnabler:Lcom/android/stocksettings/nfc/NfcEnabler;

    .line 278
    :cond_8
    if-nez v7, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/stocksettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 279
    :cond_9
    const-string v19, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 280
    const-string v19, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 283
    :cond_a
    const-string v19, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 288
    const-string v19, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 289
    .local v10, mGlobalProxy:Landroid/preference/Preference;
    const-string v19, "device_policy"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    .line 292
    .local v9, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 293
    invoke-virtual {v9}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v19

    if-nez v19, :cond_13

    const/16 v19, 0x1

    :goto_3
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 296
    const-string v19, "connectivity"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 298
    .local v4, cm:Landroid/net/ConnectivityManager;
    if-nez v7, :cond_b

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v19

    if-nez v19, :cond_14

    .line 299
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    const-string v20, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 306
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1110047

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 309
    .local v6, isCellBroadcastAppLinkEnabled:Z
    if-eqz v6, :cond_c

    .line 310
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 311
    .local v15, pm:Landroid/content/pm/PackageManager;
    const-string v19, "com.android.cellbroadcastreceiver"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 313
    const/4 v6, 0x0

    .line 319
    .end local v15           #pm:Landroid/content/pm/PackageManager;
    :cond_c
    :goto_5
    if-nez v7, :cond_d

    if-nez v6, :cond_e

    .line 320
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    .line 321
    .restart local v17       #root:Landroid/preference/PreferenceScreen;
    const-string v19, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 322
    .restart local v16       #ps:Landroid/preference/Preference;
    if-eqz v16, :cond_e

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 324
    .end local v16           #ps:Landroid/preference/Preference;
    .end local v17           #root:Landroid/preference/PreferenceScreen;
    :cond_e
    return-void

    .line 201
    .end local v2           #activity:Landroid/app/Activity;
    .end local v3           #androidBeam:Landroid/preference/PreferenceScreen;
    .end local v4           #cm:Landroid/net/ConnectivityManager;
    .end local v6           #isCellBroadcastAppLinkEnabled:Z
    .end local v7           #isSecondaryUser:Z
    .end local v8           #isWimaxEnabled:Z
    .end local v9           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v10           #mGlobalProxy:Landroid/preference/Preference;
    .end local v11           #manageSub:Landroid/preference/PreferenceScreen;
    .end local v12           #nfc:Landroid/preference/CheckBoxPreference;
    .end local v13           #nsd:Landroid/preference/CheckBoxPreference;
    .end local v18           #toggleable:Ljava/lang/String;
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 237
    .restart local v2       #activity:Landroid/app/Activity;
    .restart local v3       #androidBeam:Landroid/preference/PreferenceScreen;
    .restart local v7       #isSecondaryUser:Z
    .restart local v11       #manageSub:Landroid/preference/PreferenceScreen;
    .restart local v12       #nfc:Landroid/preference/CheckBoxPreference;
    .restart local v13       #nsd:Landroid/preference/CheckBoxPreference;
    .restart local v18       #toggleable:Ljava/lang/String;
    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 244
    .restart local v8       #isWimaxEnabled:Z
    :cond_11
    if-eqz v18, :cond_12

    const-string v19, "wimax"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    if-eqz v8, :cond_1

    .line 246
    :cond_12
    const-string v19, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 247
    .restart local v16       #ps:Landroid/preference/Preference;
    const-string v19, "toggle_airplane"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 293
    .end local v16           #ps:Landroid/preference/Preference;
    .restart local v9       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v10       #mGlobalProxy:Landroid/preference/Preference;
    :cond_13
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 301
    .restart local v4       #cm:Landroid/net/ConnectivityManager;
    :cond_14
    const-string v19, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 302
    .local v14, p:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/stocksettings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_4

    .line 316
    .end local v14           #p:Landroid/preference/Preference;
    .restart local v6       #isCellBroadcastAppLinkEnabled:Z
    :catch_0
    move-exception v5

    .line 317
    .local v5, ignored:Ljava/lang/IllegalArgumentException;
    const/4 v6, 0x0

    goto :goto_5
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/stocksettings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 156
    packed-switch p1, :pswitch_data_0

    .line 171
    invoke-super {p0, p1}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 158
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/stocksettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/stocksettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/stocksettings/WirelessSettings$1;

    invoke-direct {v2, p0}, Lcom/android/stocksettings/WirelessSettings$1;-><init>(Lcom/android/stocksettings/WirelessSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onManageMobilePlanClick()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0b03cf

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 107
    const-string v5, "onManageMobilePlanClick:"

    invoke-direct {p0, v5}, Lcom/android/stocksettings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 108
    iput-object v9, p0, Lcom/android/stocksettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/android/stocksettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 111
    .local v3, resources:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/stocksettings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 112
    .local v1, ni:Landroid/net/NetworkInfo;
    iget-object v5, p0, Lcom/android/stocksettings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    .line 114
    iget-object v5, p0, Lcom/android/stocksettings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, url:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/stocksettings/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 120
    iput-object v9, p0, Lcom/android/stocksettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 147
    .end local v0           #intent:Landroid/content/Intent;
    .end local v4           #url:Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/stocksettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onManageMobilePlanClick: message="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/stocksettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/stocksettings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, v7}, Lcom/android/stocksettings/WirelessSettings;->showDialog(I)V

    .line 151
    :cond_0
    return-void

    .line 123
    .restart local v4       #url:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/stocksettings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, operatorName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 127
    iget-object v5, p0, Lcom/android/stocksettings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 129
    const v5, 0x7f0b03ce

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/stocksettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 132
    :cond_2
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {v3, v8, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/stocksettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 136
    :cond_3
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {v3, v8, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/stocksettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 140
    .end local v2           #operatorName:Ljava/lang/String;
    .end local v4           #url:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/stocksettings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    if-nez v5, :cond_5

    .line 142
    const v5, 0x7f0b03d0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/stocksettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 145
    :cond_5
    const v5, 0x7f0b03d1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/stocksettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 371
    invoke-super {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onPause()V

    .line 373
    iget-object v0, p0, Lcom/android/stocksettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/stocksettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/stocksettings/AirplaneModeEnabler;->pause()V

    .line 374
    iget-object v0, p0, Lcom/android/stocksettings/WirelessSettings;->mNfcEnabler:Lcom/android/stocksettings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/stocksettings/WirelessSettings;->mNfcEnabler:Lcom/android/stocksettings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/stocksettings/nfc/NfcEnabler;->pause()V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/WirelessSettings;->mNsdEnabler:Lcom/android/stocksettings/NsdEnabler;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/android/stocksettings/WirelessSettings;->mNsdEnabler:Lcom/android/stocksettings/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/stocksettings/NsdEnabler;->pause()V

    .line 380
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick: preference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/stocksettings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/android/stocksettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/stocksettings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 101
    :goto_0
    return v0

    .line 97
    :cond_0
    const-string v0, "manage_mobile_plan"

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/android/stocksettings/WirelessSettings;->onManageMobilePlanClick()V

    .line 101
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 349
    invoke-super {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onResume()V

    .line 351
    iget-object v0, p0, Lcom/android/stocksettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/stocksettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/stocksettings/AirplaneModeEnabler;->resume()V

    .line 352
    iget-object v0, p0, Lcom/android/stocksettings/WirelessSettings;->mNfcEnabler:Lcom/android/stocksettings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/stocksettings/WirelessSettings;->mNfcEnabler:Lcom/android/stocksettings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/stocksettings/nfc/NfcEnabler;->resume()V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/WirelessSettings;->mNsdEnabler:Lcom/android/stocksettings/NsdEnabler;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/android/stocksettings/WirelessSettings;->mNsdEnabler:Lcom/android/stocksettings/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/stocksettings/NsdEnabler;->resume()V

    .line 358
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 362
    invoke-super {p0, p1}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 364
    iget-object v0, p0, Lcom/android/stocksettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    const-string v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/android/stocksettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_0
    return-void
.end method
