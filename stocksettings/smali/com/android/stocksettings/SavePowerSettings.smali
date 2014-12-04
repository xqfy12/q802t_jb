.class public Lcom/android/stocksettings/SavePowerSettings;
.super Lcom/android/stocksettings/SettingsPreferenceFragment;
.source "SavePowerSettings.java"


# instance fields
.field private KEY_HAPTIC_FEEDBACK:Ljava/lang/String;

.field private KEY_PDP:Ljava/lang/String;

.field LOG_TAG:Ljava/lang/String;

.field private mHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private pdp:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;-><init>()V

    .line 30
    const-string v0, "SavePowerSettings"

    iput-object v0, p0, Lcom/android/stocksettings/SavePowerSettings;->LOG_TAG:Ljava/lang/String;

    .line 33
    const-string v0, "pdp_savepower"

    iput-object v0, p0, Lcom/android/stocksettings/SavePowerSettings;->KEY_PDP:Ljava/lang/String;

    .line 34
    const-string v0, "haptic_feedback"

    iput-object v0, p0, Lcom/android/stocksettings/SavePowerSettings;->KEY_HAPTIC_FEEDBACK:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f050027

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/SavePowerSettings;->addPreferencesFromResource(I)V

    .line 40
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 60
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "airplane_lock_offon"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 62
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 63
    .local v2, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v6, "com.zte.schapmonoff"

    const-string v7, "com.zte.schapmonoff.AlarmClock"

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .local v1, cn:Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0}, Lcom/android/stocksettings/SavePowerSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 66
    invoke-virtual {p0, v2}, Lcom/android/stocksettings/SavePowerSettings;->startActivity(Landroid/content/Intent;)V

    .line 84
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return v4

    .line 68
    .restart local v1       #cn:Landroid/content/ComponentName;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_0
    iget-object v5, p0, Lcom/android/stocksettings/SavePowerSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to start activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "pdp_savepower"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v3, p2

    .line 74
    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 75
    .local v3, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 76
    .local v0, checked:Z
    invoke-virtual {p0}, Lcom/android/stocksettings/SavePowerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pdp_save_battery"

    if-eqz v0, :cond_3

    :goto_1
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 78
    iget-object v4, p0, Lcom/android/stocksettings/SavePowerSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pdp_savepower check "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v0           #checked:Z
    .end local v3           #pref:Landroid/preference/CheckBoxPreference;
    :cond_2
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_0

    .restart local v0       #checked:Z
    .restart local v3       #pref:Landroid/preference/CheckBoxPreference;
    :cond_3
    move v4, v5

    .line 76
    goto :goto_1

    .line 80
    .end local v0           #checked:Z
    .end local v3           #pref:Landroid/preference/CheckBoxPreference;
    :cond_4
    iget-object v6, p0, Lcom/android/stocksettings/SavePowerSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_2

    .line 81
    invoke-virtual {p0}, Lcom/android/stocksettings/SavePowerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "haptic_feedback_enabled"

    iget-object v8, p0, Lcom/android/stocksettings/SavePowerSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_5

    :goto_3
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_5
    move v4, v5

    goto :goto_3
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 44
    invoke-super {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onResume()V

    .line 45
    iget-object v0, p0, Lcom/android/stocksettings/SavePowerSettings;->KEY_HAPTIC_FEEDBACK:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/SavePowerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/stocksettings/SavePowerSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 46
    iget-object v0, p0, Lcom/android/stocksettings/SavePowerSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/stocksettings/SavePowerSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 49
    iget-object v3, p0, Lcom/android/stocksettings/SavePowerSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/stocksettings/SavePowerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "haptic_feedback_enabled"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/SavePowerSettings;->KEY_PDP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/SavePowerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/stocksettings/SavePowerSettings;->pdp:Landroid/preference/CheckBoxPreference;

    .line 53
    iget-object v0, p0, Lcom/android/stocksettings/SavePowerSettings;->pdp:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/android/stocksettings/SavePowerSettings;->pdp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/stocksettings/SavePowerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pdp_save_battery"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 56
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 49
    goto :goto_0

    :cond_3
    move v1, v2

    .line 54
    goto :goto_1
.end method
