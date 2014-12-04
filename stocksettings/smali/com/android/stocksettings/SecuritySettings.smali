.class public Lcom/android/stocksettings/SecuritySettings;
.super Lcom/android/stocksettings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

.field private mChooseLockSettingsHelper:Lcom/android/stocksettings/ChooseLockSettingsHelper;

.field private mDMAutoBoot:Landroid/preference/CheckBoxPreference;

.field private mDMpoweronPreference:Landroid/preference/CheckBoxPreference;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mIsPrimary:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mShowPassword:Landroid/preference/CheckBoxPreference;

.field private mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

.field private mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 30

    .prologue
    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    .line 140
    .local v16, root:Landroid/preference/PreferenceScreen;
    if-eqz v16, :cond_0

    .line 141
    invoke-virtual/range {v16 .. v16}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 143
    :cond_0
    const v24, 0x7f050028

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    .line 147
    const/4 v15, 0x0

    .line 148
    .local v15, resid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v24

    if-nez v24, :cond_8

    .line 150
    const-string v24, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    .line 151
    .local v10, mUm:Landroid/os/UserManager;
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v23

    .line 152
    .local v23, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    const/16 v18, 0x1

    .line 154
    .local v18, singleUser:Z
    :goto_0
    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 155
    const v15, 0x7f05002c

    .line 177
    .end local v10           #mUm:Landroid/os/UserManager;
    .end local v18           #singleUser:Z
    .end local v23           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/stocksettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 181
    const-string v24, "device_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    .line 184
    .local v6, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    if-nez v24, :cond_a

    const/16 v24, 0x1

    :goto_2
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/stocksettings/SecuritySettings;->mIsPrimary:Z

    .line 186
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/stocksettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 188
    const-string v24, "owner_info_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    .line 189
    .local v13, ownerInfoPref:Landroid/preference/Preference;
    if-eqz v13, :cond_1

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v24

    if-eqz v24, :cond_b

    .line 191
    const v24, 0x7f0b011a

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 198
    .end local v13           #ownerInfoPref:Landroid/preference/Preference;
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/stocksettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 199
    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v24

    packed-switch v24, :pswitch_data_0

    .line 212
    :cond_2
    :goto_4
    :pswitch_0
    const-string v24, "lock_after_timeout"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/ListPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    .line 214
    invoke-direct/range {p0 .. p0}, Lcom/android/stocksettings/SecuritySettings;->setupLockAfterPreference()V

    .line 215
    invoke-direct/range {p0 .. p0}, Lcom/android/stocksettings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 219
    :cond_3
    const-string v24, "biometric_weak_liveliness"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    .line 223
    const-string v24, "visiblepattern"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 226
    const-string v24, "power_button_instantly_locks"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    .line 230
    const v24, 0x7f050029

    move/from16 v0, v24

    if-ne v15, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v24

    const/high16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    .line 233
    const-string v24, "security_category"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceGroup;

    .line 235
    .local v17, securityCategory:Landroid/preference/PreferenceGroup;
    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    .line 236
    const-string v24, "visiblepattern"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 241
    .end local v17           #securityCategory:Landroid/preference/PreferenceGroup;
    :cond_4
    const v24, 0x7f05002d

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 243
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v24

    if-eqz v24, :cond_12

    .line 244
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v20

    .line 245
    .local v20, tm:Landroid/telephony/MSimTelephonyManager;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v12

    .line 246
    .local v12, numPhones:I
    const/4 v5, 0x1

    .line 247
    .local v5, disableLock:Z
    const/4 v14, 0x1

    .line 248
    .local v14, removeLock:Z
    const/4 v7, 0x0

    .local v7, i:I
    :goto_5
    if-ge v7, v12, :cond_c

    .line 250
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 252
    const/4 v14, 0x0

    .line 253
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v24

    if-eqz v24, :cond_5

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v24

    const/16 v25, 0x6

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    .line 256
    const/4 v5, 0x0

    .line 248
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 152
    .end local v5           #disableLock:Z
    .end local v6           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v7           #i:I
    .end local v12           #numPhones:I
    .end local v14           #removeLock:Z
    .end local v20           #tm:Landroid/telephony/MSimTelephonyManager;
    .restart local v10       #mUm:Landroid/os/UserManager;
    .restart local v23       #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 157
    .restart local v18       #singleUser:Z
    :cond_7
    const v15, 0x7f05002a

    goto/16 :goto_1

    .line 159
    .end local v10           #mUm:Landroid/os/UserManager;
    .end local v18           #singleUser:Z
    .end local v23           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v24

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v24

    if-eqz v24, :cond_9

    .line 161
    const v15, 0x7f050029

    goto/16 :goto_1

    .line 163
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v24

    sparse-switch v24, :sswitch_data_0

    goto/16 :goto_1

    .line 165
    :sswitch_0
    const v15, 0x7f05002f

    .line 166
    goto/16 :goto_1

    .line 168
    :sswitch_1
    const v15, 0x7f050031

    .line 169
    goto/16 :goto_1

    .line 173
    :sswitch_2
    const v15, 0x7f05002e

    goto/16 :goto_1

    .line 184
    .restart local v6       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_a
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 193
    .restart local v13       #ownerInfoPref:Landroid/preference/Preference;
    :cond_b
    const v24, 0x7f0b0118

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_3

    .line 202
    .end local v13           #ownerInfoPref:Landroid/preference/Preference;
    :pswitch_1
    const v24, 0x7f05002b

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_4

    .line 206
    :pswitch_2
    const v24, 0x7f050032

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_4

    .line 260
    .restart local v5       #disableLock:Z
    .restart local v7       #i:I
    .restart local v12       #numPhones:I
    .restart local v14       #removeLock:Z
    .restart local v20       #tm:Landroid/telephony/MSimTelephonyManager;
    :cond_c
    if-eqz v14, :cond_11

    .line 261
    const-string v24, "sim_lock"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 284
    .end local v5           #disableLock:Z
    .end local v7           #i:I
    .end local v12           #numPhones:I
    .end local v14           #removeLock:Z
    .end local v20           #tm:Landroid/telephony/MSimTelephonyManager;
    :cond_d
    :goto_6
    const-string v24, "show_password"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    .line 286
    const-string v24, "sim_lock"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    if-eqz v24, :cond_e

    .line 288
    const-string v24, "sim_lock_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 290
    .local v8, iccLock:Landroid/preference/Preference;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 291
    .local v9, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v24

    if-eqz v24, :cond_16

    .line 292
    const-string v24, "com.android.stocksettings"

    const-string v25, "com.android.stocksettings.SelectSubscription"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v24, "PACKAGE"

    const-string v25, "com.android.stocksettings"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v24, "TARGET_CLASS"

    const-string v25, "com.android.stocksettings.IccLockSettings"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    :goto_7
    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 304
    .end local v8           #iccLock:Landroid/preference/Preference;
    .end local v9           #intent:Landroid/content/Intent;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    const-string v25, "user"

    invoke-virtual/range {v24 .. v25}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/UserManager;

    .line 305
    .local v22, um:Landroid/os/UserManager;
    const-string v24, "no_config_credentials"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_18

    .line 306
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 307
    const-string v24, "credential_storage_type"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 309
    .local v3, credentialStorageType:Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v24

    if-eqz v24, :cond_17

    const v19, 0x7f0b05f7

    .line 312
    .local v19, storageSummaryRes:I
    :goto_8
    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 314
    const-string v24, "reset_credentials"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 320
    .end local v3           #credentialStorageType:Landroid/preference/Preference;
    .end local v19           #storageSummaryRes:I
    :goto_9
    const-string v24, "device_admin_category"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 322
    .local v4, deviceAdminCategory:Landroid/preference/PreferenceGroup;
    const-string v24, "toggle_install_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v24, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/stocksettings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/stocksettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 330
    const-string v24, "toggle_verify_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    .line 331
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/stocksettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/android/stocksettings/SecuritySettings;->showVerifierSetting()Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 332
    invoke-direct/range {p0 .. p0}, Lcom/android/stocksettings/SecuritySettings;->isVerifierInstalled()Z

    move-result v24

    if-eqz v24, :cond_19

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v24, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/stocksettings/SecuritySettings;->isVerifyAppsEnabled()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 346
    :goto_a
    const-string v24, "DM_poweron"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/SecuritySettings;->mDMpoweronPreference:Landroid/preference/CheckBoxPreference;

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/SecuritySettings;->mDMpoweronPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v26, "allow_dm_start_after_boot"

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_1c

    const/16 v24, 0x1

    :goto_b
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 350
    const-string v24, "manage_notification_access"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_f

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/SecuritySettings;->mPM:Landroid/content/pm/PackageManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/stocksettings/NotificationAccessSettings;->getListenersCount(Landroid/content/pm/PackageManager;)I

    move-result v21

    .line 353
    .local v21, total:I
    if-nez v21, :cond_1d

    .line 354
    if-eqz v4, :cond_f

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 370
    .end local v21           #total:I
    :cond_f
    :goto_c
    const-string v24, "toggle_dm_autoboot"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/SecuritySettings;->mDMAutoBoot:Landroid/preference/CheckBoxPreference;

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/SecuritySettings;->mDMAutoBoot:Landroid/preference/CheckBoxPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_10

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/SecuritySettings;->mDMAutoBoot:Landroid/preference/CheckBoxPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 384
    :cond_10
    return-object v16

    .line 263
    .end local v4           #deviceAdminCategory:Landroid/preference/PreferenceGroup;
    .end local v22           #um:Landroid/os/UserManager;
    .restart local v5       #disableLock:Z
    .restart local v7       #i:I
    .restart local v12       #numPhones:I
    .restart local v14       #removeLock:Z
    .restart local v20       #tm:Landroid/telephony/MSimTelephonyManager;
    :cond_11
    if-eqz v5, :cond_d

    .line 264
    const-string v24, "sim_lock"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 269
    .end local v5           #disableLock:Z
    .end local v7           #i:I
    .end local v12           #numPhones:I
    .end local v14           #removeLock:Z
    .end local v20           #tm:Landroid/telephony/MSimTelephonyManager;
    :cond_12
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v20

    .line 270
    .local v20, tm:Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/stocksettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v24, v0

    if-eqz v24, :cond_13

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v24

    if-nez v24, :cond_14

    .line 271
    :cond_13
    const-string v24, "sim_lock"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 274
    :cond_14
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_15

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v24

    if-nez v24, :cond_d

    .line 278
    :cond_15
    const-string v24, "sim_lock"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 298
    .end local v20           #tm:Landroid/telephony/TelephonyManager;
    .restart local v8       #iccLock:Landroid/preference/Preference;
    .restart local v9       #intent:Landroid/content/Intent;
    :cond_16
    const-string v24, "com.android.stocksettings"

    const-string v25, "com.android.stocksettings.IccLockSettings"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_7

    .line 309
    .end local v8           #iccLock:Landroid/preference/Preference;
    .end local v9           #intent:Landroid/content/Intent;
    .restart local v3       #credentialStorageType:Landroid/preference/Preference;
    .restart local v22       #um:Landroid/os/UserManager;
    :cond_17
    const v19, 0x7f0b05f8

    goto/16 :goto_8

    .line 316
    .end local v3           #credentialStorageType:Landroid/preference/Preference;
    :cond_18
    const-string v24, "credentials_management"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/SecuritySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 335
    .restart local v4       #deviceAdminCategory:Landroid/preference/PreferenceGroup;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_a

    .line 339
    :cond_1a
    if-eqz v4, :cond_1b

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_a

    .line 342
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_a

    .line 347
    :cond_1c
    const/16 v24, 0x0

    goto/16 :goto_b

    .line 358
    .restart local v21       #total:I
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/stocksettings/SecuritySettings;->getNumEnabledNotificationListeners()I

    move-result v11

    .line 359
    .local v11, n:I
    if-nez v11, :cond_1e

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0b016a

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 363
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0e0007

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v11, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 163
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private disableUnusableTimeouts(J)V
    .locals 10
    .parameter "maxTimeout"

    .prologue
    .line 503
    iget-object v8, p0, Lcom/android/stocksettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 504
    .local v0, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/stocksettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 505
    .local v7, values:[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v2, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 507
    .local v3, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_1

    .line 508
    aget-object v8, v7, v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 509
    .local v4, timeout:J
    cmp-long v8, v4, p1

    if-gtz v8, :cond_0

    .line 510
    aget-object v8, v0, v1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 514
    .end local v4           #timeout:J
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v0

    if-ne v8, v9, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v7

    if-eq v8, v9, :cond_3

    .line 515
    :cond_2
    iget-object v9, p0, Lcom/android/stocksettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 517
    iget-object v9, p0, Lcom/android/stocksettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 519
    iget-object v8, p0, Lcom/android/stocksettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 520
    .local v6, userPreference:I
    int-to-long v8, v6

    cmp-long v8, v8, p1

    if-gtz v8, :cond_3

    .line 521
    iget-object v8, p0, Lcom/android/stocksettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 528
    .end local v6           #userPreference:I
    :cond_3
    iget-object v9, p0, Lcom/android/stocksettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 529
    return-void

    .line 528
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private getNumEnabledNotificationListeners()I
    .locals 4

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/android/stocksettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_notification_listeners"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, flat:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 392
    :goto_0
    return v2

    .line 391
    :cond_1
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, components:[Ljava/lang/String;
    array-length v2, v0

    goto :goto_0
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 396
    invoke-virtual {p0}, Lcom/android/stocksettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 635
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private isVerifierInstalled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 416
    invoke-virtual {p0}, Lcom/android/stocksettings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 417
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    .local v2, verification:Landroid/content/Intent;
    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 420
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 421
    .local v1, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private isVerifyAppsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 411
    invoke-virtual {p0}, Lcom/android/stocksettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "package_verifier_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDMAutoboot(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/android/stocksettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dm_selfregist_autoboot"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 438
    return-void

    .line 436
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/android/stocksettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 402
    .local v0, um:Landroid/os/UserManager;
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 471
    invoke-virtual {p0}, Lcom/android/stocksettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 473
    .local v2, currentTimeout:J
    iget-object v8, p0, Lcom/android/stocksettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 474
    iget-object v8, p0, Lcom/android/stocksettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 475
    iget-object v8, p0, Lcom/android/stocksettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/stocksettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 476
    .local v0, adminTimeout:J
    :goto_0
    invoke-virtual {p0}, Lcom/android/stocksettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 478
    .local v4, displayTimeout:J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 482
    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/stocksettings/SecuritySettings;->disableUnusableTimeouts(J)V

    .line 484
    :cond_0
    return-void

    .end local v0           #adminTimeout:J
    .end local v4           #displayTimeout:J
    :cond_1
    move-wide v0, v6

    .line 475
    goto :goto_0
.end method

.method private showVerifierSetting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 425
    invoke-virtual {p0}, Lcom/android/stocksettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_setting_visible"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 13

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/android/stocksettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 490
    .local v1, currentTimeout:J
    iget-object v8, p0, Lcom/android/stocksettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 491
    .local v3, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/stocksettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 492
    .local v7, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 493
    .local v0, best:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, v7

    if-ge v4, v8, :cond_1

    .line 494
    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 495
    .local v5, timeout:J
    cmp-long v8, v1, v5

    if-ltz v8, :cond_0

    .line 496
    move v0, v4

    .line 493
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 499
    .end local v5           #timeout:J
    :cond_1
    iget-object v8, p0, Lcom/android/stocksettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v9, 0x7f0b0112

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v3, v0

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/stocksettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 500
    return-void
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 442
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/stocksettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/stocksettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0394

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/stocksettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b043f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 449
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 677
    const v0, 0x7f0b0781

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 643
    invoke-super {p0, p1, p2, p3}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 644
    const/16 v1, 0x7c

    if-ne p1, v1, :cond_0

    if-ne p2, v2, :cond_0

    .line 646
    invoke-virtual {p0}, Lcom/android/stocksettings/SecuritySettings;->startBiometricWeakImprove()V

    .line 658
    :goto_0
    return-void

    .line 648
    :cond_0
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 650
    iget-object v1, p0, Lcom/android/stocksettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/stocksettings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/stocksettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 651
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 657
    .end local v0           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    invoke-direct {p0}, Lcom/android/stocksettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 453
    iget-object v0, p0, Lcom/android/stocksettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 454
    invoke-direct {p0, v1}, Lcom/android/stocksettings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 455
    iget-object v0, p0, Lcom/android/stocksettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/stocksettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 459
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/stocksettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/stocksettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 132
    invoke-virtual {p0}, Lcom/android/stocksettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/SecuritySettings;->mPM:Landroid/content/pm/PackageManager;

    .line 133
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/stocksettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 135
    new-instance v0, Lcom/android/stocksettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/stocksettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/stocksettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/stocksettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/stocksettings/ChooseLockSettingsHelper;

    .line 136
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 463
    invoke-super {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onDestroy()V

    .line 464
    iget-object v0, p0, Lcom/android/stocksettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/stocksettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 467
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 662
    iget-object v2, p0, Lcom/android/stocksettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    .line 663
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 665
    .local v1, timeout:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/stocksettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_lock_after_timeout"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :goto_0
    invoke-direct {p0}, Lcom/android/stocksettings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 672
    .end local v1           #timeout:I
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 667
    .restart local v1       #timeout:I
    :catch_0
    move-exception v0

    .line 668
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "SecuritySettings"

    const-string v3, "could not persist lockAfter timeout setting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 563
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 565
    .local v1, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/stocksettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/stocksettings/ChooseLockSettingsHelper;

    invoke-virtual {v5}, Lcom/android/stocksettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    .line 566
    .local v2, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const-string v5, "unlock_set_or_change"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 567
    const-string v3, "com.android.stocksettings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v5, 0x7b

    invoke-virtual {p0, p0, v3, v5, v6}, Lcom/android/stocksettings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 631
    :cond_0
    :goto_0
    return v4

    .line 569
    :cond_1
    const-string v5, "biometric_weak_improve_matching"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 570
    new-instance v0, Lcom/android/stocksettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/stocksettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/android/stocksettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 572
    .local v0, helper:Lcom/android/stocksettings/ChooseLockSettingsHelper;
    const/16 v3, 0x7c

    invoke-virtual {v0, v3, v6, v6}, Lcom/android/stocksettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 578
    invoke-virtual {p0}, Lcom/android/stocksettings/SecuritySettings;->startBiometricWeakImprove()V

    goto :goto_0

    .line 580
    .end local v0           #helper:Lcom/android/stocksettings/ChooseLockSettingsHelper;
    :cond_2
    const-string v5, "biometric_weak_liveliness"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 581
    invoke-direct {p0, p2}, Lcom/android/stocksettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 582
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 587
    :cond_3
    iget-object v5, p0, Lcom/android/stocksettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 588
    new-instance v0, Lcom/android/stocksettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/stocksettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5, p0}, Lcom/android/stocksettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 590
    .restart local v0       #helper:Lcom/android/stocksettings/ChooseLockSettingsHelper;
    const/16 v5, 0x7d

    invoke-virtual {v0, v5, v6, v6}, Lcom/android/stocksettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 596
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 597
    iget-object v5, p0, Lcom/android/stocksettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 600
    .end local v0           #helper:Lcom/android/stocksettings/ChooseLockSettingsHelper;
    :cond_4
    const-string v5, "lockenabled"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 601
    invoke-direct {p0, p2}, Lcom/android/stocksettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_0

    .line 602
    :cond_5
    const-string v5, "visiblepattern"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 603
    invoke-direct {p0, p2}, Lcom/android/stocksettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_0

    .line 604
    :cond_6
    const-string v5, "power_button_instantly_locks"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 605
    invoke-direct {p0, p2}, Lcom/android/stocksettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto :goto_0

    .line 606
    :cond_7
    iget-object v5, p0, Lcom/android/stocksettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_9

    .line 607
    invoke-virtual {p0}, Lcom/android/stocksettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "show_password"

    iget-object v7, p0, Lcom/android/stocksettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_8

    move v3, v4

    :cond_8
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 609
    :cond_9
    iget-object v5, p0, Lcom/android/stocksettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_b

    .line 610
    iget-object v5, p0, Lcom/android/stocksettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 611
    iget-object v5, p0, Lcom/android/stocksettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 612
    invoke-direct {p0}, Lcom/android/stocksettings/SecuritySettings;->warnAppInstallation()V

    goto/16 :goto_0

    .line 614
    :cond_a
    invoke-direct {p0, v3}, Lcom/android/stocksettings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto/16 :goto_0

    .line 616
    :cond_b
    const-string v5, "toggle_verify_applications"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 617
    invoke-virtual {p0}, Lcom/android/stocksettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "package_verifier_enable"

    iget-object v7, p0, Lcom/android/stocksettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_c

    move v3, v4

    :cond_c
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 619
    :cond_d
    const-string v5, "toggle_dm_autoboot"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 620
    iget-object v3, p0, Lcom/android/stocksettings/SecuritySettings;->mDMAutoBoot:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/stocksettings/SecuritySettings;->setDMAutoboot(Z)V

    goto/16 :goto_0

    .line 622
    :cond_e
    iget-object v5, p0, Lcom/android/stocksettings/SecuritySettings;->mDMpoweronPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_10

    .line 623
    invoke-virtual {p0}, Lcom/android/stocksettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "allow_dm_start_after_boot"

    iget-object v7, p0, Lcom/android/stocksettings/SecuritySettings;->mDMpoweronPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_f

    move v3, v4

    :cond_f
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 628
    :cond_10
    invoke-super {p0, p1, p2}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 533
    invoke-super {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onResume()V

    .line 537
    invoke-direct {p0}, Lcom/android/stocksettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 539
    iget-object v1, p0, Lcom/android/stocksettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/stocksettings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/stocksettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 540
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    iget-object v1, p0, Lcom/android/stocksettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 541
    iget-object v1, p0, Lcom/android/stocksettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 544
    :cond_0
    iget-object v1, p0, Lcom/android/stocksettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 545
    iget-object v1, p0, Lcom/android/stocksettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 547
    :cond_1
    iget-object v1, p0, Lcom/android/stocksettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    .line 548
    iget-object v1, p0, Lcom/android/stocksettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 551
    :cond_2
    iget-object v1, p0, Lcom/android/stocksettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    .line 552
    iget-object v4, p0, Lcom/android/stocksettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/stocksettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "show_password"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 556
    :cond_3
    iget-object v1, p0, Lcom/android/stocksettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    if-eqz v1, :cond_4

    .line 557
    iget-object v1, p0, Lcom/android/stocksettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/stocksettings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v4}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 559
    :cond_4
    return-void

    :cond_5
    move v1, v3

    .line 552
    goto :goto_0

    :cond_6
    move v2, v3

    .line 557
    goto :goto_1
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 681
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 682
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    invoke-virtual {p0, v0}, Lcom/android/stocksettings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 684
    return-void
.end method
