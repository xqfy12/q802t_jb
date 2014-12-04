.class public final Lcom/android/stocksettings/wfd/WifiDisplaySettings;
.super Lcom/android/stocksettings/SettingsPreferenceFragment;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stocksettings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    }
.end annotation


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAvailableDevicesCategory:Lcom/android/stocksettings/ProgressCategory;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEmptyView:Landroid/widget/TextView;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private final mSwitchOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mWifiDisplayOnSetting:Z

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

.field private mWifiUtils:Lcom/android/stocksettings/wfd/WifiUtils;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiUtils:Lcom/android/stocksettings/wfd/WifiUtils;

    .line 374
    new-instance v0, Lcom/android/stocksettings/wfd/WifiDisplaySettings$4;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings$4;-><init>(Lcom/android/stocksettings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mSwitchOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 477
    new-instance v0, Lcom/android/stocksettings/wfd/WifiDisplaySettings$7;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings$7;-><init>(Lcom/android/stocksettings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 500
    new-instance v0, Lcom/android/stocksettings/wfd/WifiDisplaySettings$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/stocksettings/wfd/WifiDisplaySettings$8;-><init>(Lcom/android/stocksettings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/stocksettings/wfd/WifiDisplaySettings;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/stocksettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/stocksettings/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/stocksettings/wfd/WifiDisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->update()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/stocksettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->showOptionsDialog(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/stocksettings/wfd/WifiDisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->openAliveShow()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/stocksettings/wfd/WifiDisplaySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/stocksettings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/stocksettings/wfd/WifiDisplaySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/stocksettings/wfd/WifiDisplaySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/stocksettings/wfd/WifiDisplaySettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->setCheckButton(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/stocksettings/wfd/WifiDisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->openAliveShowNoDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/stocksettings/wfd/WifiDisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->applyState()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/stocksettings/wfd/WifiDisplaySettings;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private applyState()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 236
    iget-object v8, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v3

    .line 239
    .local v3, featureState:I
    iget-object v8, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-boolean v9, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setChecked(Z)V

    .line 241
    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 242
    .local v7, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 244
    const/4 v8, 0x3

    if-ne v3, v8, :cond_7

    .line 245
    iget-object v8, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplayStatus;->getRememberedDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v6

    .line 246
    .local v6, pairedDisplays:[Landroid/hardware/display/WifiDisplay;
    iget-object v8, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplayStatus;->getAvailableDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    .line 248
    .local v1, availableDisplays:[Landroid/hardware/display/WifiDisplay;
    iget-object v8, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v8, :cond_0

    .line 249
    new-instance v8, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 250
    iget-object v8, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v9, 0x7f0b01c4

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 254
    :goto_0
    iget-object v8, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 256
    move-object v0, v6

    .local v0, arr$:[Landroid/hardware/display/WifiDisplay;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 257
    .local v2, d:Landroid/hardware/display/WifiDisplay;
    iget-object v8, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v12}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->createWifiDisplayPreference(Landroid/hardware/display/WifiDisplay;Z)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 256
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 252
    .end local v0           #arr$:[Landroid/hardware/display/WifiDisplay;
    .end local v2           #d:Landroid/hardware/display/WifiDisplay;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_0
    iget-object v8, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_0

    .line 259
    .restart local v0       #arr$:[Landroid/hardware/display/WifiDisplay;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_1
    iget-object v8, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v8

    if-nez v8, :cond_2

    .line 260
    iget-object v8, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 263
    :cond_2
    iget-object v8, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/stocksettings/ProgressCategory;

    if-nez v8, :cond_4

    .line 264
    new-instance v8, Lcom/android/stocksettings/ProgressCategory;

    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x0

    const v11, 0x7f0b01c3

    invoke-direct {v8, v9, v10, v11}, Lcom/android/stocksettings/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/stocksettings/ProgressCategory;

    .line 266
    iget-object v8, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/stocksettings/ProgressCategory;

    const v9, 0x7f0b01c5

    invoke-virtual {v8, v9}, Lcom/android/stocksettings/ProgressCategory;->setTitle(I)V

    .line 270
    :goto_2
    iget-object v8, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/stocksettings/ProgressCategory;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 272
    move-object v0, v1

    array-length v5, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_5

    aget-object v2, v0, v4

    .line 273
    .restart local v2       #d:Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->contains([Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 274
    iget-object v8, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/stocksettings/ProgressCategory;

    invoke-direct {p0, v2, v13}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->createWifiDisplayPreference(Landroid/hardware/display/WifiDisplay;Z)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/stocksettings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 272
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 268
    .end local v2           #d:Landroid/hardware/display/WifiDisplay;
    :cond_4
    iget-object v8, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/stocksettings/ProgressCategory;

    invoke-virtual {v8}, Lcom/android/stocksettings/ProgressCategory;->removeAll()V

    goto :goto_2

    .line 277
    :cond_5
    iget-object v8, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v8

    if-ne v8, v12, :cond_6

    .line 278
    iget-object v8, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/stocksettings/ProgressCategory;

    invoke-virtual {v8, v12}, Lcom/android/stocksettings/ProgressCategory;->setProgress(Z)V

    .line 288
    .end local v0           #arr$:[Landroid/hardware/display/WifiDisplay;
    .end local v1           #availableDisplays:[Landroid/hardware/display/WifiDisplay;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #pairedDisplays:[Landroid/hardware/display/WifiDisplay;
    :goto_4
    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 289
    return-void

    .line 280
    .restart local v0       #arr$:[Landroid/hardware/display/WifiDisplay;
    .restart local v1       #availableDisplays:[Landroid/hardware/display/WifiDisplay;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #pairedDisplays:[Landroid/hardware/display/WifiDisplay;
    :cond_6
    iget-object v8, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/stocksettings/ProgressCategory;

    invoke-virtual {v8, v13}, Lcom/android/stocksettings/ProgressCategory;->setProgress(Z)V

    goto :goto_4

    .line 283
    .end local v0           #arr$:[Landroid/hardware/display/WifiDisplay;
    .end local v1           #availableDisplays:[Landroid/hardware/display/WifiDisplay;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #pairedDisplays:[Landroid/hardware/display/WifiDisplay;
    :cond_7
    iget-object v9, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    const/4 v8, 0x2

    if-ne v3, v8, :cond_8

    const v8, 0x7f0b01bf

    :goto_5
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_8
    const v8, 0x7f0b01c0

    goto :goto_5
.end method

.method private static contains([Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Z
    .locals 5
    .parameter "displays"
    .parameter "address"

    .prologue
    .line 366
    move-object v0, p0

    .local v0, arr$:[Landroid/hardware/display/WifiDisplay;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 367
    .local v1, d:Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 368
    const/4 v4, 0x1

    .line 371
    .end local v1           #d:Landroid/hardware/display/WifiDisplay;
    :goto_1
    return v4

    .line 366
    .restart local v1       #d:Landroid/hardware/display/WifiDisplay;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 371
    .end local v1           #d:Landroid/hardware/display/WifiDisplay;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private createWifiDisplayPreference(Landroid/hardware/display/WifiDisplay;Z)Landroid/preference/Preference;
    .locals 3
    .parameter "d"
    .parameter "paired"

    .prologue
    .line 292
    new-instance v0, Lcom/android/stocksettings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/stocksettings/wfd/WifiDisplaySettings$WifiDisplayPreference;-><init>(Lcom/android/stocksettings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V

    .line 293
    .local v0, p:Lcom/android/stocksettings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    iget-object v1, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 294
    iget-object v1, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 306
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 307
    const v1, 0x7f0400a0

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setWidgetLayoutResource(I)V

    .line 309
    :cond_1
    return-object v0

    .line 296
    :pswitch_0
    const v1, 0x7f0b01c7

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setSummary(I)V

    goto :goto_0

    .line 299
    :pswitch_1
    const v1, 0x7f0b01c6

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setSummary(I)V

    goto :goto_0

    .line 302
    :cond_2
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getAvailableDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->contains([Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    const v1, 0x7f0b01c8

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setSummary(I)V

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private openAliveShow()V
    .locals 2

    .prologue
    .line 394
    iget-object v1, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiUtils:Lcom/android/stocksettings/wfd/WifiUtils;

    invoke-virtual {v1}, Lcom/android/stocksettings/wfd/WifiUtils;->isWifiApEnable()Z

    move-result v0

    .line 397
    .local v0, bool1:Z
    if-eqz v0, :cond_0

    .line 399
    invoke-direct {p0, v0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->showSwitchPromptDialog(Z)V

    .line 406
    :goto_0
    return-void

    .line 403
    :cond_0
    invoke-direct {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->openAliveShowNoDialog()V

    goto :goto_0
.end method

.method private openAliveShowNoDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 411
    iget-object v0, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiUtils:Lcom/android/stocksettings/wfd/WifiUtils;

    invoke-virtual {v0}, Lcom/android/stocksettings/wfd/WifiUtils;->isWifiEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    .line 433
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiUtils:Lcom/android/stocksettings/wfd/WifiUtils;

    invoke-virtual {v0}, Lcom/android/stocksettings/wfd/WifiUtils;->toEnableWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 420
    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0885

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 427
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->setCheckButton(Z)V

    .line 428
    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0886

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setCheckButton(Z)V
    .locals 1
    .parameter "bOpen"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 438
    return-void
.end method

.method private showDisconnectDialog(Landroid/hardware/display/WifiDisplay;)V
    .locals 8
    .parameter "display"

    .prologue
    const/4 v5, 0x1

    .line 313
    new-instance v1, Lcom/android/stocksettings/wfd/WifiDisplaySettings$1;

    invoke-direct {v1, p0, p1}, Lcom/android/stocksettings/wfd/WifiDisplaySettings$1;-><init>(Lcom/android/stocksettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 322
    .local v1, ok:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b01ca

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01cb

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 330
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 331
    return-void
.end method

.method private showOptionsDialog(Landroid/hardware/display/WifiDisplay;)V
    .locals 8
    .parameter "display"

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04009f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 335
    .local v4, view:Landroid/view/View;
    const v5, 0x7f080091

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 336
    .local v3, nameEditText:Landroid/widget/EditText;
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 338
    new-instance v1, Lcom/android/stocksettings/wfd/WifiDisplaySettings$2;

    invoke-direct {v1, p0, v3, p1}, Lcom/android/stocksettings/wfd/WifiDisplaySettings$2;-><init>(Lcom/android/stocksettings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/WifiDisplay;)V

    .line 348
    .local v1, done:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/stocksettings/wfd/WifiDisplaySettings$3;

    invoke-direct {v2, p0, p1}, Lcom/android/stocksettings/wfd/WifiDisplaySettings$3;-><init>(Lcom/android/stocksettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 355
    .local v2, forget:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b01cc

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b01ce

    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b01cd

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 362
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 363
    return-void
.end method

.method private showSwitchPromptDialog(Z)V
    .locals 4
    .parameter "paramBoolean1"

    .prologue
    .line 442
    if-nez p1, :cond_0

    .line 443
    const-string v1, "Wifi-Display C AliveShow"

    const-string v2, "showSwitchPromptDialog error return"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :goto_0
    return-void

    .line 446
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 447
    .local v0, localBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b0883

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0884

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/stocksettings/wfd/WifiDisplaySettings$6;

    invoke-direct {v3, p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings$6;-><init>(Lcom/android/stocksettings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/stocksettings/wfd/WifiDisplaySettings$5;

    invoke-direct {v3, p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings$5;-><init>(Lcom/android/stocksettings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 473
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private update()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 212
    :try_start_0
    iget-object v3, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiUtils:Lcom/android/stocksettings/wfd/WifiUtils;

    invoke-virtual {v3}, Lcom/android/stocksettings/wfd/WifiUtils;->isWifiEnable()Z

    move-result v0

    .line 213
    .local v0, boolWifi:Z
    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_display_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 225
    :goto_0
    iget-object v2, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 226
    invoke-direct {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->applyState()V

    .line 233
    .end local v0           #boolWifi:Z
    :goto_1
    return-void

    .line 221
    .restart local v0       #boolWifi:Z
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 222
    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    .end local v0           #boolWifi:Z
    :catch_0
    move-exception v1

    .line 231
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 103
    invoke-super {p0, p1}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 105
    iget-object v2, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiUtils:Lcom/android/stocksettings/wfd/WifiUtils;

    if-nez v2, :cond_0

    .line 107
    new-instance v2, Lcom/android/stocksettings/wfd/WifiUtils;

    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/stocksettings/wfd/WifiUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiUtils:Lcom/android/stocksettings/wfd/WifiUtils;

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 110
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 111
    iget-object v2, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mSwitchOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 115
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 116
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 118
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    .line 125
    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 127
    invoke-direct {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->update()V

    .line 129
    iget-object v2, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v2

    if-nez v2, :cond_1

    .line 130
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 132
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    iget-object v0, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiUtils:Lcom/android/stocksettings/wfd/WifiUtils;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/android/stocksettings/wfd/WifiUtils;

    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/stocksettings/wfd/WifiUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiUtils:Lcom/android/stocksettings/wfd/WifiUtils;

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 97
    const v0, 0x7f050047

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->addPreferencesFromResource(I)V

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->setHasOptionsMenu(Z)V

    .line 99
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 170
    iget-object v1, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v1

    if-ne v1, v2, :cond_0

    const v1, 0x7f0b01c2

    :goto_0
    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 174
    .local v0, item:Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 176
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 177
    invoke-super {p0, p1, p2}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 178
    return-void

    .line 170
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_0
    const v1, 0x7f0b01c1

    goto :goto_0

    .restart local v0       #item:Landroid/view/MenuItem;
    :cond_1
    move v1, v3

    .line 174
    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 137
    invoke-super {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 138
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 182
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 189
    invoke-super {p0, p1}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 184
    :pswitch_0
    iget-object v0, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    .line 187
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onPause()V

    .line 162
    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 163
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 166
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 195
    instance-of v2, p2, Lcom/android/stocksettings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 196
    check-cast v1, Lcom/android/stocksettings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    .line 197
    .local v1, p:Lcom/android/stocksettings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    invoke-virtual {v1}, Lcom/android/stocksettings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 199
    .local v0, display:Landroid/hardware/display/WifiDisplay;
    iget-object v2, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    invoke-direct {p0, v0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->showDisconnectDialog(Landroid/hardware/display/WifiDisplay;)V

    .line 206
    .end local v0           #display:Landroid/hardware/display/WifiDisplay;
    .end local v1           #p:Lcom/android/stocksettings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 202
    .restart local v0       #display:Landroid/hardware/display/WifiDisplay;
    .restart local v1       #p:Lcom/android/stocksettings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    :cond_1
    iget-object v2, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 142
    invoke-super {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onResume()V

    .line 144
    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 145
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v2, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v2, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_on"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 153
    iget-object v2, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    .line 155
    invoke-direct {p0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->update()V

    .line 156
    return-void
.end method
