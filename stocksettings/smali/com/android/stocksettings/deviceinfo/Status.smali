.class public Lcom/android/stocksettings/deviceinfo/Status;
.super Landroid/preference/PreferenceActivity;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stocksettings/deviceinfo/Status$MyHandler;
    }
.end annotation


# static fields
.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;


# instance fields
.field private mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mShowLatestAreaInfo:Z

.field private mSignalStrength:Landroid/preference/Preference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUptime:Landroid/preference/Preference;

.field private sUnknown:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 94
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data_state"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_state"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "operator_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "roaming_state"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "network_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "latest_area_info"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/stocksettings/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 173
    new-instance v0, Lcom/android/stocksettings/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/deviceinfo/Status$1;-><init>(Lcom/android/stocksettings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 185
    new-instance v0, Lcom/android/stocksettings/deviceinfo/Status$2;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/deviceinfo/Status$2;-><init>(Lcom/android/stocksettings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 193
    new-instance v0, Lcom/android/stocksettings/deviceinfo/Status$3;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/deviceinfo/Status$3;-><init>(Lcom/android/stocksettings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/Status;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/stocksettings/deviceinfo/Status;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/stocksettings/deviceinfo/Status;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/stocksettings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/stocksettings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/stocksettings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/stocksettings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/Status;->updateDataState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/stocksettings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/Status;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/stocksettings/deviceinfo/Status;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/stocksettings/deviceinfo/Status;->updateAreaInfo(Ljava/lang/String;)V

    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 7
    .parameter "t"

    .prologue
    const-wide/16 v5, 0x3c

    .line 562
    rem-long v3, p1, v5

    long-to-int v2, v3

    .line 563
    .local v2, s:I
    div-long v3, p1, v5

    rem-long/2addr v3, v5

    long-to-int v1, v3

    .line 564
    .local v1, m:I
    const-wide/16 v3, 0xe10

    div-long v3, p1, v3

    long-to-int v0, v3

    .line 566
    .local v0, h:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/stocksettings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/stocksettings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .parameter "n"

    .prologue
    .line 554
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 555
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 557
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Lcom/android/stocksettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 354
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 357
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 529
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 530
    .local v1, bluetooth:Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "bt_address"

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 532
    .local v2, btAddressPref:Landroid/preference/Preference;
    if-nez v1, :cond_0

    .line 534
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 540
    :goto_0
    return-void

    .line 536
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, address:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .end local v0           #address:Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 536
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 537
    .restart local v0       #address:Ljava/lang/String;
    :cond_2
    const v3, 0x7f0b0344

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setIpAddressStatus()V
    .locals 3

    .prologue
    .line 519
    const-string v2, "wifi_ip_address"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 520
    .local v1, ipAddressPref:Landroid/preference/Preference;
    invoke-static {p0}, Lcom/android/stocksettings/Utils;->getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, ipAddress:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 526
    :goto_0
    return-void

    .line 524
    :cond_0
    const v2, 0x7f0b0344

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "preference"
    .parameter "text"

    .prologue
    .line 374
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object p2, p0, Lcom/android/stocksettings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    .line 378
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/stocksettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 379
    invoke-virtual {p0, p1}, Lcom/android/stocksettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 381
    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 5

    .prologue
    .line 508
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/android/stocksettings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 509
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 511
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v4, "wifi_mac_address"

    invoke-virtual {p0, v4}, Lcom/android/stocksettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 513
    .local v2, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 514
    .local v0, macAddress:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .end local v0           #macAddress:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 516
    return-void

    .line 513
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 514
    .restart local v0       #macAddress:Ljava/lang/String;
    :cond_1
    const v4, 0x7f0b0344

    invoke-virtual {p0, v4}, Lcom/android/stocksettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setWimaxStatus()V
    .locals 8

    .prologue
    .line 493
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/stocksettings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 494
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 496
    .local v2, ni:Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 497
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 498
    .local v4, root:Landroid/preference/PreferenceScreen;
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/stocksettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 499
    .local v3, ps:Landroid/preference/Preference;
    if-eqz v3, :cond_0

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 506
    .end local v3           #ps:Landroid/preference/Preference;
    .end local v4           #root:Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/stocksettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 502
    .local v5, wimaxMacAddressPref:Landroid/preference/Preference;
    const-string v6, "net.wimax.mac.address"

    const v7, 0x7f0b0344

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, macAddress:Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateAreaInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "areaInfo"

    .prologue
    .line 451
    if-eqz p1, :cond_0

    .line 452
    const-string v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/android/stocksettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_0
    return-void
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 393
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 394
    .local v1, state:I
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, display:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 411
    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/android/stocksettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-void

    .line 398
    :pswitch_0
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 399
    goto :goto_0

    .line 401
    :pswitch_1
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 402
    goto :goto_0

    .line 404
    :pswitch_2
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 405
    goto :goto_0

    .line 407
    :pswitch_3
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 396
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 2

    .prologue
    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, networktype:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v0

    .line 389
    :cond_0
    const-string v1, "network_type"

    invoke-direct {p0, v1, v0}, Lcom/android/stocksettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 5
    .parameter "serviceState"

    .prologue
    .line 415
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 420
    .local v1, state:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-nez v2, :cond_0

    .line 422
    const/4 v1, 0x0

    .line 425
    :cond_0
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, display:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 440
    :goto_0
    const-string v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/android/stocksettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 443
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/stocksettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :goto_1
    const-string v2, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/stocksettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    return-void

    .line 429
    :pswitch_0
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 430
    goto :goto_0

    .line 433
    :pswitch_1
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 434
    goto :goto_0

    .line 436
    :pswitch_2
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 445
    :cond_1
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/stocksettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 427
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x1

    .line 213
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 215
    new-instance v7, Lcom/android/stocksettings/deviceinfo/Status$MyHandler;

    invoke-direct {v7, p0}, Lcom/android/stocksettings/deviceinfo/Status$MyHandler;-><init>(Lcom/android/stocksettings/deviceinfo/Status;)V

    iput-object v7, p0, Lcom/android/stocksettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    .line 217
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, p0, Lcom/android/stocksettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 219
    const v7, 0x7f050013

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/deviceinfo/Status;->addPreferencesFromResource(I)V

    .line 220
    const-string v7, "battery_level"

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/stocksettings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    .line 221
    const-string v7, "battery_status"

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/stocksettings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    .line 223
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lcom/android/stocksettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    .line 224
    iget-object v7, p0, Lcom/android/stocksettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f0b000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/stocksettings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    .line 225
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-nez v7, :cond_0

    .line 226
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    iput-object v7, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 229
    :cond_0
    const-string v7, "signal_strength"

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/stocksettings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    .line 230
    const-string v7, "up_time"

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/stocksettings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    .line 232
    iget-object v7, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/stocksettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 233
    :cond_1
    sget-object v0, Lcom/android/stocksettings/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_6

    aget-object v3, v0, v2

    .line 234
    .local v3, key:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/stocksettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #len$:I
    :cond_2
    iget-object v7, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CDMA"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 240
    const-string v7, "meid_number"

    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/stocksettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v7, "min_number"

    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/stocksettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090006

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 243
    const-string v7, "min_number"

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    const v8, 0x7f0b0335

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 245
    :cond_3
    const-string v7, "prl_version"

    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/stocksettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v7, "imei_sv"

    invoke-direct {p0, v7}, Lcom/android/stocksettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 248
    iget-object v7, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v7

    if-ne v7, v9, :cond_7

    .line 250
    const-string v7, "icc_id"

    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/stocksettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v7, "imei"

    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/stocksettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    .line 279
    .local v5, rawNumber:Ljava/lang/String;
    const/4 v1, 0x0

    .line 280
    .local v1, formattedNumber:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 281
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 284
    :cond_5
    const-string v7, "number"

    invoke-direct {p0, v7, v1}, Lcom/android/stocksettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    new-instance v7, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    invoke-direct {v7, p0, v8}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 287
    iget-object v7, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v8, 0xc8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 288
    iget-object v7, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v8, 0x12c

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 290
    iget-boolean v7, p0, Lcom/android/stocksettings/deviceinfo/Status;->mShowLatestAreaInfo:Z

    if-nez v7, :cond_6

    .line 291
    const-string v7, "latest_area_info"

    invoke-direct {p0, v7}, Lcom/android/stocksettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 295
    .end local v1           #formattedNumber:Ljava/lang/String;
    .end local v5           #rawNumber:Ljava/lang/String;
    :cond_6
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/Status;->setWimaxStatus()V

    .line 296
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/Status;->setWifiStatus()V

    .line 297
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/Status;->setBtStatus()V

    .line 298
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/Status;->setIpAddressStatus()V

    .line 300
    sget-object v6, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 301
    .local v6, serial:Ljava/lang/String;
    if-eqz v6, :cond_9

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 302
    const-string v7, "serial_number"

    invoke-direct {p0, v7, v6}, Lcom/android/stocksettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :goto_2
    return-void

    .line 255
    .end local v6           #serial:Ljava/lang/String;
    :cond_7
    const-string v7, "imei"

    invoke-direct {p0, v7}, Lcom/android/stocksettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 256
    const-string v7, "icc_id"

    invoke-direct {p0, v7}, Lcom/android/stocksettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_1

    .line 259
    :cond_8
    const-string v7, "imei"

    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/stocksettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v8, "imei_sv"

    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v8, v7}, Lcom/android/stocksettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v7, "prl_version"

    invoke-direct {p0, v7}, Lcom/android/stocksettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 268
    const-string v7, "meid_number"

    invoke-direct {p0, v7}, Lcom/android/stocksettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 269
    const-string v7, "min_number"

    invoke-direct {p0, v7}, Lcom/android/stocksettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 270
    const-string v7, "icc_id"

    invoke-direct {p0, v7}, Lcom/android/stocksettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 273
    const-string v7, "br"

    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 274
    iput-boolean v9, p0, Lcom/android/stocksettings/deviceinfo/Status;->mShowLatestAreaInfo:Z

    goto/16 :goto_1

    .line 304
    .restart local v6       #serial:Ljava/lang/String;
    :cond_9
    const-string v7, "serial_number"

    invoke-direct {p0, v7}, Lcom/android/stocksettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 335
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 337
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/stocksettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 339
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 341
    :cond_0
    iget-boolean v0, p0, Lcom/android/stocksettings/deviceinfo/Status;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/Status;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 345
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 310
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 312
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/stocksettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 315
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/Status;->updateSignalStrength()V

    .line 316
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/stocksettings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 317
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/Status;->updateDataState()V

    .line 318
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 320
    iget-boolean v1, p0, Lcom/android/stocksettings/deviceinfo/Status;->mShowLatestAreaInfo:Z

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/Status;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/stocksettings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 324
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, getLatestIntent:Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/stocksettings/deviceinfo/Status;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 329
    .end local v0           #getLatestIntent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/stocksettings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 330
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 331
    return-void
.end method

.method updateSignalStrength()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 461
    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v4, :cond_4

    .line 462
    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 464
    .local v3, state:I
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 466
    .local v0, r:Landroid/content/res/Resources;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_1

    .line 468
    :cond_0
    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 471
    :cond_1
    const/4 v2, 0x0

    .line 472
    .local v2, signalDbm:I
    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v4

    const/16 v5, 0xe

    if-ne v4, v5, :cond_5

    .line 473
    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getLteSignalStrengthDbm()I

    move-result v2

    .line 474
    const-string v4, "Status"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Lte signalDBm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :goto_0
    if-ne v7, v2, :cond_2

    const/4 v2, 0x0

    .line 481
    :cond_2
    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v1

    .line 483
    .local v1, signalAsu:I
    if-ne v7, v1, :cond_3

    const/4 v1, 0x0

    .line 485
    :cond_3
    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0b002e

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0b002f

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 490
    .end local v0           #r:Landroid/content/res/Resources;
    .end local v1           #signalAsu:I
    .end local v2           #signalDbm:I
    .end local v3           #state:I
    :cond_4
    return-void

    .line 476
    .restart local v0       #r:Landroid/content/res/Resources;
    .restart local v2       #signalDbm:I
    .restart local v3       #state:I
    :cond_5
    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    goto :goto_0
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 543
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 544
    .local v0, at:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 546
    .local v2, ut:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 547
    const-wide/16 v2, 0x1

    .line 550
    :cond_0
    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/stocksettings/deviceinfo/Status;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 551
    return-void
.end method
