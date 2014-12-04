.class public Lcom/android/stocksettings/deviceinfo/MSimStatus;
.super Landroid/preference/PreferenceActivity;
.source "MSimStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stocksettings/deviceinfo/MSimStatus$MyHandler;
    }
.end annotation


# static fields
.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;

.field private static final RELATED_ENTRIES:[Ljava/lang/String;


# instance fields
.field private SIM:[Ljava/lang/String;

.field private areaInfoSummery:[Ljava/lang/String;

.field private dataStateSummery:[Ljava/lang/String;

.field private esnNumberSummery:[Ljava/lang/String;

.field private iccIdSummery:[Ljava/lang/String;

.field private imeiSVSummery:[Ljava/lang/String;

.field private imeiSummery:[Ljava/lang/String;

.field private mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mDataState:[I

.field private mHandler:Landroid/os/Handler;

.field private mNumPhones:I

.field private mPhone:[Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mRes:Landroid/content/res/Resources;

.field private mServiceState:[Landroid/telephony/ServiceState;

.field private mShowLatestAreaInfo:Z

.field private mSigStrengthSummery:[Ljava/lang/String;

.field private mSignalStrength:[Landroid/telephony/SignalStrength;

.field private mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

.field private mUnknown:Ljava/lang/String;

.field private mUptime:Landroid/preference/Preference;

.field private meidNumberSummery:[Ljava/lang/String;

.field private minNumberSummery:[Ljava/lang/String;

.field private networkSummery:[Ljava/lang/String;

.field private numberSummery:[Ljava/lang/String;

.field private operatorNameSummery:[Ljava/lang/String;

.field private prlVersionSummery:[Ljava/lang/String;

.field private roamingStateSummery:[Ljava/lang/String;

.field private serviceStateSummery:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "data_state"

    aput-object v1, v0, v2

    const-string v1, "network_type"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .line 132
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "service_state"

    aput-object v1, v0, v2

    const-string v1, "operator_name"

    aput-object v1, v0, v3

    const-string v1, "roaming_state"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "esn_number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "baseband_version"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "latest_area_info"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->RELATED_ENTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 105
    iput-boolean v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mShowLatestAreaInfo:Z

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mUnknown:Ljava/lang/String;

    .line 108
    iput v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mNumPhones:I

    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mDataState:[I

    .line 183
    new-instance v0, Lcom/android/stocksettings/deviceinfo/MSimStatus$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/deviceinfo/MSimStatus$1;-><init>(Lcom/android/stocksettings/deviceinfo/MSimStatus;)V

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 272
    new-instance v0, Lcom/android/stocksettings/deviceinfo/MSimStatus$2;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/deviceinfo/MSimStatus$2;-><init>(Lcom/android/stocksettings/deviceinfo/MSimStatus;)V

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 113
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/stocksettings/deviceinfo/MSimStatus;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->updateAreaInfo(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/stocksettings/deviceinfo/MSimStatus;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/stocksettings/deviceinfo/MSimStatus;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/stocksettings/deviceinfo/MSimStatus;)[Landroid/telephony/SignalStrength;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mSignalStrength:[Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/stocksettings/deviceinfo/MSimStatus;)[Landroid/telephony/ServiceState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/stocksettings/deviceinfo/MSimStatus;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->updateServiceState(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/stocksettings/deviceinfo/MSimStatus;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->updateNetworkType(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/stocksettings/deviceinfo/MSimStatus;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mDataState:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/stocksettings/deviceinfo/MSimStatus;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->updateDataState(I)V

    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 7
    .parameter "t"

    .prologue
    const-wide/16 v5, 0x3c

    .line 777
    rem-long v3, p1, v5

    long-to-int v2, v3

    .line 778
    .local v2, s:I
    div-long v3, p1, v5

    rem-long/2addr v3, v5

    long-to-int v1, v3

    .line 779
    .local v1, m:I
    const-wide/16 v3, 0xe10

    div-long v3, p1, v3

    long-to-int v0, v3

    .line 781
    .local v0, h:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getMultiSimName(I)Ljava/lang/String;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->MULTI_SIM_NAME:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 511
    new-instance v0, Lcom/android/stocksettings/deviceinfo/MSimStatus$3;

    invoke-direct {v0, p0, p1, p1}, Lcom/android/stocksettings/deviceinfo/MSimStatus$3;-><init>(Lcom/android/stocksettings/deviceinfo/MSimStatus;II)V

    .line 531
    .local v0, phoneStateListener:Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private getSimSummery(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "subscription"
    .parameter "msg"

    .prologue
    .line 212
    if-eqz p2, :cond_0

    const-string v0, "unknown"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    iget-object p2, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mUnknown:Ljava/lang/String;

    .line 215
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->SIM:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initMSimSummery([Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 203
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 204
    aget-object v1, p1, v0

    if-nez v1, :cond_0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->SIM:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mUnknown:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 203
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_1
    return-void
.end method

.method private isDataServiceEnable(I)Z
    .locals 2
    .parameter "subscription"

    .prologue
    .line 695
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 697
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 699
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    const/4 v1, 0x1

    .line 704
    .end local v0           #connMgr:Landroid/net/ConnectivityManager;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .parameter "n"

    .prologue
    .line 769
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 770
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 772
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
    .line 539
    invoke-virtual {p0, p1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 540
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 543
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 744
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 745
    .local v1, bluetooth:Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "bt_address"

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 747
    .local v2, btAddressPref:Landroid/preference/Preference;
    if-nez v1, :cond_0

    .line 749
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 755
    :goto_0
    return-void

    .line 751
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 752
    .local v0, address:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .end local v0           #address:Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 751
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 752
    .restart local v0       #address:Ljava/lang/String;
    :cond_2
    const v3, 0x7f0b0344

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setIpAddressStatus()V
    .locals 3

    .prologue
    .line 734
    const-string v2, "wifi_ip_address"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 735
    .local v1, ipAddressPref:Landroid/preference/Preference;
    invoke-static {p0}, Lcom/android/stocksettings/Utils;->getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, ipAddress:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 741
    :goto_0
    return-void

    .line 739
    :cond_0
    const v2, 0x7f0b0344

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private varargs setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter "key"
    .parameter "msgs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 219
    iget v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mNumPhones:I

    if-ne v1, v4, :cond_2

    .line 220
    aget-object v1, p2, v3

    if-nez v1, :cond_1

    .line 221
    invoke-direct {p0, p1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    aget-object v1, p2, v3

    invoke-direct {p0, p1, v1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_2
    iget v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mNumPhones:I

    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 225
    aget-object v1, p2, v3

    if-nez v1, :cond_3

    aget-object v1, p2, v4

    if-nez v1, :cond_3

    .line 226
    invoke-direct {p0, p1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 229
    .local v0, summery:Ljava/lang/StringBuffer;
    aget-object v1, p2, v3

    if-eqz v1, :cond_4

    .line 230
    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    :cond_4
    aget-object v1, p2, v4

    if-eqz v1, :cond_6

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 233
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    :cond_5
    aget-object v1, p2, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "preference"
    .parameter "text"

    .prologue
    .line 560
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object p2, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mUnknown:Ljava/lang/String;

    .line 564
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 565
    invoke-virtual {p0, p1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 567
    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 5

    .prologue
    .line 723
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 724
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 726
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v4, "wifi_mac_address"

    invoke-virtual {p0, v4}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 728
    .local v2, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 729
    .local v0, macAddress:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .end local v0           #macAddress:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 731
    return-void

    .line 728
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 729
    .restart local v0       #macAddress:Ljava/lang/String;
    :cond_1
    const v4, 0x7f0b0344

    invoke-virtual {p0, v4}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setWimaxStatus()V
    .locals 8

    .prologue
    .line 708
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 709
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 711
    .local v2, ni:Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 712
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 713
    .local v4, root:Landroid/preference/PreferenceScreen;
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 714
    .local v3, ps:Landroid/preference/Preference;
    if-eqz v3, :cond_0

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 721
    .end local v3           #ps:Landroid/preference/Preference;
    .end local v4           #root:Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 717
    .local v5, wimaxMacAddressPref:Landroid/preference/Preference;
    const-string v6, "net.wimax.mac.address"

    const v7, 0x7f0b0344

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 719
    .local v1, macAddress:Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateAreaInfo(Ljava/lang/String;I)V
    .locals 3
    .parameter "areaInfo"
    .parameter "sub"

    .prologue
    .line 687
    const-string v0, "MSimStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAreaInfo areaInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sub="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    if-eqz p1, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->areaInfoSummery:[Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    .line 690
    const-string v0, "latest_area_info"

    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->areaInfoSummery:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 692
    :cond_0
    return-void
.end method

.method private updateDataState(I)V
    .locals 3
    .parameter "subscription"

    .prologue
    const v2, 0x7f0b0027

    .line 661
    const/4 v0, 0x0

    .line 662
    .local v0, display:Ljava/lang/String;
    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getDataSubscription()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->isDataServiceEnable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mDataState:[I

    aget v1, v1, p1

    packed-switch v1, :pswitch_data_0

    .line 682
    :goto_0
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->dataStateSummery:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    .line 683
    const-string v1, "data_state"

    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->dataStateSummery:[Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 684
    return-void

    .line 666
    :pswitch_0
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 667
    goto :goto_0

    .line 669
    :pswitch_1
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 670
    goto :goto_0

    .line 672
    :pswitch_2
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b0028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 673
    goto :goto_0

    .line 675
    :pswitch_3
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 679
    :cond_0
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 664
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateMSimSummery(I)V
    .locals 12
    .parameter "indexOfCDMA"

    .prologue
    const/4 v11, 0x0

    .line 396
    const-string v8, "MSimStatus"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cdma index is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/stocksettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 399
    sget-object v0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->RELATED_ENTRIES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_7

    aget-object v5, v0, v4

    .line 400
    .local v5, key:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 399
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 403
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget v8, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mNumPhones:I

    if-ge v3, v8, :cond_6

    .line 405
    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v8, v8, v3

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v7

    .line 406
    .local v7, rawNumber:Ljava/lang/String;
    const/4 v2, 0x0

    .line 407
    .local v2, formattedNumber:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 408
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 410
    :cond_1
    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->numberSummery:[Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 412
    if-ne v3, p1, :cond_4

    .line 413
    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->prlVersionSummery:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 414
    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->esnNumberSummery:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 415
    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->meidNumberSummery:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 416
    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->minNumberSummery:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 418
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090006

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 419
    const-string v8, "min_number"

    invoke-virtual {p0, v8}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    const v9, 0x7f0b0335

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTitle(I)V

    .line 422
    :cond_2
    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->imeiSVSummery:[Ljava/lang/String;

    aput-object v11, v8, v3

    .line 424
    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v8, v8, v3

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 426
    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->iccIdSummery:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 427
    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->imeiSummery:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 403
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 433
    :cond_3
    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->iccIdSummery:[Ljava/lang/String;

    aput-object v11, v8, v3

    .line 434
    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->imeiSummery:[Ljava/lang/String;

    aput-object v11, v8, v3

    goto :goto_2

    .line 438
    :cond_4
    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->prlVersionSummery:[Ljava/lang/String;

    aput-object v11, v8, v3

    .line 439
    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->esnNumberSummery:[Ljava/lang/String;

    aput-object v11, v8, v3

    .line 440
    const-string v8, "persist.env.settings.showMEID"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 441
    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->meidNumberSummery:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 445
    :goto_3
    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->minNumberSummery:[Ljava/lang/String;

    aput-object v11, v8, v3

    .line 446
    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->iccIdSummery:[Ljava/lang/String;

    aput-object v11, v8, v3

    .line 447
    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->imeiSummery:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 448
    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->imeiSVSummery:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    goto :goto_2

    .line 443
    :cond_5
    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->meidNumberSummery:[Ljava/lang/String;

    aput-object v11, v8, v3

    goto :goto_3

    .line 451
    .end local v2           #formattedNumber:Ljava/lang/String;
    .end local v7           #rawNumber:Ljava/lang/String;
    :cond_6
    const-string v8, "prl_version"

    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->prlVersionSummery:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 452
    const-string v8, "esn_number"

    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->esnNumberSummery:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 453
    const-string v8, "meid_number"

    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->meidNumberSummery:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 454
    const-string v8, "min_number"

    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->minNumberSummery:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 455
    const-string v8, "icc_id"

    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->iccIdSummery:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 456
    const-string v8, "imei"

    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->imeiSummery:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 457
    const-string v8, "imei_sv"

    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->imeiSVSummery:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 458
    const-string v8, "number"

    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->numberSummery:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 461
    const-string v8, "gsm.version.baseband"

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v9

    invoke-static {v8, v9, v11}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, basebandVersionSummery:Ljava/lang/String;
    const-string v8, "baseband_version"

    invoke-direct {p0, v8, v1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .end local v1           #basebandVersionSummery:Ljava/lang/String;
    .end local v3           #i:I
    :cond_7
    return-void
.end method

.method private updateNetworkType(I)V
    .locals 2
    .parameter "subscription"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkType(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->networkSummery:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 657
    :cond_0
    const-string v0, "network_type"

    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->networkSummery:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 658
    return-void
.end method

.method private updateServiceState(I)V
    .locals 6
    .parameter "subscription"

    .prologue
    .line 570
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, display:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    if-eqz v3, :cond_1

    .line 573
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 575
    .local v2, state:I
    packed-switch v2, :pswitch_data_0

    .line 588
    :goto_0
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->serviceStateSummery:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 589
    const-string v3, "service_state"

    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->serviceStateSummery:[Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 591
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 592
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->roamingStateSummery:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0b0022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 598
    :goto_1
    const-string v3, "roaming_state"

    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->roamingStateSummery:[Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 600
    const/4 v1, 0x0

    .line 605
    .local v1, operatorName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 607
    if-eqz v1, :cond_0

    .line 608
    const v3, 0x1070036

    const v4, 0x1070037

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getLocalString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 613
    :cond_0
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->operatorNameSummery:[Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 614
    const-string v3, "operator_name"

    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->operatorNameSummery:[Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 616
    .end local v1           #operatorName:Ljava/lang/String;
    .end local v2           #state:I
    :cond_1
    return-void

    .line 577
    .restart local v2       #state:I
    :pswitch_0
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 578
    goto :goto_0

    .line 581
    :pswitch_1
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 582
    goto :goto_0

    .line 584
    :pswitch_2
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 595
    :cond_2
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->roamingStateSummery:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0b0023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    goto :goto_1

    .line 575
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
    .locals 12
    .parameter "icicle"

    .prologue
    .line 286
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 288
    new-instance v9, Lcom/android/stocksettings/deviceinfo/MSimStatus$MyHandler;

    invoke-direct {v9, p0}, Lcom/android/stocksettings/deviceinfo/MSimStatus$MyHandler;-><init>(Lcom/android/stocksettings/deviceinfo/MSimStatus;)V

    iput-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mHandler:Landroid/os/Handler;

    .line 290
    const-string v9, "phone_msim"

    invoke-virtual {p0, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/MSimTelephonyManager;

    iput-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    .line 292
    const v9, 0x7f050011

    invoke-virtual {p0, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->addPreferencesFromResource(I)V

    .line 294
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    iput v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mNumPhones:I

    .line 295
    iget v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mNumPhones:I

    new-array v9, v9, [Landroid/telephony/PhoneStateListener;

    iput-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 297
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->esnNumberSummery:[Ljava/lang/String;

    .line 298
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->meidNumberSummery:[Ljava/lang/String;

    .line 299
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->minNumberSummery:[Ljava/lang/String;

    .line 300
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->prlVersionSummery:[Ljava/lang/String;

    .line 301
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->imeiSVSummery:[Ljava/lang/String;

    .line 302
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->imeiSummery:[Ljava/lang/String;

    .line 303
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->iccIdSummery:[Ljava/lang/String;

    .line 304
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->numberSummery:[Ljava/lang/String;

    .line 305
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->serviceStateSummery:[Ljava/lang/String;

    .line 306
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->roamingStateSummery:[Ljava/lang/String;

    .line 307
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->operatorNameSummery:[Ljava/lang/String;

    .line 308
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mSigStrengthSummery:[Ljava/lang/String;

    .line 309
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->dataStateSummery:[Ljava/lang/String;

    .line 310
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->areaInfoSummery:[Ljava/lang/String;

    .line 312
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Landroid/telephony/SignalStrength;

    iput-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 313
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Landroid/telephony/ServiceState;

    iput-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;

    .line 315
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Lcom/android/internal/telephony/Phone;

    iput-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 317
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->SIM:[Ljava/lang/String;

    .line 319
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->networkSummery:[Ljava/lang/String;

    .line 321
    const/4 v3, -0x1

    .line 323
    .local v3, indexOfCDMA:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mNumPhones:I

    if-ge v1, v9, :cond_2

    .line 324
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->SIM:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getMultiSimName(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    .line 325
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    aput-object v10, v9, v1

    .line 326
    const-string v9, "CDMA"

    iget-object v10, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v10, v10, v1

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 327
    move v3, v1

    .line 334
    :cond_0
    :goto_1
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v10

    aput-object v10, v9, v1

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    :cond_1
    const-string v9, "br"

    iget-object v10, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/telephony/MSimTelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 331
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mShowLatestAreaInfo:Z

    goto :goto_1

    .line 336
    :cond_2
    iget-boolean v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mShowLatestAreaInfo:Z

    if-nez v9, :cond_3

    .line 337
    const-string v9, "latest_area_info"

    invoke-direct {p0, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 340
    :cond_3
    const-string v9, "battery_level"

    invoke-virtual {p0, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mBatteryLevel:Landroid/preference/Preference;

    .line 341
    const-string v9, "battery_status"

    invoke-virtual {p0, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mBatteryStatus:Landroid/preference/Preference;

    .line 343
    const-string v9, "button_aboutphone_msim_status"

    invoke-virtual {p0, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    .line 344
    .local v7, selectSub:Landroid/preference/PreferenceScreen;
    if-eqz v7, :cond_4

    .line 345
    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 346
    .local v4, intent:Landroid/content/Intent;
    const-string v9, "PACKAGE"

    const-string v10, "com.android.stocksettings"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string v9, "TARGET_CLASS"

    const-string v10, "com.android.stocksettings.deviceinfo.MSimSubscriptionStatus"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    .end local v4           #intent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iput-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    .line 353
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f0b000b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mUnknown:Ljava/lang/String;

    .line 355
    const-string v9, "up_time"

    invoke-virtual {p0, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mUptime:Landroid/preference/Preference;

    .line 357
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/stocksettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 358
    sget-object v0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v6, :cond_5

    aget-object v5, v0, v2

    .line 359
    .local v5, key:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 358
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 363
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_5
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->setWimaxStatus()V

    .line 364
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->setWifiStatus()V

    .line 365
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->setBtStatus()V

    .line 366
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->setIpAddressStatus()V

    .line 368
    sget-object v8, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 369
    .local v8, serial:Ljava/lang/String;
    if-eqz v8, :cond_6

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 370
    const-string v9, "serial_number"

    invoke-direct {p0, v9, v8}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :goto_3
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->esnNumberSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 376
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->meidNumberSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 377
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->minNumberSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 378
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->prlVersionSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 379
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->imeiSVSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 380
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->imeiSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 381
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->iccIdSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 382
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->numberSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 383
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->serviceStateSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 384
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->roamingStateSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 385
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->operatorNameSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 386
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mSigStrengthSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 387
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->dataStateSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 388
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->networkSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 389
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->areaInfoSummery:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->initMSimSummery([Ljava/lang/String;)V

    .line 391
    invoke-direct {p0, v3}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->updateMSimSummery(I)V

    .line 392
    return-void

    .line 372
    :cond_6
    const-string v9, "serial_number"

    invoke-direct {p0, v9}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 498
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 500
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/stocksettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 501
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 506
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 507
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 508
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 471
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 473
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/stocksettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 474
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mNumPhones:I

    if-ge v1, v2, :cond_0

    .line 475
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v1

    const/16 v4, 0x141

    invoke-virtual {v2, v3, v4}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 479
    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->updateSignalStrength(I)V

    .line 480
    invoke-direct {p0, v1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->updateServiceState(I)V

    .line 481
    invoke-direct {p0, v1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->updateDataState(I)V

    .line 482
    invoke-direct {p0, v1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->updateNetworkType(I)V

    .line 484
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    .local v0, getLatestIntent:Landroid/content/Intent;
    const-string v2, "subscription"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 486
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 474
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    .end local v0           #getLatestIntent:Landroid/content/Intent;
    .end local v1           #i:I
    :cond_0
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 491
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 492
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 494
    return-void
.end method

.method updateSignalStrength(I)V
    .locals 7
    .parameter "subscription"

    .prologue
    const/4 v5, -0x1

    .line 620
    const/4 v2, 0x0

    .line 622
    .local v2, signalDbm:I
    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v4, v4, p1

    if-eqz v4, :cond_1

    .line 623
    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 624
    .local v3, state:I
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 626
    .local v0, r:Landroid/content/res/Resources;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_2

    .line 628
    :cond_0
    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mSigStrengthSummery:[Ljava/lang/String;

    const-string v5, "0"

    invoke-direct {p0, p1, v5}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p1

    .line 646
    :goto_0
    const-string v4, "signal_strength"

    iget-object v5, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mSigStrengthSummery:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->setMSimSummery(Ljava/lang/String;[Ljava/lang/String;)V

    .line 648
    .end local v0           #r:Landroid/content/res/Resources;
    .end local v3           #state:I
    :cond_1
    return-void

    .line 630
    .restart local v0       #r:Landroid/content/res/Resources;
    .restart local v3       #state:I
    :cond_2
    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v2

    .line 632
    if-ne v5, v2, :cond_3

    .line 633
    const/4 v2, 0x0

    .line 636
    :cond_3
    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v1

    .line 637
    .local v1, signalAsu:I
    if-ne v5, v1, :cond_4

    .line 638
    const/4 v1, 0x0

    .line 640
    :cond_4
    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mSigStrengthSummery:[Ljava/lang/String;

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

    invoke-direct {p0, p1, v5}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getSimSummery(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p1

    goto :goto_0
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 758
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 759
    .local v0, at:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 761
    .local v2, ut:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 762
    const-wide/16 v2, 0x1

    .line 765
    :cond_0
    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 766
    return-void
.end method
