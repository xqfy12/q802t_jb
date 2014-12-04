.class public Lcom/android/stocksettings/LedBlinkManagement;
.super Landroid/preference/PreferenceActivity;
.source "LedBlinkManagement.java"


# instance fields
.field KEY_LOWER_POWER:Ljava/lang/String;

.field KEY_MISSING_CALL:Ljava/lang/String;

.field KEY_MISSING_MSG:Ljava/lang/String;

.field KEY_OTHER:Ljava/lang/String;

.field LOG_TAG:Ljava/lang/String;

.field private mCallPref:Landroid/preference/CheckBoxPreference;

.field private mLowerPowerPref:Landroid/preference/CheckBoxPreference;

.field private mMsgPref:Landroid/preference/CheckBoxPreference;

.field private mOtherPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 30
    const-string v0, "LedBlinkManagement"

    iput-object v0, p0, Lcom/android/stocksettings/LedBlinkManagement;->LOG_TAG:Ljava/lang/String;

    .line 31
    const-string v0, "led_missing_call"

    iput-object v0, p0, Lcom/android/stocksettings/LedBlinkManagement;->KEY_MISSING_CALL:Ljava/lang/String;

    .line 32
    const-string v0, "led_missing_message"

    iput-object v0, p0, Lcom/android/stocksettings/LedBlinkManagement;->KEY_MISSING_MSG:Ljava/lang/String;

    .line 33
    const-string v0, "led_lowerpower"

    iput-object v0, p0, Lcom/android/stocksettings/LedBlinkManagement;->KEY_LOWER_POWER:Ljava/lang/String;

    .line 34
    const-string v0, "led_other"

    iput-object v0, p0, Lcom/android/stocksettings/LedBlinkManagement;->KEY_OTHER:Ljava/lang/String;

    return-void
.end method

.method private changeSaveManageValues(ZI)V
    .locals 4
    .parameter "checked"
    .parameter "flag"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/stocksettings/LedBlinkManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "save_power_management"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 76
    .local v0, values:I
    iget-object v1, p0, Lcom/android/stocksettings/LedBlinkManagement;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeSaveManageValues values "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    if-eqz p1, :cond_0

    .line 78
    or-int/2addr v0, p2

    .line 81
    :goto_0
    invoke-virtual {p0}, Lcom/android/stocksettings/LedBlinkManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "save_power_management"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 83
    iget-object v1, p0, Lcom/android/stocksettings/LedBlinkManagement;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeSaveManageValues end values "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void

    .line 80
    :cond_0
    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f05001a

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/LedBlinkManagement;->addPreferencesFromResource(I)V

    .line 45
    iget-object v0, p0, Lcom/android/stocksettings/LedBlinkManagement;->KEY_MISSING_CALL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/LedBlinkManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/stocksettings/LedBlinkManagement;->mCallPref:Landroid/preference/CheckBoxPreference;

    .line 46
    iget-object v0, p0, Lcom/android/stocksettings/LedBlinkManagement;->KEY_MISSING_MSG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/LedBlinkManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/stocksettings/LedBlinkManagement;->mMsgPref:Landroid/preference/CheckBoxPreference;

    .line 47
    iget-object v0, p0, Lcom/android/stocksettings/LedBlinkManagement;->KEY_LOWER_POWER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/LedBlinkManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/stocksettings/LedBlinkManagement;->mLowerPowerPref:Landroid/preference/CheckBoxPreference;

    .line 48
    iget-object v0, p0, Lcom/android/stocksettings/LedBlinkManagement;->KEY_OTHER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/LedBlinkManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/stocksettings/LedBlinkManagement;->mOtherPref:Landroid/preference/CheckBoxPreference;

    .line 49
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 89
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "led_missing_call"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, p2

    .line 90
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 91
    .local v1, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 92
    .local v0, checked:Z
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/stocksettings/LedBlinkManagement;->changeSaveManageValues(ZI)V

    .line 94
    iget-object v2, p0, Lcom/android/stocksettings/LedBlinkManagement;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "led_missing_call check "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v0           #checked:Z
    .end local v1           #pref:Landroid/preference/CheckBoxPreference;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 96
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "led_missing_message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, p2

    .line 97
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 98
    .restart local v1       #pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 99
    .restart local v0       #checked:Z
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/stocksettings/LedBlinkManagement;->changeSaveManageValues(ZI)V

    .line 100
    iget-object v2, p0, Lcom/android/stocksettings/LedBlinkManagement;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "led_missing_message check "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    .end local v0           #checked:Z
    .end local v1           #pref:Landroid/preference/CheckBoxPreference;
    :cond_2
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "led_lowerpower"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v1, p2

    .line 103
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 104
    .restart local v1       #pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 105
    .restart local v0       #checked:Z
    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Lcom/android/stocksettings/LedBlinkManagement;->changeSaveManageValues(ZI)V

    .line 106
    iget-object v2, p0, Lcom/android/stocksettings/LedBlinkManagement;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "led_lowerpower check "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    .end local v0           #checked:Z
    .end local v1           #pref:Landroid/preference/CheckBoxPreference;
    :cond_3
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "led_other"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 109
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 110
    .restart local v1       #pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 111
    .restart local v0       #checked:Z
    const/16 v2, 0x8

    invoke-direct {p0, v0, v2}, Lcom/android/stocksettings/LedBlinkManagement;->changeSaveManageValues(ZI)V

    .line 112
    iget-object v2, p0, Lcom/android/stocksettings/LedBlinkManagement;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "led_other check "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 54
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 55
    invoke-virtual {p0}, Lcom/android/stocksettings/LedBlinkManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "save_power_management"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 58
    .local v0, values:I
    iget-object v1, p0, Lcom/android/stocksettings/LedBlinkManagement;->mCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 59
    iget-object v4, p0, Lcom/android/stocksettings/LedBlinkManagement;->mCallPref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 61
    iget-object v1, p0, Lcom/android/stocksettings/LedBlinkManagement;->mMsgPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 62
    iget-object v4, p0, Lcom/android/stocksettings/LedBlinkManagement;->mMsgPref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 64
    iget-object v1, p0, Lcom/android/stocksettings/LedBlinkManagement;->mLowerPowerPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 65
    iget-object v4, p0, Lcom/android/stocksettings/LedBlinkManagement;->mLowerPowerPref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 67
    iget-object v1, p0, Lcom/android/stocksettings/LedBlinkManagement;->mOtherPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 68
    iget-object v1, p0, Lcom/android/stocksettings/LedBlinkManagement;->mOtherPref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    :goto_3
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 70
    return-void

    :cond_0
    move v1, v3

    .line 59
    goto :goto_0

    :cond_1
    move v1, v3

    .line 62
    goto :goto_1

    :cond_2
    move v1, v3

    .line 65
    goto :goto_2

    :cond_3
    move v2, v3

    .line 68
    goto :goto_3
.end method
