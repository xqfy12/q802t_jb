.class public Lcom/android/stocksettings/KeepAliveManagement;
.super Landroid/preference/PreferenceActivity;
.source "KeepAliveManagement.java"


# instance fields
.field KEY_KEEPALIVE_STRONG:Ljava/lang/String;

.field KEY_KEEPALIVE_WEAK:Ljava/lang/String;

.field LOG_TAG:Ljava/lang/String;

.field PROP_KEEP_ALIVE:Ljava/lang/String;

.field private mStrongPref:Landroid/preference/CheckBoxPreference;

.field private mWeakpref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 36
    const-string v0, "KeepAliveManagement"

    iput-object v0, p0, Lcom/android/stocksettings/KeepAliveManagement;->LOG_TAG:Ljava/lang/String;

    .line 37
    const-string v0, "keepAlive_weak"

    iput-object v0, p0, Lcom/android/stocksettings/KeepAliveManagement;->KEY_KEEPALIVE_WEAK:Ljava/lang/String;

    .line 38
    const-string v0, "keepAlive_strong"

    iput-object v0, p0, Lcom/android/stocksettings/KeepAliveManagement;->KEY_KEEPALIVE_STRONG:Ljava/lang/String;

    .line 39
    const-string v0, "persist.sys.keeplive.frequency"

    iput-object v0, p0, Lcom/android/stocksettings/KeepAliveManagement;->PROP_KEEP_ALIVE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f050026

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/KeepAliveManagement;->addPreferencesFromResource(I)V

    .line 47
    iget-object v0, p0, Lcom/android/stocksettings/KeepAliveManagement;->KEY_KEEPALIVE_WEAK:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/KeepAliveManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/stocksettings/KeepAliveManagement;->mWeakpref:Landroid/preference/CheckBoxPreference;

    .line 48
    iget-object v0, p0, Lcom/android/stocksettings/KeepAliveManagement;->KEY_KEEPALIVE_STRONG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/KeepAliveManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/stocksettings/KeepAliveManagement;->mStrongPref:Landroid/preference/CheckBoxPreference;

    .line 49
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stocksettings/KeepAliveManagement;->KEY_KEEPALIVE_WEAK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, p2

    .line 70
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 71
    .local v1, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 72
    .local v0, checked:Z
    iget-object v2, p0, Lcom/android/stocksettings/KeepAliveManagement;->mWeakpref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 73
    iget-object v2, p0, Lcom/android/stocksettings/KeepAliveManagement;->mStrongPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 74
    if-eqz v0, :cond_1

    .line 75
    iget-object v2, p0, Lcom/android/stocksettings/KeepAliveManagement;->PROP_KEEP_ALIVE:Ljava/lang/String;

    const-string v3, "5"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    iget-object v2, p0, Lcom/android/stocksettings/KeepAliveManagement;->LOG_TAG:Ljava/lang/String;

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

    .line 90
    .end local v0           #checked:Z
    .end local v1           #pref:Landroid/preference/CheckBoxPreference;
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 77
    .restart local v0       #checked:Z
    .restart local v1       #pref:Landroid/preference/CheckBoxPreference;
    :cond_1
    iget-object v2, p0, Lcom/android/stocksettings/KeepAliveManagement;->PROP_KEEP_ALIVE:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    .end local v0           #checked:Z
    .end local v1           #pref:Landroid/preference/CheckBoxPreference;
    :cond_2
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stocksettings/KeepAliveManagement;->KEY_KEEPALIVE_STRONG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 81
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 82
    .restart local v1       #pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 83
    .restart local v0       #checked:Z
    iget-object v2, p0, Lcom/android/stocksettings/KeepAliveManagement;->mWeakpref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 84
    iget-object v2, p0, Lcom/android/stocksettings/KeepAliveManagement;->mStrongPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 85
    if-eqz v0, :cond_3

    .line 86
    iget-object v2, p0, Lcom/android/stocksettings/KeepAliveManagement;->PROP_KEEP_ALIVE:Ljava/lang/String;

    const-string v3, "15"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 88
    :cond_3
    iget-object v2, p0, Lcom/android/stocksettings/KeepAliveManagement;->PROP_KEEP_ALIVE:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 55
    iget-object v1, p0, Lcom/android/stocksettings/KeepAliveManagement;->PROP_KEEP_ALIVE:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, values:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/stocksettings/KeepAliveManagement;->mWeakpref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 58
    iget-object v1, p0, Lcom/android/stocksettings/KeepAliveManagement;->mStrongPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 59
    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/android/stocksettings/KeepAliveManagement;->mWeakpref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const-string v1, "15"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/android/stocksettings/KeepAliveManagement;->mStrongPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
