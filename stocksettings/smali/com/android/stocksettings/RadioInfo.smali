.class public Lcom/android/stocksettings/RadioInfo;
.super Landroid/app/Activity;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stocksettings/RadioInfo$23;,
        Lcom/android/stocksettings/RadioInfo$CellInfoListRateHandler;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private attempts:Landroid/widget/TextView;

.field private callState:Landroid/widget/TextView;

.field private cellInfoListRateButton:Landroid/widget/Button;

.field private dBm:Landroid/widget/TextView;

.field private disconnects:Landroid/widget/TextView;

.field private dnsCheckState:Landroid/widget/TextView;

.field private dnsCheckToggleButton:Landroid/widget/Button;

.field private gprsState:Landroid/widget/TextView;

.field private gsmState:Landroid/widget/TextView;

.field private imsRegRequiredButton:Landroid/widget/Button;

.field private lteRamDumpButton:Landroid/widget/Button;

.field private mCellInfo:Landroid/widget/TextView;

.field mCellInfoListRateHandler:Lcom/android/stocksettings/RadioInfo$CellInfoListRateHandler;

.field private mCellInfoValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCfi:Landroid/widget/TextView;

.field private mCfiValue:Z

.field private mDeviceId:Landroid/widget/TextView;

.field mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

.field private mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mHttpClientTest:Landroid/widget/TextView;

.field private mHttpClientTestResult:Ljava/lang/String;

.field mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

.field private mLocation:Landroid/widget/TextView;

.field mLteRamDumpHandler:Landroid/view/View$OnClickListener;

.field private mMSimTelephonyManager:Landroid/telephony/MSimTelephonyManager;

.field private mMultiSimFlag:Z

.field private mMwi:Landroid/widget/TextView;

.field private mMwiValue:Z

.field private mNeighboringCids:Landroid/widget/TextView;

.field mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field mPingButtonHandler:Landroid/view/View$OnClickListener;

.field private mPingHostname:Landroid/widget/TextView;

.field private mPingHostnameResult:Ljava/lang/String;

.field private mPingIpAddr:Landroid/widget/TextView;

.field private mPingIpAddrResult:Ljava/lang/String;

.field mPowerButtonHandler:Landroid/view/View$OnClickListener;

.field mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPreferredNetworkLabels:[Ljava/lang/String;

.field mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mSmsOverImsHandler:Landroid/view/View$OnClickListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private network:Landroid/widget/TextView;

.field private number:Landroid/widget/TextView;

.field private oemInfoButton:Landroid/widget/Button;

.field private operatorName:Landroid/widget/TextView;

.field private pingTestButton:Landroid/widget/Button;

.field private preferredNetworkType:Landroid/widget/Spinner;

.field private radioPowerButton:Landroid/widget/Button;

.field private received:Landroid/widget/TextView;

.field private refreshSmscButton:Landroid/widget/Button;

.field private resets:Landroid/widget/TextView;

.field private roamingState:Landroid/widget/TextView;

.field private sent:Landroid/widget/TextView;

.field private sentSinceReceived:Landroid/widget/TextView;

.field private smsOverImsButton:Landroid/widget/Button;

.field private smsc:Landroid/widget/EditText;

.field private successes:Landroid/widget/TextView;

.field private updateSmscButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    const-string v0, "RadioInfo"

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->TAG:Ljava/lang/String;

    .line 132
    iput-object v2, p0, Lcom/android/stocksettings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 138
    iput-object v2, p0, Lcom/android/stocksettings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    .line 139
    iput-boolean v1, p0, Lcom/android/stocksettings/RadioInfo;->mMwiValue:Z

    .line 140
    iput-boolean v1, p0, Lcom/android/stocksettings/RadioInfo;->mCfiValue:Z

    .line 141
    iput-boolean v1, p0, Lcom/android/stocksettings/RadioInfo;->mMultiSimFlag:Z

    .line 144
    new-instance v0, Lcom/android/stocksettings/RadioInfo$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/RadioInfo$1;-><init>(Lcom/android/stocksettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 182
    new-instance v0, Lcom/android/stocksettings/RadioInfo$2;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/RadioInfo$2;-><init>(Lcom/android/stocksettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mHandler:Landroid/os/Handler;

    .line 909
    new-instance v0, Lcom/android/stocksettings/RadioInfo$7;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/RadioInfo$7;-><init>(Lcom/android/stocksettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 924
    new-instance v0, Lcom/android/stocksettings/RadioInfo$8;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/RadioInfo$8;-><init>(Lcom/android/stocksettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 939
    new-instance v0, Lcom/android/stocksettings/RadioInfo$9;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/RadioInfo$9;-><init>(Lcom/android/stocksettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 955
    new-instance v0, Lcom/android/stocksettings/RadioInfo$10;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/RadioInfo$10;-><init>(Lcom/android/stocksettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 962
    new-instance v0, Lcom/android/stocksettings/RadioInfo$11;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/RadioInfo$11;-><init>(Lcom/android/stocksettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 971
    new-instance v0, Lcom/android/stocksettings/RadioInfo$12;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/RadioInfo$12;-><init>(Lcom/android/stocksettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 997
    new-instance v0, Lcom/android/stocksettings/RadioInfo$13;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/RadioInfo$13;-><init>(Lcom/android/stocksettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPowerButtonHandler:Landroid/view/View$OnClickListener;

    .line 1022
    new-instance v0, Lcom/android/stocksettings/RadioInfo$CellInfoListRateHandler;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/RadioInfo$CellInfoListRateHandler;-><init>(Lcom/android/stocksettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mCellInfoListRateHandler:Lcom/android/stocksettings/RadioInfo$CellInfoListRateHandler;

    .line 1026
    new-instance v0, Lcom/android/stocksettings/RadioInfo$14;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/RadioInfo$14;-><init>(Lcom/android/stocksettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

    .line 1052
    new-instance v0, Lcom/android/stocksettings/RadioInfo$15;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/RadioInfo$15;-><init>(Lcom/android/stocksettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mSmsOverImsHandler:Landroid/view/View$OnClickListener;

    .line 1077
    new-instance v0, Lcom/android/stocksettings/RadioInfo$16;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/RadioInfo$16;-><init>(Lcom/android/stocksettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mLteRamDumpHandler:Landroid/view/View$OnClickListener;

    .line 1100
    new-instance v0, Lcom/android/stocksettings/RadioInfo$17;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/RadioInfo$17;-><init>(Lcom/android/stocksettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    .line 1107
    new-instance v0, Lcom/android/stocksettings/RadioInfo$18;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/RadioInfo$18;-><init>(Lcom/android/stocksettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    .line 1120
    new-instance v0, Lcom/android/stocksettings/RadioInfo$19;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/RadioInfo$19;-><init>(Lcom/android/stocksettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    .line 1126
    new-instance v0, Lcom/android/stocksettings/RadioInfo$20;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/RadioInfo$20;-><init>(Lcom/android/stocksettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1134
    new-instance v0, Lcom/android/stocksettings/RadioInfo$21;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/RadioInfo$21;-><init>(Lcom/android/stocksettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1140
    new-instance v0, Lcom/android/stocksettings/RadioInfo$22;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/RadioInfo$22;-><init>(Lcom/android/stocksettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/stocksettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updateDataState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/stocksettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updateDataStats()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/stocksettings/RadioInfo;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/stocksettings/RadioInfo;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/stocksettings/RadioInfo;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/stocksettings/RadioInfo;->updateCellInfoTv(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/stocksettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updatePhoneState()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/stocksettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/stocksettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updateServiceState()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/stocksettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updatePowerState()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/stocksettings/RadioInfo;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/stocksettings/RadioInfo;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/stocksettings/RadioInfo;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/stocksettings/RadioInfo;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/stocksettings/RadioInfo;->updateNeighboringCids(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/stocksettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updatePdpList()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/stocksettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/stocksettings/RadioInfo;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->smsc:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/stocksettings/RadioInfo;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/stocksettings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/stocksettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/stocksettings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/stocksettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/stocksettings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/stocksettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/stocksettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->pingIpAddr()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/stocksettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/stocksettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->pingHostname()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/stocksettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->httpClientTest()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/stocksettings/RadioInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/stocksettings/RadioInfo;->mMultiSimFlag:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/stocksettings/RadioInfo;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/stocksettings/RadioInfo;)Landroid/telephony/MSimTelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mMSimTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/stocksettings/RadioInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->isRadioOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/stocksettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updateCellInfoListRate()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/stocksettings/RadioInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->isImsRegRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/stocksettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updateImsRegRequiredState()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/stocksettings/RadioInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/stocksettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updateDataStats2()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/stocksettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updateSmsOverImsState()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/stocksettings/RadioInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/stocksettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updateLteRamDumpState()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/stocksettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updateDnsCheckState()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/stocksettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updatePingState()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/stocksettings/RadioInfo;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/stocksettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->refreshSmsc()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/stocksettings/RadioInfo;Landroid/telephony/CellLocation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/stocksettings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/stocksettings/RadioInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/stocksettings/RadioInfo;->mMwiValue:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/stocksettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updateMessageWaiting()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/stocksettings/RadioInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/stocksettings/RadioInfo;->mCfiValue:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/stocksettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updateCallRedirect()V

    return-void
.end method

.method private httpClientTest()V
    .locals 4

    .prologue
    .line 802
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 804
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    const-string v2, "http://www.google.com"

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 805
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 806
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 807
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 811
    :goto_0
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 815
    :goto_1
    return-void

    .line 809
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail: Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 812
    :catch_0
    move-exception v0

    .line 813
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    goto :goto_1
.end method

.method private isImsRegRequired()Z
    .locals 2

    .prologue
    .line 1039
    const-string v0, "persist.radio.imsregrequired"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isLteRamDumpEnabled()Z
    .locals 2

    .prologue
    .line 1089
    const-string v0, "persist.radio.ramdump"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isRadioOn()Z
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSmsOverImsEnabled()Z
    .locals 2

    .prologue
    .line 1064
    const-string v0, "persist.radio.imsallowmtsms"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1154
    const-string v0, "RadioInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RadioInfo] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    return-void
.end method

.method private final pingHostname()V
    .locals 2

    .prologue
    .line 782
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "ping -c 1 www.google.com"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 783
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 784
    if-nez v0, :cond_0

    .line 785
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    .line 796
    :goto_0
    return-void

    .line 787
    :cond_0
    const-string v0, "Fail: Host unreachable"

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 789
    :catch_0
    move-exception v0

    .line 790
    const-string v0, "Fail: Unknown Host"

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 791
    :catch_1
    move-exception v0

    .line 792
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 793
    :catch_2
    move-exception v0

    .line 794
    const-string v0, "Fail: InterruptedException"

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private final pingIpAddr()V
    .locals 4

    .prologue
    .line 762
    :try_start_0
    const-string v0, "74.125.47.104"

    .line 763
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ping -c 1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 764
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 765
    if-nez v0, :cond_0

    .line 766
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    .line 775
    :goto_0
    return-void

    .line 768
    :cond_0
    const-string v0, "Fail: IP addr not reachable"

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 770
    :catch_0
    move-exception v0

    .line 771
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0

    .line 772
    :catch_1
    move-exception v0

    .line 773
    const-string v0, "Fail: InterruptedException"

    iput-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private refreshSmsc()V
    .locals 3

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 819
    return-void
.end method

.method private final updateCallRedirect()V
    .locals 3

    .prologue
    .line 610
    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->mCfi:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/stocksettings/RadioInfo;->mMwiValue:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/stocksettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b07de

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    return-void

    .line 610
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b07df

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateCellInfoListRate()V
    .locals 3

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->cellInfoListRateButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellInfoListRate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/RadioInfo;->mCellInfoListRateHandler:Lcom/android/stocksettings/RadioInfo$CellInfoListRateHandler;

    invoke-virtual {v2}, Lcom/android/stocksettings/RadioInfo$CellInfoListRateHandler;->getRate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-boolean v0, p0, Lcom/android/stocksettings/RadioInfo;->mMultiSimFlag:Z

    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/stocksettings/RadioInfo;->updateCellInfoTv(Ljava/util/List;)V

    .line 493
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mMSimTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/stocksettings/RadioInfo;->updateCellInfoTv(Ljava/util/List;)V

    goto :goto_0
.end method

.method private final updateCellInfoTv(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/stocksettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 587
    const/4 v0, 0x0

    .line 588
    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 589
    const/16 v4, 0x5b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 591
    const-string v4, "]="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 594
    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move v1, v0

    goto :goto_0

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    return-void
.end method

.method private final updateDataState()V
    .locals 3

    .prologue
    .line 670
    .line 672
    iget-boolean v0, p0, Lcom/android/stocksettings/RadioInfo;->mMultiSimFlag:Z

    if-nez v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 677
    :goto_0
    invoke-virtual {p0}, Lcom/android/stocksettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 678
    const v1, 0x7f0b002b

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 680
    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 695
    :goto_1
    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->gprsState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    return-void

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mMSimTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getDataState()I

    move-result v0

    goto :goto_0

    .line 682
    :pswitch_0
    const v0, 0x7f0b0029

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 685
    :pswitch_1
    const v0, 0x7f0b0028

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 688
    :pswitch_2
    const v0, 0x7f0b0027

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 691
    :pswitch_3
    const v0, 0x7f0b002a

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 680
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final updateDataStats()V
    .locals 2

    .prologue
    .line 724
    const-string v0, "net.gsm.radio-reset"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 725
    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->resets:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    const-string v0, "net.gsm.attempt-gprs"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 728
    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->attempts:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    const-string v0, "net.gsm.succeed-gprs"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 731
    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->successes:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    const-string v0, "net.ppp.reset-by-timeout"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 737
    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->sentSinceReceived:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 738
    return-void
.end method

.method private final updateDataStats2()V
    .locals 12

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/android/stocksettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 743
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v1

    .line 744
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v3

    .line 745
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v5

    .line 746
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v7

    .line 748
    const v9, 0x7f0b002c

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 749
    const v10, 0x7f0b002d

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 751
    iget-object v10, p0, Lcom/android/stocksettings/RadioInfo;->sent:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 752
    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->received:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    return-void
.end method

.method private updateDnsCheckState()V
    .locals 3

    .prologue
    .line 496
    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/stocksettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b07e2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    return-void

    .line 496
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b07e3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateImsRegRequiredState()V
    .locals 2

    .prologue
    .line 1043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateImsRegRequiredState isImsRegRequired()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->isImsRegRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/stocksettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1044
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->isImsRegRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0017

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1047
    :goto_0
    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    return-void

    .line 1044
    :cond_0
    const v0, 0x7f0b0016

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateLocation(Landroid/telephony/CellLocation;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, -0x1

    .line 528
    invoke-virtual {p0}, Lcom/android/stocksettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 529
    instance-of v0, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_2

    .line 530
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 531
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    .line 532
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    .line 533
    iget-object v3, p0, Lcom/android/stocksettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0b0030

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v0, v8, :cond_0

    const-string v0, "unknown"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f0b0031

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v2, v8, :cond_1

    const-string v0, "unknown"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    :goto_2
    return-void

    .line 533
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 538
    :cond_2
    instance-of v0, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_8

    .line 539
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 540
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 541
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    .line 542
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    .line 543
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v3

    .line 544
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v4

    .line 545
    iget-object v5, p0, Lcom/android/stocksettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v0, v8, :cond_3

    const-string v0, "unknown"

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "   "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "SID = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v1, v8, :cond_4

    const-string v0, "unknown"

    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v2, v8, :cond_5

    const-string v0, "unknown"

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LAT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v3, v8, :cond_6

    const-string v0, "unknown"

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LONG = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v4, v8, :cond_7

    const-string v0, "unknown"

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 560
    :cond_8
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private updateLteRamDumpState()V
    .locals 2

    .prologue
    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLteRamDumpState isLteRamDumpEnabled()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/stocksettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1094
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0019

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1097
    :goto_0
    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1098
    return-void

    .line 1094
    :cond_0
    const v0, 0x7f0b0018

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateMessageWaiting()V
    .locals 3

    .prologue
    .line 603
    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->mMwi:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/stocksettings/RadioInfo;->mMwiValue:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/stocksettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b07dc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    return-void

    .line 603
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b07dd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateNeighboringCids(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    if-eqz p1, :cond_2

    .line 570
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    const-string v0, "no neighboring cells"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    return-void

    .line 573
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    .line 574
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 578
    :cond_2
    const-string v0, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private final updateNetworkType()V
    .locals 3

    .prologue
    .line 699
    invoke-virtual {p0}, Lcom/android/stocksettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 700
    const-string v1, "gsm.network.type"

    const v2, 0x7f0b002b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 703
    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->network:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    return-void
.end method

.method private final updatePdpList()V
    .locals 2

    .prologue
    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "========DATA=======\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 906
    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->disconnects:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 907
    return-void
.end method

.method private final updatePhoneState()V
    .locals 4

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    .line 650
    invoke-virtual {p0}, Lcom/android/stocksettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 651
    const v0, 0x7f0b002b

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 653
    sget-object v3, Lcom/android/stocksettings/RadioInfo$23;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 665
    :goto_0
    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->callState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    return-void

    .line 655
    :pswitch_0
    const v0, 0x7f0b0024

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 658
    :pswitch_1
    const v0, 0x7f0b0025

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 661
    :pswitch_2
    const v0, 0x7f0b0026

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 653
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final updatePingState()V
    .locals 3

    .prologue
    const v2, 0x7f0b002b

    .line 822
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 824
    invoke-virtual {p0}, Lcom/android/stocksettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stocksettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    .line 825
    invoke-virtual {p0}, Lcom/android/stocksettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stocksettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    .line 826
    invoke-virtual {p0}, Lcom/android/stocksettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stocksettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 828
    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/stocksettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 829
    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/stocksettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 830
    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/stocksettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 832
    new-instance v1, Lcom/android/stocksettings/RadioInfo$3;

    invoke-direct {v1, p0}, Lcom/android/stocksettings/RadioInfo$3;-><init>(Lcom/android/stocksettings/RadioInfo;)V

    .line 839
    new-instance v2, Lcom/android/stocksettings/RadioInfo$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/stocksettings/RadioInfo$4;-><init>(Lcom/android/stocksettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 846
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 848
    new-instance v2, Lcom/android/stocksettings/RadioInfo$5;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/stocksettings/RadioInfo$5;-><init>(Lcom/android/stocksettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 855
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 857
    new-instance v2, Lcom/android/stocksettings/RadioInfo$6;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/stocksettings/RadioInfo$6;-><init>(Lcom/android/stocksettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 864
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 865
    return-void
.end method

.method private updatePowerState()V
    .locals 2

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->isRadioOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0013

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 483
    :goto_0
    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 484
    return-void

    .line 480
    :cond_0
    const v0, 0x7f0b0012

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateProperties()V
    .locals 4

    .prologue
    const v3, 0x7f0b002b

    .line 709
    invoke-virtual {p0}, Lcom/android/stocksettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 711
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 712
    if-nez v0, :cond_0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 713
    :cond_0
    iget-object v2, p0, Lcom/android/stocksettings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 717
    if-nez v0, :cond_1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 718
    :cond_1
    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->number:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    return-void
.end method

.method private final updateServiceState()V
    .locals 4

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 619
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 620
    invoke-virtual {p0}, Lcom/android/stocksettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 621
    const v0, 0x7f0b002b

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 623
    packed-switch v2, :pswitch_data_0

    .line 636
    :goto_0
    iget-object v2, p0, Lcom/android/stocksettings/RadioInfo;->gsmState:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v2, 0x7f0b0022

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 644
    :goto_1
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->operatorName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    return-void

    .line 625
    :pswitch_0
    const v0, 0x7f0b001e

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 629
    :pswitch_1
    const v0, 0x7f0b0020

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 632
    :pswitch_2
    const v0, 0x7f0b0021

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v2, 0x7f0b0023

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 623
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final updateSignalStrength()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 505
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 506
    invoke-virtual {p0}, Lcom/android/stocksettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 508
    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    const/4 v2, 0x3

    if-ne v2, v0, :cond_1

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->dBm:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v0

    .line 515
    if-ne v4, v0, :cond_2

    move v0, v1

    .line 517
    :cond_2
    iget-object v2, p0, Lcom/android/stocksettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v2

    .line 519
    if-ne v4, v2, :cond_3

    .line 521
    :goto_0
    iget-object v2, p0, Lcom/android/stocksettings/RadioInfo;->dBm:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f0b002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0b002f

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    return-void

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private updateSmsOverImsState()V
    .locals 2

    .prologue
    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSmsOverImsState isSmsOverImsEnabled()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/stocksettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1069
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0015

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1072
    :goto_0
    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1073
    return-void

    .line 1069
    :cond_0
    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 252
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 254
    const v7, 0x7f040073

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->setContentView(I)V

    .line 256
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 258
    const-string v7, "phone_msim"

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/MSimTelephonyManager;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->mMSimTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    .line 262
    :try_start_0
    iget-object v7, p0, Lcom/android/stocksettings/RadioInfo;->mMSimTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/stocksettings/RadioInfo;->mMultiSimFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    iget-boolean v7, p0, Lcom/android/stocksettings/RadioInfo;->mMultiSimFlag:Z

    if-eqz v7, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/android/stocksettings/RadioInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 269
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 270
    const-string v7, "subscription"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 271
    .local v6, subscription:I
    if-le v6, v8, :cond_0

    .line 272
    invoke-static {v6}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 276
    .end local v2           #intent:Landroid/content/Intent;
    .end local v6           #subscription:I
    :cond_0
    iget-object v7, p0, Lcom/android/stocksettings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v7, :cond_1

    .line 277
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 280
    :cond_1
    const v7, 0x7f08012a

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    .line 281
    const v7, 0x7f08012b

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->number:Landroid/widget/TextView;

    .line 282
    const v7, 0x7f08013b

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->callState:Landroid/widget/TextView;

    .line 283
    const v7, 0x7f08012c

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->operatorName:Landroid/widget/TextView;

    .line 284
    const v7, 0x7f080135

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->roamingState:Landroid/widget/TextView;

    .line 285
    const v7, 0x7f080136

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->gsmState:Landroid/widget/TextView;

    .line 286
    const v7, 0x7f080137

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->gprsState:Landroid/widget/TextView;

    .line 287
    const v7, 0x7f080138

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->network:Landroid/widget/TextView;

    .line 288
    const v7, 0x7f080131

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->dBm:Landroid/widget/TextView;

    .line 289
    const v7, 0x7f080139

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->mMwi:Landroid/widget/TextView;

    .line 290
    const v7, 0x7f08013a

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->mCfi:Landroid/widget/TextView;

    .line 291
    const v7, 0x7f080132

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    .line 292
    const v7, 0x7f080133

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    .line 293
    const v7, 0x7f080134

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    .line 295
    const v7, 0x7f08013c

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->resets:Landroid/widget/TextView;

    .line 296
    const v7, 0x7f08013d

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->attempts:Landroid/widget/TextView;

    .line 297
    const v7, 0x7f08013e

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->successes:Landroid/widget/TextView;

    .line 298
    const v7, 0x7f08013f

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->disconnects:Landroid/widget/TextView;

    .line 299
    const v7, 0x7f080142

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->sentSinceReceived:Landroid/widget/TextView;

    .line 300
    const v7, 0x7f080140

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->sent:Landroid/widget/TextView;

    .line 301
    const v7, 0x7f080141

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->received:Landroid/widget/TextView;

    .line 302
    const v7, 0x7f08014c

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->smsc:Landroid/widget/EditText;

    .line 303
    const v7, 0x7f08014e

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    .line 305
    const v7, 0x7f08012e

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    .line 306
    const v7, 0x7f08012f

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    .line 307
    const v7, 0x7f080130

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    .line 309
    invoke-virtual {p0}, Lcom/android/stocksettings/RadioInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07005d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    .line 311
    const v7, 0x7f080143

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    .line 312
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v7, 0x1090008

    iget-object v8, p0, Lcom/android/stocksettings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    invoke-direct {v0, p0, v7, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 314
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v7, 0x1090009

    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 315
    iget-object v7, p0, Lcom/android/stocksettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 316
    iget-object v7, p0, Lcom/android/stocksettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    iget-object v8, p0, Lcom/android/stocksettings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 318
    const v7, 0x7f080144

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    .line 319
    iget-object v7, p0, Lcom/android/stocksettings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/stocksettings/RadioInfo;->mPowerButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    const v7, 0x7f080145

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->cellInfoListRateButton:Landroid/widget/Button;

    .line 322
    iget-object v7, p0, Lcom/android/stocksettings/RadioInfo;->cellInfoListRateButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/stocksettings/RadioInfo;->mCellInfoListRateHandler:Lcom/android/stocksettings/RadioInfo$CellInfoListRateHandler;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    const v7, 0x7f080146

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    .line 325
    iget-object v7, p0, Lcom/android/stocksettings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/stocksettings/RadioInfo;->mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    const v7, 0x7f080147

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    .line 328
    iget-object v7, p0, Lcom/android/stocksettings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/stocksettings/RadioInfo;->mSmsOverImsHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    const v7, 0x7f080148

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    .line 331
    iget-object v7, p0, Lcom/android/stocksettings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/stocksettings/RadioInfo;->mLteRamDumpHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    const v7, 0x7f08012d

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    .line 334
    iget-object v7, p0, Lcom/android/stocksettings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/stocksettings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    const v7, 0x7f08014a

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    .line 336
    iget-object v7, p0, Lcom/android/stocksettings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/stocksettings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    const v7, 0x7f08014b

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    .line 338
    iget-object v7, p0, Lcom/android/stocksettings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/stocksettings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    const v7, 0x7f08014d

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    .line 340
    iget-object v7, p0, Lcom/android/stocksettings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/stocksettings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    const v7, 0x7f08014f

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    .line 343
    iget-object v7, p0, Lcom/android/stocksettings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/stocksettings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    invoke-virtual {p0}, Lcom/android/stocksettings/RadioInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 345
    .local v5, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.stocksettings.OEM_RADIO_INFO"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    .local v3, oemInfoIntent:Landroid/content/Intent;
    invoke-virtual {v5, v3, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 347
    .local v4, oemInfoIntentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 348
    iget-object v7, p0, Lcom/android/stocksettings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 351
    :cond_2
    new-instance v7, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v8, p0, Lcom/android/stocksettings/RadioInfo;->mHandler:Landroid/os/Handler;

    invoke-direct {v7, p0, v8}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 352
    iget-object v7, p0, Lcom/android/stocksettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v8, 0xc8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 353
    iget-object v7, p0, Lcom/android/stocksettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v8, 0x12c

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 354
    iget-object v7, p0, Lcom/android/stocksettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyPhoneCallState(I)V

    .line 356
    iget-object v7, p0, Lcom/android/stocksettings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v8, p0, Lcom/android/stocksettings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 358
    iget-object v7, p0, Lcom/android/stocksettings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v8, p0, Lcom/android/stocksettings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x3ea

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 361
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 364
    iget-boolean v7, p0, Lcom/android/stocksettings/RadioInfo;->mMultiSimFlag:Z

    if-nez v7, :cond_3

    .line 365
    iget-object v7, p0, Lcom/android/stocksettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    .line 368
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate: mCellInfoValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/stocksettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/stocksettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 369
    return-void

    .line 263
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v3           #oemInfoIntent:Landroid/content/Intent;
    .end local v4           #oemInfoIntentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 264
    .local v1, e:Ljava/lang/Exception;
    iput-boolean v9, p0, Lcom/android/stocksettings/RadioInfo;->mMultiSimFlag:Z

    goto/16 :goto_0

    .line 367
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v3       #oemInfoIntent:Landroid/content/Intent;
    .restart local v4       #oemInfoIntentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5       #pm:Landroid/content/pm/PackageManager;
    :cond_3
    iget-object v7, p0, Lcom/android/stocksettings/RadioInfo;->mMSimTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/stocksettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 431
    const v0, 0x7f0b00c3

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x62

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 434
    const v0, 0x7f0b001a

    invoke-interface {p1, v3, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 436
    const/4 v0, 0x2

    const v1, 0x7f0b001b

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 438
    const/4 v0, 0x3

    const v1, 0x7f0b001c

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 440
    const/4 v0, 0x4

    const v1, 0x7f0b001d

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 442
    const/4 v0, 0x5

    const-string v1, "Disable data connection"

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 444
    return v3
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 417
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 419
    const-string v0, "onPause: unregister phone & data intents"

    invoke-direct {p0, v0}, Lcom/android/stocksettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 423
    iget-boolean v0, p0, Lcom/android/stocksettings/RadioInfo;->mMultiSimFlag:Z

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 427
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mMSimTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 450
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 453
    iget-boolean v0, p0, Lcom/android/stocksettings/RadioInfo;->mMultiSimFlag:Z

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 459
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 468
    :pswitch_0
    const/4 v0, 0x0

    .line 471
    :goto_1
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 472
    return v1

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mMSimTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getDataState()I

    move-result v0

    goto :goto_0

    .line 462
    :pswitch_1
    const-string v0, "Disable data connection"

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move v0, v1

    .line 463
    goto :goto_1

    .line 465
    :pswitch_2
    const-string v0, "Enable data connection"

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move v0, v1

    .line 466
    goto :goto_1

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/16 v2, 0x4dc

    .line 373
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 375
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updatePhoneState()V

    .line 376
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updateSignalStrength()V

    .line 377
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updateMessageWaiting()V

    .line 378
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updateCallRedirect()V

    .line 379
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updateServiceState()V

    .line 380
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/stocksettings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    .line 381
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updateDataState()V

    .line 382
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updateDataStats()V

    .line 383
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updateDataStats2()V

    .line 384
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updatePowerState()V

    .line 385
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updateCellInfoListRate()V

    .line 386
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updateImsRegRequiredState()V

    .line 387
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updateSmsOverImsState()V

    .line 388
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updateLteRamDumpState()V

    .line 389
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updateProperties()V

    .line 390
    invoke-direct {p0}, Lcom/android/stocksettings/RadioInfo;->updateDnsCheckState()V

    .line 392
    const-string v0, "onResume: register phone & data intents"

    invoke-direct {p0, v0}, Lcom/android/stocksettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 396
    iget-boolean v0, p0, Lcom/android/stocksettings/RadioInfo;->mMultiSimFlag:Z

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 413
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo;->mMSimTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method
