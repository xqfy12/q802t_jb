.class public Lcom/android/stocksettings/multisimsettings/MultiSimSettings;
.super Landroid/preference/PreferenceActivity;
.source "MultiSimSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;
    }
.end annotation


# static fields
.field private static final KEY_PREFERRED_SUBSCRIPTION_LIST:[Ljava/lang/String;

.field private static final KEY_PREFERRED_SUBSCRIPTION_LIST_NO_DATA:[Ljava/lang/String;

.field private static final PREFERRED_SUB_DATA_LIST_ENTRY_SLOT_ONE:[Ljava/lang/String;

.field private static mNeedReshowAlertDialog:Z

.field private static mNeedReshowDisEnableProDia:Z

.field private static mNeedReshowSetDataSubProDia:Z

.field private static mSimOneEnabler:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

.field private static mSimTwoEnabler:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;


# instance fields
.field private disableDataSub2:Z

.field private isPause:Z

.field private mConfigSub:Landroid/preference/PreferenceScreen;

.field private mDisableEnableAlertDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

.field private mDisableEnableProgressDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

.field private mHandler:Landroid/os/Handler;

.field private mPreferredSubLists:[Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

.field private mSetDataSubAlertDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

.field private mSetDataSubProgressDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "voice_list"

    aput-object v1, v0, v2

    const-string v1, "data_list"

    aput-object v1, v0, v3

    const-string v1, "sms_list"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->KEY_PREFERRED_SUBSCRIPTION_LIST:[Ljava/lang/String;

    .line 82
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "voice_list"

    aput-object v1, v0, v2

    const-string v1, "sms_list"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->KEY_PREFERRED_SUBSCRIPTION_LIST_NO_DATA:[Ljava/lang/String;

    .line 86
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "SLOT1"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->PREFERRED_SUB_DATA_LIST_ENTRY_SLOT_ONE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 90
    iput-boolean v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->disableDataSub2:Z

    .line 93
    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mDisableEnableProgressDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    .line 94
    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mSetDataSubProgressDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    .line 95
    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mDisableEnableAlertDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    .line 96
    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mSetDataSubAlertDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    .line 97
    iput-boolean v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->isPause:Z

    .line 128
    new-instance v0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$1;-><init>(Lcom/android/stocksettings/multisimsettings/MultiSimSettings;)V

    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    .line 438
    return-void
.end method

.method static synthetic access$000(Lcom/android/stocksettings/multisimsettings/MultiSimSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/stocksettings/multisimsettings/MultiSimSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->dismissProgressDialog(I)V

    return-void
.end method

.method static synthetic access$1000()Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mSimTwoEnabler:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/stocksettings/multisimsettings/MultiSimSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->resume()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/stocksettings/multisimsettings/MultiSimSettings;ILandroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->showProgressDialog(ILandroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/stocksettings/multisimsettings/MultiSimSettings;ILjava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->showDialog(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    sput-boolean p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mNeedReshowAlertDialog:Z

    return p0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    sput-boolean p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mNeedReshowDisEnableProDia:Z

    return p0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    sput-boolean p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mNeedReshowSetDataSubProDia:Z

    return p0
.end method

.method static synthetic access$900()Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mSimOneEnabler:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    return-object v0
.end method

.method private dismissProgressDialog(I)V
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 419
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mSetDataSubProgressDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mSetDataSubProgressDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-virtual {v0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->dismiss()V

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mDisableEnableProgressDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mDisableEnableProgressDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-virtual {v0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->dismiss()V

    goto :goto_0
.end method

.method private dissmissAlertDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 428
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DisableEnableAlertDialog"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    move-object v0, v1

    check-cast v0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    .line 431
    .local v0, dialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;
    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->dismiss()V

    .line 433
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mNeedReshowAlertDialog:Z

    .line 436
    .end local v0           #dialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;
    :cond_0
    return-void
.end method

.method private initPreferences()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 176
    iput-boolean v8, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->disableDataSub2:Z

    .line 177
    const-string v5, "persist.env.data.disable.sub2"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 178
    const-string v5, "MultiSimSettings"

    const-string v6, "prop persist.env.data.enable.sub2 true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v2, 0x1

    .line 180
    .local v2, inChina:Z
    invoke-static {}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->isSubActive(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 181
    invoke-static {v9}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, operatorNumber:Ljava/lang/String;
    const-string v5, "MultiSimSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "operatorNumber: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v10, :cond_0

    .line 185
    invoke-virtual {v4, v8, v10}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 187
    .local v3, mcc:Ljava/lang/String;
    const-string v5, "460"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "455"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 188
    const/4 v2, 0x0

    .line 192
    .end local v3           #mcc:Ljava/lang/String;
    .end local v4           #operatorNumber:Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_1

    .line 193
    iput-boolean v9, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->disableDataSub2:Z

    .line 197
    .end local v2           #inChina:Z
    :cond_1
    iget-boolean v5, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->disableDataSub2:Z

    if-eqz v5, :cond_4

    .line 198
    sget-object v5, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->KEY_PREFERRED_SUBSCRIPTION_LIST_NO_DATA:[Ljava/lang/String;

    array-length v5, v5

    new-array v5, v5, [Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    iput-object v5, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mPreferredSubLists:[Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    .line 201
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v5, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->KEY_PREFERRED_SUBSCRIPTION_LIST_NO_DATA:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 202
    iget-object v6, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mPreferredSubLists:[Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    sget-object v5, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->KEY_PREFERRED_SUBSCRIPTION_LIST_NO_DATA:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {p0, v5}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    aput-object v5, v6, v1

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    :cond_2
    iget-object v5, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mPreferredSubLists:[Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    aget-object v5, v5, v8

    sget-object v6, Lcom/android/stocksettings/multisimsettings/MultiSimSettingsConstants;->PREFERRED_SUBSCRIPTION_LISTS:[I

    aget v6, v6, v8

    iget-object v7, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v7}, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->setType(ILandroid/os/Handler;)V

    .line 209
    iget-object v5, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mPreferredSubLists:[Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    aget-object v5, v5, v9

    sget-object v6, Lcom/android/stocksettings/multisimsettings/MultiSimSettingsConstants;->PREFERRED_SUBSCRIPTION_LISTS:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v7}, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->setType(ILandroid/os/Handler;)V

    .line 211
    const-string v5, "data_list"

    invoke-virtual {p0, v5}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    .line 213
    .local v0, datalist:Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;
    const-string v5, "0"

    invoke-virtual {v0, v5}, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->setValue(Ljava/lang/String;)V

    .line 214
    sget-object v5, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->PREFERRED_SUB_DATA_LIST_ENTRY_SLOT_ONE:[Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Settings$System;->MULTI_SIM_NAME:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 218
    invoke-virtual {v0, v8}, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->setEnabled(Z)V

    .line 240
    .end local v0           #datalist:Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;
    :cond_3
    return-void

    .line 220
    .end local v1           #i:I
    :cond_4
    sget-object v5, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->KEY_PREFERRED_SUBSCRIPTION_LIST:[Ljava/lang/String;

    array-length v5, v5

    new-array v5, v5, [Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    iput-object v5, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mPreferredSubLists:[Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    .line 223
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    sget-object v5, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->KEY_PREFERRED_SUBSCRIPTION_LIST:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 224
    iget-object v6, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mPreferredSubLists:[Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    sget-object v5, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->KEY_PREFERRED_SUBSCRIPTION_LIST:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {p0, v5}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    aput-object v5, v6, v1

    .line 226
    iget-object v5, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mPreferredSubLists:[Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    aget-object v5, v5, v1

    sget-object v6, Lcom/android/stocksettings/multisimsettings/MultiSimSettingsConstants;->PREFERRED_SUBSCRIPTION_LISTS:[I

    aget v6, v6, v1

    iget-object v7, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v7}, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->setType(ILandroid/os/Handler;)V

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initSIMEnalber()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 255
    const-string v3, "sim_one_enabler_key"

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    sput-object v3, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mSimOneEnabler:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    .line 256
    sget-object v3, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mSimOneEnabler:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    invoke-virtual {v3}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 257
    .local v1, sub1_intent:Landroid/content/Intent;
    const-string v3, "subscription"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 259
    const-string v3, "sim_two_enabler_key"

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    sput-object v3, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mSimTwoEnabler:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    .line 260
    sget-object v3, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mSimTwoEnabler:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    invoke-virtual {v3}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 261
    .local v2, sub2_intent:Landroid/content/Intent;
    const-string v3, "subscription"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    sget-object v3, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mSimOneEnabler:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    iget-object v4, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v4}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->setSubscription(ILandroid/os/Handler;)V

    .line 263
    sget-object v3, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mSimTwoEnabler:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    iget-object v4, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, v4}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->setSubscription(ILandroid/os/Handler;)V

    .line 266
    const-string v3, "config_sub"

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    .line 267
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->isNullSub()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    iget-object v3, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "CONFIG_SUB"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    const-string v3, "MultiSimSettings"

    const-string v4, "Airplane mode is ON, grayout the config subscription menu!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v3, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 274
    :cond_0
    sget-object v3, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mSimOneEnabler:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    invoke-virtual {v3, v7}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->setSwitchVisibility(I)V

    .line 275
    sget-object v3, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mSimTwoEnabler:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    invoke-virtual {v3, v7}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->setSwitchVisibility(I)V

    .line 283
    :goto_0
    return-void

    .line 277
    :cond_1
    const-string v3, "multi_sim_settings"

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 279
    .local v0, multiSimSettings:Landroid/preference/PreferenceCategory;
    iget-object v3, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 280
    sget-object v3, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mSimOneEnabler:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    invoke-virtual {v3, v5}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->setSwitchVisibility(I)V

    .line 281
    sget-object v3, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mSimTwoEnabler:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    invoke-virtual {v3, v5}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->setSwitchVisibility(I)V

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isNullSub()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 245
    invoke-static {}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-result-object v1

    .line 246
    .local v1, subscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->setDefaultApp(I)Lcom/codeaurora/telephony/msim/Subscription;

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->setDefaultApp(I)Lcom/codeaurora/telephony/msim/Subscription;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    move v0, v2

    .line 251
    .local v0, getNullSub:Z
    :cond_2
    return v0
.end method

.method private isShowDialog(I)Z
    .locals 3
    .parameter "dialogId"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 337
    if-nez p1, :cond_2

    .line 338
    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mSetDataSubProgressDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mSetDataSubProgressDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-virtual {v2}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->getShowsDialog()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 347
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 338
    goto :goto_0

    .line 340
    :cond_2
    if-ne p1, v0, :cond_4

    .line 341
    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mDisableEnableProgressDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mDisableEnableProgressDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-virtual {v2}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->getShowsDialog()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 343
    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    .line 344
    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mDisableEnableAlertDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mDisableEnableAlertDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-virtual {v2}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->getShowsDialog()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 347
    goto :goto_0
.end method

.method private resume()V
    .locals 8

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mPreferredSubLists:[Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    .local v0, arr$:[Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 324
    .local v4, subPref:Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;
    invoke-virtual {v4}, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->resume()V

    .line 323
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    .end local v4           #subPref:Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;
    :cond_0
    iget-boolean v5, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->disableDataSub2:Z

    if-eqz v5, :cond_1

    .line 328
    const-string v5, "data_list"

    invoke-virtual {p0, v5}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    .line 330
    .local v1, datalist:Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;
    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Settings$System;->MULTI_SIM_NAME:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 334
    .end local v1           #datalist:Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;
    :cond_1
    return-void
.end method

.method private showDialog(ILjava/lang/String;I)V
    .locals 3
    .parameter "dialogId"
    .parameter "dialog_msg"
    .parameter "subId"

    .prologue
    .line 380
    const-string v0, "MultiSimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDialog dialogId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isPause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->isPause:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 382
    invoke-static {p1, p2}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->newInstance(ILjava/lang/String;)Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mSetDataSubAlertDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    .line 383
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mSetDataSubAlertDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SetDataSubAlertDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 385
    invoke-static {p1, p2}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->newInstance(ILjava/lang/String;)Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mDisableEnableAlertDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    .line 386
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mDisableEnableAlertDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    sput p3, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->mSubId:I

    .line 387
    iget-boolean v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->isPause:Z

    if-nez v0, :cond_2

    .line 388
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mDisableEnableAlertDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DisableEnableAlertDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 390
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mNeedReshowAlertDialog:Z

    goto :goto_0
.end method

.method private showProgressDialog(ILandroid/os/Message;)V
    .locals 9
    .parameter "dialogId"
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    .line 395
    if-nez p1, :cond_1

    .line 396
    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->newInstance(ILjava/lang/String;)Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mSetDataSubProgressDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    .line 397
    iget-object v4, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mSetDataSubProgressDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "SetDataSubProgressDialog"

    invoke-virtual {v4, v5, v6}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 398
    sput-boolean v8, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mNeedReshowSetDataSubProDia:Z

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    if-ne p1, v8, :cond_0

    .line 400
    if-eqz p2, :cond_0

    .line 401
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 402
    .local v0, b:Landroid/os/Bundle;
    const-string v4, "mSubId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 403
    .local v3, subId:I
    const-string v4, "mEnabled"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 404
    .local v1, enabled:Ljava/lang/Boolean;
    const-string v4, "message"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, message:Ljava/lang/String;
    invoke-static {v8, v2}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->newInstance(ILjava/lang/String;)Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mDisableEnableProgressDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    .line 407
    iget-object v4, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mDisableEnableProgressDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->mEnabled:Z

    .line 408
    iget-object v4, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mDisableEnableProgressDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    sput v3, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->mSubId:I

    .line 409
    iget-object v4, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mDisableEnableProgressDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "DisableEnableProgressDialog"

    invoke-virtual {v4, v5, v6}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 411
    iget-object v4, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    const-wide/32 v6, 0xafc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 413
    sput-boolean v8, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mNeedReshowDisEnableProDia:Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 287
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 289
    const v0, 0x7f05001e

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->addPreferencesFromResource(I)V

    .line 290
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->initPreferences()V

    .line 291
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->initSIMEnalber()V

    .line 292
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x6

    .line 547
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 550
    :cond_0
    sget-object v0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mSimOneEnabler:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->setSubscription(ILandroid/os/Handler;)V

    .line 551
    sget-object v0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mSimTwoEnabler:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->setSubscription(ILandroid/os/Handler;)V

    .line 552
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 553
    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->finish()V

    .line 376
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 352
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 353
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mPreferredSubLists:[Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    .local v0, arr$:[Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 354
    .local v3, subPref:Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;
    invoke-virtual {v3}, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->pause()V

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    .end local v3           #subPref:Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->isPause:Z

    .line 358
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 296
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 297
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->resume()V

    .line 299
    iput-boolean v3, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->isPause:Z

    .line 302
    invoke-direct {p0, v3}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->isShowDialog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mNeedReshowSetDataSubProDia:Z

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mSetDataSubProgressDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SetDataSubProgressDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 304
    sput-boolean v3, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mNeedReshowSetDataSubProDia:Z

    .line 306
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->isShowDialog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mNeedReshowDisEnableProDia:Z

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mDisableEnableProgressDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DisableEnableProgressDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 308
    sput-boolean v3, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mNeedReshowDisEnableProDia:Z

    .line 310
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->isShowDialog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mNeedReshowAlertDialog:Z

    if-eqz v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mDisableEnableAlertDialog:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DisableEnableAlertDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 312
    sput-boolean v3, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mNeedReshowAlertDialog:Z

    .line 315
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 364
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->dismissProgressDialog(I)V

    .line 365
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->dismissProgressDialog(I)V

    .line 366
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->dissmissAlertDialog(I)V

    .line 369
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 370
    return-void
.end method
