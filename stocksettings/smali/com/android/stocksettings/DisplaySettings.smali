.class public Lcom/android/stocksettings/DisplaySettings;
.super Lcom/android/stocksettings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stocksettings/DisplaySettings$CABLServiceConnection;
    }
.end annotation


# static fields
.field private static mCABLService:Lcom/android/cabl/ICABLService;

.field private static mCablAvailable:Z

.field private static sCABLEnabled:Z


# instance fields
.field private mAccelerometer:Landroid/preference/CheckBoxPreference;

.field private mBrightnessPreference:Lcom/android/stocksettings/BrightnessPreference;

.field private mCABLServiceConn:Lcom/android/stocksettings/DisplaySettings$CABLServiceConnection;

.field private mCablBrightnessPreference:Landroid/preference/CheckBoxPreference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mFontSizePref:Lcom/android/stocksettings/WarnedListPreference;

.field private mNotificationPulse:Landroid/preference/CheckBoxPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenSaverPreference:Landroid/preference/Preference;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mWifiDisplayPreference:Landroid/preference/Preference;

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    sput-object v0, Lcom/android/stocksettings/DisplaySettings;->mCABLService:Lcom/android/cabl/ICABLService;

    .line 105
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/stocksettings/DisplaySettings;->sCABLEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;-><init>()V

    .line 93
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/stocksettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stocksettings/DisplaySettings;->mCABLServiceConn:Lcom/android/stocksettings/DisplaySettings$CABLServiceConnection;

    .line 108
    new-instance v0, Lcom/android/stocksettings/DisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/DisplaySettings$1;-><init>(Lcom/android/stocksettings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/stocksettings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 414
    new-instance v0, Lcom/android/stocksettings/DisplaySettings$3;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/DisplaySettings$3;-><init>(Lcom/android/stocksettings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/stocksettings/DisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 502
    return-void
.end method

.method static synthetic access$000(Lcom/android/stocksettings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/stocksettings/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/stocksettings/DisplaySettings;)Lcom/android/stocksettings/WarnedListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/stocksettings/DisplaySettings;->mFontSizePref:Lcom/android/stocksettings/WarnedListPreference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/stocksettings/DisplaySettings;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/stocksettings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/stocksettings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/stocksettings/DisplaySettings;->updateWifiDisplaySummary()V

    return-void
.end method

.method static synthetic access$400()Lcom/android/cabl/ICABLService;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/stocksettings/DisplaySettings;->mCABLService:Lcom/android/cabl/ICABLService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/cabl/ICABLService;)Lcom/android/cabl/ICABLService;
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    sput-object p0, Lcom/android/stocksettings/DisplaySettings;->mCABLService:Lcom/android/cabl/ICABLService;

    return-object p0
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 13
    .parameter "screenTimeoutPreference"

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 216
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 217
    .local v3, maxTimeout:J
    :goto_0
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-nez v11, :cond_1

    .line 246
    :goto_1
    return-void

    .line 216
    .end local v3           #maxTimeout:J
    :cond_0
    const-wide/16 v3, 0x0

    goto :goto_0

    .line 220
    .restart local v3       #maxTimeout:J
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 221
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 222
    .local v10, values:[Ljava/lang/CharSequence;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v5, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v6, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v11, v10

    if-ge v2, v11, :cond_3

    .line 225
    aget-object v11, v10, v2

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 226
    .local v7, timeout:J
    cmp-long v11, v7, v3

    if-gtz v11, :cond_2

    .line 227
    aget-object v11, v1, v2

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    aget-object v11, v10, v2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 231
    .end local v7           #timeout:J
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v1

    if-ne v11, v12, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v10

    if-eq v11, v12, :cond_5

    .line 232
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 234
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 237
    .local v9, userPreference:I
    int-to-long v11, v9

    cmp-long v11, v11, v3

    if-gtz v11, :cond_5

    .line 238
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 245
    .end local v9           #userPreference:I
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    const/4 v11, 0x0

    goto :goto_3
.end method

.method private initCABLService()V
    .locals 5

    .prologue
    .line 518
    const-string v2, "DisplaySettings"

    const-string v3, "initCABLService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    new-instance v2, Lcom/android/stocksettings/DisplaySettings$CABLServiceConnection;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/stocksettings/DisplaySettings$CABLServiceConnection;-><init>(Lcom/android/stocksettings/DisplaySettings;Lcom/android/stocksettings/DisplaySettings$1;)V

    iput-object v2, p0, Lcom/android/stocksettings/DisplaySettings;->mCABLServiceConn:Lcom/android/stocksettings/DisplaySettings$CABLServiceConnection;

    .line 521
    new-instance v0, Landroid/content/Intent;

    const-string v2, "org.codeaurora.cabl.ICABLService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 522
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stocksettings/DisplaySettings;->mCABLServiceConn:Lcom/android/stocksettings/DisplaySettings$CABLServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 523
    .local v1, ret:Z
    return-void
.end method

.method private startCABL()V
    .locals 2

    .prologue
    .line 449
    sget-boolean v1, Lcom/android/stocksettings/DisplaySettings;->mCablAvailable:Z

    if-eqz v1, :cond_0

    .line 450
    sget-object v1, Lcom/android/stocksettings/DisplaySettings;->mCABLService:Lcom/android/cabl/ICABLService;

    if-eqz v1, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 456
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/stocksettings/DisplaySettings$4;

    invoke-direct {v1, p0, v0}, Lcom/android/stocksettings/DisplaySettings$4;-><init>(Lcom/android/stocksettings/DisplaySettings;Landroid/content/ContentResolver;)V

    invoke-virtual {v1}, Lcom/android/stocksettings/DisplaySettings$4;->start()V

    .line 472
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method private stopCABL()V
    .locals 3

    .prologue
    .line 475
    sget-boolean v1, Lcom/android/stocksettings/DisplaySettings;->mCablAvailable:Z

    if-eqz v1, :cond_0

    const-string v1, "init.svc.ppd"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "running"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    sget-object v1, Lcom/android/stocksettings/DisplaySettings;->mCABLService:Lcom/android/cabl/ICABLService;

    if-eqz v1, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 484
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/stocksettings/DisplaySettings$5;

    invoke-direct {v1, p0, v0}, Lcom/android/stocksettings/DisplaySettings$5;-><init>(Lcom/android/stocksettings/DisplaySettings;Landroid/content/ContentResolver;)V

    invoke-virtual {v1}, Lcom/android/stocksettings/DisplaySettings$5;->start()V

    .line 500
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method private updateAccelerometerRotationCheckbox()V
    .locals 2

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 359
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/android/stocksettings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateCablBrightnessCheckbox()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 440
    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cabl_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 443
    .local v0, cablEnabled:Z
    :goto_0
    iget-object v1, p0, Lcom/android/stocksettings/DisplaySettings;->mCablBrightnessPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/android/stocksettings/DisplaySettings;->mCablBrightnessPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 446
    :cond_0
    return-void

    .end local v0           #cablEnabled:Z
    :cond_1
    move v0, v1

    .line 440
    goto :goto_0
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/stocksettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/stocksettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/stocksettings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 336
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 1

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/android/stocksettings/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    .line 323
    iget-object v0, p0, Lcom/android/stocksettings/DisplaySettings;->mFontSizePref:Lcom/android/stocksettings/WarnedListPreference;

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/DisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 324
    invoke-direct {p0}, Lcom/android/stocksettings/DisplaySettings;->updateScreenSaverSummary()V

    .line 325
    invoke-direct {p0}, Lcom/android/stocksettings/DisplaySettings;->updateWifiDisplaySummary()V

    .line 326
    sget-boolean v0, Lcom/android/stocksettings/DisplaySettings;->sCABLEnabled:Z

    if-eqz v0, :cond_0

    .line 327
    invoke-direct {p0}, Lcom/android/stocksettings/DisplaySettings;->updateCablBrightnessCheckbox()V

    .line 329
    :cond_0
    return-void
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 13
    .parameter "currentTimeout"

    .prologue
    const-wide/16 v9, -0x1

    .line 189
    iget-object v3, p0, Lcom/android/stocksettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 191
    .local v3, preference:Landroid/preference/ListPreference;
    cmp-long v8, p1, v9

    if-nez v8, :cond_0

    .line 192
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0b02fd

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, summary:Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 210
    return-void

    .line 193
    .end local v4           #summary:Ljava/lang/String;
    :cond_0
    cmp-long v8, p1, v9

    if-gez v8, :cond_1

    .line 195
    const-string v4, ""

    .restart local v4       #summary:Ljava/lang/String;
    goto :goto_0

    .line 197
    .end local v4           #summary:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 198
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 199
    .local v7, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 200
    .local v0, best:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v8, v7

    if-ge v2, v8, :cond_3

    .line 201
    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 202
    .local v5, timeout:J
    cmp-long v8, p1, v5

    if-ltz v8, :cond_2

    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-lez v8, :cond_2

    .line 203
    move v0, v2

    .line 200
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 206
    .end local v5           #timeout:J
    :cond_3
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0b02f0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v1, v0

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #summary:Ljava/lang/String;
    goto :goto_0
.end method

.method private updateWifiDisplaySummary()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/stocksettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/stocksettings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 349
    iget-object v0, p0, Lcom/android/stocksettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    const v1, 0x7f0b01d2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 342
    :pswitch_0
    iget-object v0, p0, Lcom/android/stocksettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    const v1, 0x7f0b01d1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 345
    :pswitch_1
    iget-object v0, p0, Lcom/android/stocksettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    const v1, 0x7f0b01d0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 340
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 6
    .parameter "val"

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, indices:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 251
    .local v2, lastVal:F
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 252
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 253
    .local v3, thisVal:F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 254
    add-int/lit8 v4, v0, -0x1

    .line 258
    .end local v3           #thisVal:F
    :goto_1
    return v4

    .line 256
    .restart local v3       #thisVal:F
    :cond_0
    move v2, v3

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    .end local v3           #thisVal:F
    :cond_1
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 118
    invoke-super {p0, p1}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 121
    .local v2, resolver:Landroid/content/ContentResolver;
    const v6, 0x7f050016

    invoke-virtual {p0, v6}, Lcom/android/stocksettings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 124
    const-string v6, "brightness"

    invoke-virtual {p0, v6}, Lcom/android/stocksettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/stocksettings/BrightnessPreference;

    iput-object v6, p0, Lcom/android/stocksettings/DisplaySettings;->mBrightnessPreference:Lcom/android/stocksettings/BrightnessPreference;

    .line 126
    const-string v6, "accelerometer"

    invoke-virtual {p0, v6}, Lcom/android/stocksettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/stocksettings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    .line 127
    iget-object v6, p0, Lcom/android/stocksettings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleSupported(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/stocksettings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 134
    :cond_0
    const-string v6, "screensaver"

    invoke-virtual {p0, v6}, Lcom/android/stocksettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/stocksettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    .line 135
    iget-object v6, p0, Lcom/android/stocksettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x1110043

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/stocksettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v9, "screencolor_settings"

    invoke-virtual {p0, v9}, Lcom/android/stocksettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 141
    const-string v6, "screen_timeout"

    invoke-virtual {p0, v6}, Lcom/android/stocksettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/stocksettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 142
    const-string v6, "screen_off_timeout"

    const-wide/16 v9, 0x7530

    invoke-static {v2, v6, v9, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 144
    .local v0, currentTimeout:J
    const-wide/32 v9, 0x7fffffff

    cmp-long v6, v0, v9

    if-nez v6, :cond_3

    const-wide/16 v4, -0x1

    .line 145
    .local v4, timeoutValue:J
    :goto_0
    iget-object v6, p0, Lcom/android/stocksettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 146
    iget-object v6, p0, Lcom/android/stocksettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 147
    iget-object v6, p0, Lcom/android/stocksettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v6}, Lcom/android/stocksettings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 148
    invoke-direct {p0, v4, v5}, Lcom/android/stocksettings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 150
    const-string v6, "font_size"

    invoke-virtual {p0, v6}, Lcom/android/stocksettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/stocksettings/WarnedListPreference;

    iput-object v6, p0, Lcom/android/stocksettings/DisplaySettings;->mFontSizePref:Lcom/android/stocksettings/WarnedListPreference;

    .line 151
    iget-object v6, p0, Lcom/android/stocksettings/DisplaySettings;->mFontSizePref:Lcom/android/stocksettings/WarnedListPreference;

    invoke-virtual {v6, p0}, Lcom/android/stocksettings/WarnedListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    iget-object v6, p0, Lcom/android/stocksettings/DisplaySettings;->mFontSizePref:Lcom/android/stocksettings/WarnedListPreference;

    invoke-virtual {v6, p0}, Lcom/android/stocksettings/WarnedListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 153
    const-string v6, "notification_pulse"

    invoke-virtual {p0, v6}, Lcom/android/stocksettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/stocksettings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    .line 154
    iget-object v6, p0, Lcom/android/stocksettings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x1110023

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 157
    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/stocksettings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 168
    :goto_1
    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v9, "display"

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayManager;

    iput-object v6, p0, Lcom/android/stocksettings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 170
    iget-object v6, p0, Lcom/android/stocksettings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v6

    iput-object v6, p0, Lcom/android/stocksettings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 171
    const-string v6, "wifi_display"

    invoke-virtual {p0, v6}, Lcom/android/stocksettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/stocksettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    .line 172
    iget-object v6, p0, Lcom/android/stocksettings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v6

    if-nez v6, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/stocksettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 175
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/stocksettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    .line 178
    :cond_2
    const-string v6, "cabl_brightness"

    invoke-virtual {p0, v6}, Lcom/android/stocksettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/stocksettings/DisplaySettings;->mCablBrightnessPreference:Landroid/preference/CheckBoxPreference;

    .line 179
    const-string v6, "persist.env.settings.cabl"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/android/stocksettings/DisplaySettings;->sCABLEnabled:Z

    .line 180
    sget-boolean v6, Lcom/android/stocksettings/DisplaySettings;->sCABLEnabled:Z

    if-nez v6, :cond_6

    .line 181
    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/stocksettings/DisplaySettings;->mCablBrightnessPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 186
    :goto_2
    return-void

    .end local v4           #timeoutValue:J
    :cond_3
    move-wide v4, v0

    .line 144
    goto/16 :goto_0

    .line 160
    .restart local v4       #timeoutValue:J
    :cond_4
    :try_start_0
    iget-object v9, p0, Lcom/android/stocksettings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    const-string v6, "notification_light_pulse"

    invoke-static {v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_5

    move v6, v7

    :goto_3
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 162
    iget-object v6, p0, Lcom/android/stocksettings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 163
    :catch_0
    move-exception v3

    .line 164
    .local v3, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v6, "DisplaySettings"

    const-string v9, "notification_light_pulse not found"

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v3           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_5
    move v6, v8

    .line 160
    goto :goto_3

    .line 183
    :cond_6
    const-string v6, "ro.qualcomm.cabl"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/android/stocksettings/DisplaySettings;->mCablAvailable:Z

    .line 184
    invoke-direct {p0}, Lcom/android/stocksettings/DisplaySettings;->initCABLService()V

    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 309
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0770

    new-instance v2, Lcom/android/stocksettings/DisplaySettings$2;

    invoke-direct {v2, p0}, Lcom/android/stocksettings/DisplaySettings$2;-><init>(Lcom/android/stocksettings/DisplaySettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/stocksettings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 318
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 528
    invoke-super {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onDestroy()V

    .line 529
    sget-boolean v0, Lcom/android/stocksettings/DisplaySettings;->sCABLEnabled:Z

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/DisplaySettings;->mCABLServiceConn:Lcom/android/stocksettings/DisplaySettings$CABLServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 532
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 297
    invoke-super {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onPause()V

    .line 299
    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 302
    iget-object v0, p0, Lcom/android/stocksettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/DisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 305
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 392
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, key:Ljava/lang/String;
    const-string v5, "screen_timeout"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, p2

    .line 394
    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 395
    .local v4, value:I
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 396
    .local v2, oldvalue:I
    if-eq v4, v2, :cond_0

    .line 397
    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update screen timeout from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v5, -0x1

    if-ne v5, v4, :cond_2

    const v3, 0x7fffffff

    .line 400
    .local v3, timeoutValue:I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_off_timeout"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 401
    int-to-long v5, v4

    invoke-direct {p0, v5, v6}, Lcom/android/stocksettings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    .end local v2           #oldvalue:I
    .end local v3           #timeoutValue:I
    .end local v4           #value:I
    :cond_0
    :goto_1
    const-string v5, "font_size"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 408
    invoke-virtual {p0, p2}, Lcom/android/stocksettings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 411
    :cond_1
    const/4 v5, 0x1

    return v5

    .restart local v2       #oldvalue:I
    .restart local v4       #value:I
    :cond_2
    move v3, v4

    .line 398
    goto :goto_0

    .line 402
    .restart local v3       #timeoutValue:I
    :catch_0
    move-exception v0

    .line 403
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "DisplaySettings"

    const-string v6, "could not persist screen timeout setting"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 427
    iget-object v1, p0, Lcom/android/stocksettings/DisplaySettings;->mFontSizePref:Lcom/android/stocksettings/WarnedListPreference;

    if-ne p1, v1, :cond_1

    .line 428
    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/stocksettings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    invoke-virtual {p0, v0}, Lcom/android/stocksettings/DisplaySettings;->showDialog(I)V

    .line 435
    :goto_0
    return v0

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/DisplaySettings;->mFontSizePref:Lcom/android/stocksettings/WarnedListPreference;

    invoke-virtual {v0}, Lcom/android/stocksettings/WarnedListPreference;->click()V

    .line 435
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 372
    iget-object v4, p0, Lcom/android/stocksettings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_2

    .line 373
    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/stocksettings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_0
    invoke-static {v4, v2}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 388
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    :goto_2
    return v2

    :cond_1
    move v2, v3

    .line 373
    goto :goto_0

    .line 375
    :cond_2
    iget-object v4, p0, Lcom/android/stocksettings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_4

    .line 376
    iget-object v4, p0, Lcom/android/stocksettings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 377
    .local v1, value:Z
    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_light_pulse"

    if-eqz v1, :cond_3

    move v3, v2

    :cond_3
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 380
    .end local v1           #value:Z
    :cond_4
    iget-object v2, p0, Lcom/android/stocksettings/DisplaySettings;->mCablBrightnessPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    .line 381
    iget-object v2, p0, Lcom/android/stocksettings/DisplaySettings;->mCablBrightnessPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 382
    .local v0, checked:Z
    if-eqz v0, :cond_5

    .line 383
    invoke-direct {p0}, Lcom/android/stocksettings/DisplaySettings;->startCABL()V

    goto :goto_1

    .line 385
    :cond_5
    invoke-direct {p0}, Lcom/android/stocksettings/DisplaySettings;->stopCABL()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 281
    invoke-super {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onResume()V

    .line 283
    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 286
    iget-object v0, p0, Lcom/android/stocksettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/DisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 289
    iget-object v0, p0, Lcom/android/stocksettings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/android/stocksettings/DisplaySettings;->updateState()V

    .line 293
    return-void
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 8
    .parameter "pref"

    .prologue
    .line 263
    :try_start_0
    iget-object v4, p0, Lcom/android/stocksettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    iget-object v4, p0, Lcom/android/stocksettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v4}, Lcom/android/stocksettings/DisplaySettings;->floatToIndex(F)I

    move-result v2

    .line 270
    .local v2, index:I
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 273
    invoke-virtual {p0}, Lcom/android/stocksettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 274
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f070008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, fontSizeNames:[Ljava/lang/String;
    const v4, 0x7f0b0300

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v7, v1, v2

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 277
    return-void

    .line 264
    .end local v1           #fontSizeNames:[Ljava/lang/String;
    .end local v2           #index:I
    .end local v3           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 265
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "DisplaySettings"

    const-string v5, "Unable to retrieve font size"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 3
    .parameter "objValue"

    .prologue
    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/android/stocksettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 364
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DisplaySettings"

    const-string v2, "Unable to save font size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
