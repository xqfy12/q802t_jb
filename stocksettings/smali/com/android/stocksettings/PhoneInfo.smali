.class public Lcom/android/stocksettings/PhoneInfo;
.super Landroid/preference/PreferenceActivity;
.source "PhoneInfo.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mTuneAway:Landroid/preference/CheckBoxPreference;

.field private mTuneAwayValue:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stocksettings/PhoneInfo;->mTuneAwayValue:Z

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stocksettings/PhoneInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 166
    new-instance v0, Lcom/android/stocksettings/PhoneInfo$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/PhoneInfo$1;-><init>(Lcom/android/stocksettings/PhoneInfo;)V

    iput-object v0, p0, Lcom/android/stocksettings/PhoneInfo;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/stocksettings/PhoneInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/stocksettings/PhoneInfo;->updateTuneAwayStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/stocksettings/PhoneInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/stocksettings/PhoneInfo;->updateTuneAwayState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/stocksettings/PhoneInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/stocksettings/PhoneInfo;->mTuneAwayValue:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/stocksettings/PhoneInfo;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/stocksettings/PhoneInfo;->mTuneAway:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private updateTuneAwayState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/android/stocksettings/PhoneInfo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tune_away"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 138
    .local v1, tuneAwayStatus:Z
    :goto_0
    if-eqz v1, :cond_1

    const v0, 0x7f0b0741

    .line 141
    .local v0, resId:I
    :goto_1
    iget-object v2, p0, Lcom/android/stocksettings/PhoneInfo;->mTuneAway:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 142
    iget-object v2, p0, Lcom/android/stocksettings/PhoneInfo;->mTuneAway:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/stocksettings/PhoneInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    return-void

    .end local v0           #resId:I
    .end local v1           #tuneAwayStatus:Z
    :cond_0
    move v1, v2

    .line 136
    goto :goto_0

    .line 138
    .restart local v1       #tuneAwayStatus:Z
    :cond_1
    const v0, 0x7f0b0742

    goto :goto_1
.end method

.method private updateTuneAwayStatus()V
    .locals 5

    .prologue
    .line 146
    iget-object v2, p0, Lcom/android/stocksettings/PhoneInfo;->mTuneAway:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 147
    .local v1, tuneAwayValue:Z
    iput-boolean v1, p0, Lcom/android/stocksettings/PhoneInfo;->mTuneAwayValue:Z

    .line 148
    const-string v2, "PhoneInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " updateTuneAwayStatus change tuneAwayValue to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v2, p0, Lcom/android/stocksettings/PhoneInfo;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 152
    .local v0, setTuneAwayMsg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/stocksettings/PhoneInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v1, v0}, Lcom/android/internal/telephony/Phone;->setTuneAway(ZLandroid/os/Message;)V

    .line 153
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f050021

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/PhoneInfo;->addPreferencesFromResource(I)V

    .line 86
    const-string v0, "tune_away"

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/PhoneInfo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/stocksettings/PhoneInfo;->mTuneAway:Landroid/preference/CheckBoxPreference;

    .line 87
    iget-object v0, p0, Lcom/android/stocksettings/PhoneInfo;->mTuneAway:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 89
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/PhoneInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 91
    const-string v0, "phone_msim"

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/PhoneInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/MSimTelephonyManager;

    .line 97
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 102
    :goto_0
    invoke-virtual {p0}, Lcom/android/stocksettings/PhoneInfo;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 103
    invoke-virtual {p0}, Lcom/android/stocksettings/PhoneInfo;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    .line 105
    if-nez v0, :cond_1

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/stocksettings/RadioInfo;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 109
    const v3, 0x7f0b07fb

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 110
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 111
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 127
    :cond_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v3

    .line 115
    const/4 v0, 0x1

    :goto_1
    if-gt v0, v3, :cond_0

    .line 116
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/stocksettings/RadioInfo;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 119
    const v6, 0x7f0b00e7

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 120
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    const-string v6, "subscription"

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 124
    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, key:Ljava/lang/String;
    const-string v1, "tune_away"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/stocksettings/PhoneInfo;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/stocksettings/PhoneInfo;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 132
    invoke-direct {p0}, Lcom/android/stocksettings/PhoneInfo;->updateTuneAwayState()V

    .line 133
    return-void
.end method
