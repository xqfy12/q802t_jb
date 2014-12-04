.class public Lcom/android/stocksettings/DataUsageSummary;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stocksettings/DataUsageSummary$UidDetailTask;,
        Lcom/android/stocksettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;,
        Lcom/android/stocksettings/DataUsageSummary$ConfirmAppRestrictFragment;,
        Lcom/android/stocksettings/DataUsageSummary$DeniedRestrictFragment;,
        Lcom/android/stocksettings/DataUsageSummary$ConfirmRestrictFragment;,
        Lcom/android/stocksettings/DataUsageSummary$ConfirmDataRoamingFragment;,
        Lcom/android/stocksettings/DataUsageSummary$ConfirmDataDisableFragment;,
        Lcom/android/stocksettings/DataUsageSummary$LimitEditorFragment;,
        Lcom/android/stocksettings/DataUsageSummary$WarningEditorFragment;,
        Lcom/android/stocksettings/DataUsageSummary$CycleEditorFragment;,
        Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment;,
        Lcom/android/stocksettings/DataUsageSummary$AppDetailsFragment;,
        Lcom/android/stocksettings/DataUsageSummary$DataUsageAdapter;,
        Lcom/android/stocksettings/DataUsageSummary$AppItem;,
        Lcom/android/stocksettings/DataUsageSummary$CycleAdapter;,
        Lcom/android/stocksettings/DataUsageSummary$CycleChangeItem;,
        Lcom/android/stocksettings/DataUsageSummary$CycleItem;,
        Lcom/android/stocksettings/DataUsageSummary$AirPlaneModeChangeIntentReceiver;
    }
.end annotation


# static fields
.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;


# instance fields
.field private mAdapter:Lcom/android/stocksettings/DataUsageSummary$DataUsageAdapter;

.field private mAirPlaneModeReceiver:Lcom/android/stocksettings/DataUsageSummary$AirPlaneModeChangeIntentReceiver;

.field private mAppBackground:Landroid/widget/TextView;

.field private mAppDetail:Landroid/view/View;

.field private mAppForeground:Landroid/widget/TextView;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppPieChart:Lcom/android/stocksettings/widget/PieChartView;

.field private mAppRestrict:Landroid/widget/CheckBox;

.field private mAppRestrictListener:Landroid/view/View$OnClickListener;

.field private mAppRestrictView:Landroid/view/View;

.field private mAppSettings:Landroid/widget/Button;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mAppSettingsListener:Landroid/view/View$OnClickListener;

.field private mAppSwitches:Landroid/widget/LinearLayout;

.field private mAppTitles:Landroid/view/ViewGroup;

.field private mBinding:Z

.field private mChart:Lcom/android/stocksettings/widget/ChartDataUsageView;

.field private mChartData:Lcom/android/stocksettings/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/stocksettings/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mChartListener:Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mCurrentApp:Lcom/android/stocksettings/DataUsageSummary$AppItem;

.field private mCurrentTab:Ljava/lang/String;

.field private mCycleAdapter:Lcom/android/stocksettings/DataUsageSummary$CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mCycleView:Landroid/view/View;

.field private mDataEnabled:Landroid/widget/Switch;

.field private mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mDataEnabledView:Landroid/view/View;

.field private mDisableAtLimit:Landroid/widget/CheckBox;

.field private mDisableAtLimitListener:Landroid/view/View$OnClickListener;

.field private mDisableAtLimitView:Landroid/view/View;

.field private mEmpty:Landroid/widget/TextView;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mEthernetStateOld:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeader:Landroid/view/ViewGroup;

.field private mInsetSide:I

.field private mIntentTab:Ljava/lang/String;

.field private mListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mMenuAutoSync:Landroid/view/MenuItem;

.field private mMenuDataRoaming:Landroid/view/MenuItem;

.field private mMenuRestrictBackground:Landroid/view/MenuItem;

.field private mMobile4gRadioStateOld:Z

.field private mMobileDataEnabled:Ljava/lang/Boolean;

.field private mMobileRadioStateOld:Z

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mNetworkSwitches:Landroid/widget/LinearLayout;

.field private mNetworkSwitchesContainer:Landroid/view/ViewGroup;

.field private mPolicyEditor:Lcom/android/stocksettings/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRunnable:Ljava/lang/Runnable;

.field private mShowEthernet:Z

.field private mShowWifi:Z

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidDetailProvider:Lcom/android/stocksettings/net/UidDetailProvider;

.field private mUsageSummary:Landroid/widget/TextView;

.field private mWifiRadioStateOld:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1503
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/stocksettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    .line 1504
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/stocksettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/stocksettings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 163
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 217
    iput v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mInsetSide:I

    .line 248
    iput-boolean v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mShowWifi:Z

    .line 249
    iput-boolean v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mShowEthernet:Z

    .line 254
    iput-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mCurrentApp:Lcom/android/stocksettings/DataUsageSummary$AppItem;

    .line 260
    iput-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 261
    iput-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 279
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mHandler:Landroid/os/Handler;

    .line 280
    new-instance v0, Lcom/android/stocksettings/DataUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/DataUsageSummary$1;-><init>(Lcom/android/stocksettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mRunnable:Ljava/lang/Runnable;

    .line 745
    new-instance v0, Lcom/android/stocksettings/DataUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/DataUsageSummary$3;-><init>(Lcom/android/stocksettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 765
    new-instance v0, Lcom/android/stocksettings/DataUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/DataUsageSummary$4;-><init>(Lcom/android/stocksettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 1175
    new-instance v0, Lcom/android/stocksettings/DataUsageSummary$5;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/DataUsageSummary$5;-><init>(Lcom/android/stocksettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1196
    new-instance v0, Lcom/android/stocksettings/DataUsageSummary$6;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/DataUsageSummary$6;-><init>(Lcom/android/stocksettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    .line 1210
    new-instance v0, Lcom/android/stocksettings/DataUsageSummary$7;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/DataUsageSummary$7;-><init>(Lcom/android/stocksettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    .line 1226
    new-instance v0, Lcom/android/stocksettings/DataUsageSummary$8;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/DataUsageSummary$8;-><init>(Lcom/android/stocksettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    .line 1236
    new-instance v0, Lcom/android/stocksettings/DataUsageSummary$9;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/DataUsageSummary$9;-><init>(Lcom/android/stocksettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1250
    new-instance v0, Lcom/android/stocksettings/DataUsageSummary$10;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/DataUsageSummary$10;-><init>(Lcom/android/stocksettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1349
    new-instance v0, Lcom/android/stocksettings/DataUsageSummary$11;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/DataUsageSummary$11;-><init>(Lcom/android/stocksettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1380
    new-instance v0, Lcom/android/stocksettings/DataUsageSummary$12;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/DataUsageSummary$12;-><init>(Lcom/android/stocksettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1437
    new-instance v0, Lcom/android/stocksettings/DataUsageSummary$13;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/DataUsageSummary$13;-><init>(Lcom/android/stocksettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mChartListener:Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;

    .line 2307
    return-void
.end method

.method static synthetic access$000(Lcom/android/stocksettings/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/stocksettings/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mShowWifi:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/stocksettings/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/stocksettings/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/stocksettings/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mBinding:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/stocksettings/DataUsageSummary;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/stocksettings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/stocksettings/DataUsageSummary;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/stocksettings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/stocksettings/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/stocksettings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/stocksettings/DataUsageSummary;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Lcom/android/stocksettings/DataUsageSummary;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/stocksettings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/stocksettings/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mShowEthernet:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/stocksettings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/stocksettings/DataUsageSummary;->setAppRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/stocksettings/DataUsageSummary;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/stocksettings/DataUsageSummary;)Lcom/android/stocksettings/net/UidDetailProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/stocksettings/net/UidDetailProvider;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/stocksettings/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/stocksettings/DataUsageSummary;)Lcom/android/stocksettings/widget/ChartDataUsageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mChart:Lcom/android/stocksettings/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/stocksettings/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->updateDetailData()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/stocksettings/DataUsageSummary;)Landroid/net/INetworkStatsSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/stocksettings/DataUsageSummary;)Lcom/android/stocksettings/net/ChartData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mChartData:Lcom/android/stocksettings/net/ChartData;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/stocksettings/DataUsageSummary;Lcom/android/stocksettings/net/ChartData;)Lcom/android/stocksettings/net/ChartData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/stocksettings/DataUsageSummary;->mChartData:Lcom/android/stocksettings/net/ChartData;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/stocksettings/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->updateAppDetail()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/stocksettings/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/stocksettings/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mMobileRadioStateOld:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/stocksettings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/stocksettings/DataUsageSummary;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/stocksettings/DataUsageSummary;->mMobileRadioStateOld:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/stocksettings/DataUsageSummary;)Lcom/android/stocksettings/DataUsageSummary$DataUsageAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mAdapter:Lcom/android/stocksettings/DataUsageSummary$DataUsageAdapter;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/stocksettings/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/stocksettings/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/stocksettings/DataUsageSummary;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Lcom/android/stocksettings/DataUsageSummary;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic access$3502(Lcom/android/stocksettings/DataUsageSummary;Lcom/android/stocksettings/DataUsageSummary$AppItem;)Lcom/android/stocksettings/DataUsageSummary$AppItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/stocksettings/DataUsageSummary;->mCurrentApp:Lcom/android/stocksettings/DataUsageSummary$AppItem;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/stocksettings/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/stocksettings/DataUsageSummary;)Lcom/android/stocksettings/net/NetworkPolicyEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mPolicyEditor:Lcom/android/stocksettings/net/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/stocksettings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/stocksettings/DataUsageSummary;->setDataRoaming(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/stocksettings/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mMobile4gRadioStateOld:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/stocksettings/DataUsageSummary;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/stocksettings/DataUsageSummary;->mMobile4gRadioStateOld:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/stocksettings/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mWifiRadioStateOld:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/stocksettings/DataUsageSummary;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/stocksettings/DataUsageSummary;->mWifiRadioStateOld:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/stocksettings/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mEthernetStateOld:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/stocksettings/DataUsageSummary;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/stocksettings/DataUsageSummary;->mEthernetStateOld:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/stocksettings/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->updateBody()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/stocksettings/DataUsageSummary;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/stocksettings/DataUsageSummary;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 680
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 684
    .local v0, transition:Landroid/animation/LayoutTransition;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 685
    return-object v0
.end method

.method private buildLimitedNetworksList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x5

    .line 2487
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2490
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 2492
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v4

    .line 2496
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2497
    invoke-static {v0}, Landroid/telephony/MSimTelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    .line 2498
    invoke-static {v4}, Lcom/android/stocksettings/DataUsageSummary;->getActiveSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 2504
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2, v4}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v2

    if-eq v2, v5, :cond_1

    :cond_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 2506
    :cond_1
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mPolicyEditor:Lcom/android/stocksettings/net/NetworkPolicyEditor;

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/stocksettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2507
    const v1, 0x7f0b06ca

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2509
    :cond_2
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mPolicyEditor:Lcom/android/stocksettings/net/NetworkPolicyEditor;

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/stocksettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2510
    const v1, 0x7f0b06c9

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2512
    :cond_3
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mPolicyEditor:Lcom/android/stocksettings/net/NetworkPolicyEditor;

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/stocksettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2513
    const v0, 0x7f0b06c8

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2517
    :cond_4
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mPolicyEditor:Lcom/android/stocksettings/net/NetworkPolicyEditor;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2518
    const v0, 0x7f0b06c4

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2520
    :cond_5
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mPolicyEditor:Lcom/android/stocksettings/net/NetworkPolicyEditor;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2521
    const v0, 0x7f0b06c5

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2524
    :cond_6
    return-object v3

    .line 2500
    :cond_7
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 2501
    invoke-static {v0}, Lcom/android/stocksettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto/16 :goto_0
.end method

.method private buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .parameter "tag"
    .parameter "titleRes"

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/stocksettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .parameter "tag"
    .parameter "title"

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private static computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2286
    const-string v0, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 2287
    if-nez v0, :cond_0

    move-object v0, v1

    .line 2299
    :goto_0
    return-object v0

    .line 2289
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 2299
    goto :goto_0

    .line 2291
    :pswitch_0
    const-string v0, "3g"

    goto :goto_0

    .line 2293
    :pswitch_1
    const-string v0, "4g"

    goto :goto_0

    .line 2295
    :pswitch_2
    const-string v0, "mobile"

    goto :goto_0

    .line 2297
    :pswitch_3
    const-string v0, "wifi"

    goto :goto_0

    .line 2289
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private ensureLayoutTransitions()V
    .locals 3

    .prologue
    .line 667
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mChart:Lcom/android/stocksettings/widget/ChartDataUsageView;

    invoke-virtual {v1}, Lcom/android/stocksettings/widget/ChartDataUsageView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 677
    :goto_0
    return-void

    .line 669
    :cond_0
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/stocksettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 670
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/stocksettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 671
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/stocksettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 673
    invoke-static {}, Lcom/android/stocksettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 674
    .local v0, chartTransition:Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 675
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 676
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mChart:Lcom/android/stocksettings/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public static formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1508
    .line 1510
    sget-object v8, Lcom/android/stocksettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v8

    .line 1511
    :try_start_0
    sget-object v0, Lcom/android/stocksettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1512
    sget-object v1, Lcom/android/stocksettings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    return-object v0

    .line 1514
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getActiveSubscriberId(I)Ljava/lang/String;
    .locals 1
    .parameter "sub"

    .prologue
    .line 1434
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/MSimTelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1428
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1429
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1430
    const-string v1, "test.subscriberid"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppRestrictBackground()Z
    .locals 3

    .prologue
    .line 1047
    iget-object v2, p0, Lcom/android/stocksettings/DataUsageSummary;->mCurrentApp:Lcom/android/stocksettings/DataUsageSummary$AppItem;

    iget v0, v2, Lcom/android/stocksettings/DataUsageSummary$AppItem;->key:I

    .line 1048
    .local v0, uid:I
    iget-object v2, p0, Lcom/android/stocksettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    .line 1049
    .local v1, uidPolicy:I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getDataRoaming()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1008
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1010
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v4, "SIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1012
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data_roaming"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1016
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1012
    goto :goto_0

    .line 1016
    :cond_2
    const-string v3, "data_roaming"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private getSubTag(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 2567
    if-gtz p1, :cond_0

    .line 2568
    const-string v0, ""

    .line 2570
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSubTitle(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 2576
    if-gtz p1, :cond_0

    .line 2577
    const-string v0, ""

    .line 2579
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0b06c7

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hasLimitedNetworks()Z
    .locals 1

    .prologue
    .line 2462
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->buildLimitedNetworksList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasReadyMobile4gRadio(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 2383
    const/4 v0, 0x0

    return v0
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 2371
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2372
    .local v0, conn:Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 2375
    .local v1, tele:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 2406
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2407
    .local v0, conn:Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2452
    const v0, 0x7f040025

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2454
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2455
    return-object v0
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x2

    .line 2443
    const v0, 0x7f040057

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2444
    const v0, 0x1020018

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2446
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2447
    return-object v1
.end method

.method private static insetListViewDrawables(Landroid/widget/ListView;I)V
    .locals 4
    .parameter "view"
    .parameter "insetSide"

    .prologue
    .line 2532
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2533
    .local v1, selector:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2537
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2538
    .local v2, stub:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2539
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2541
    new-instance v3, Lcom/android/stocksettings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v1, p1}, Lcom/android/stocksettings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2542
    new-instance v3, Lcom/android/stocksettings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v0, p1}, Lcom/android/stocksettings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2543
    return-void
.end method

.method private isAppDetailMode()Z
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mCurrentApp:Lcom/android/stocksettings/DataUsageSummary$AppItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 1000
    :try_start_0
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1003
    :goto_0
    return v0

    .line 1001
    :catch_0
    move-exception v0

    .line 1002
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMobileDataEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 964
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 966
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobile_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 970
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private isMobilePolicySplit()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1409
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1410
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/stocksettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1411
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1412
    .local v1, tele:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/stocksettings/DataUsageSummary;->mPolicyEditor:Lcom/android/stocksettings/net/NetworkPolicyEditor;

    invoke-static {v0}, Lcom/android/stocksettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/stocksettings/net/NetworkPolicyEditor;->isMobilePolicySplit(Ljava/lang/String;)Z

    move-result v2

    .line 1414
    .end local v1           #tele:Landroid/telephony/TelephonyManager;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z
    .locals 1
    .parameter "policy"

    .prologue
    .line 994
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private multiSimGetCurrentSub()I
    .locals 3

    .prologue
    .line 2586
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2588
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/android/stocksettings/DataUsageSummary;->getSubTag(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2594
    .end local v0           #i:I
    :goto_1
    return v0

    .line 2587
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2594
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setAppRestrictBackground(Z)V
    .locals 3
    .parameter "restrictBackground"

    .prologue
    .line 1054
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mCurrentApp:Lcom/android/stocksettings/DataUsageSummary$AppItem;

    iget v0, v1, Lcom/android/stocksettings/DataUsageSummary$AppItem;->key:I

    .line 1055
    .local v0, uid:I
    iget-object v2, p0, Lcom/android/stocksettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 1057
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1058
    return-void

    .line 1055
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setDataRoaming(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1022
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1024
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v4, "SIM"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1025
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v4

    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data_roaming"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v5, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1031
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v0

    if-ne v4, v0, :cond_0

    .line 1032
    const-string v0, "data_roaming"

    if-eqz p1, :cond_2

    :goto_1
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1038
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1039
    return-void

    :cond_1
    move v0, v2

    .line 1028
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1032
    goto :goto_1

    .line 1035
    :cond_3
    const-string v0, "data_roaming"

    if-eqz p1, :cond_4

    :goto_3
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method private setMobileDataEnabled(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 975
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v2, "SIM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 976
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v2

    .line 979
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobile_data"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 983
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 990
    :cond_0
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/stocksettings/DataUsageSummary;->updatePolicy(Z)V

    .line 991
    return-void

    :cond_1
    move v0, v1

    .line 979
    goto :goto_0

    .line 987
    :cond_2
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 988
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method private setMobilePolicySplit(Z)V
    .locals 4
    .parameter "split"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1420
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1421
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/stocksettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1422
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1423
    .local v1, tele:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/stocksettings/DataUsageSummary;->mPolicyEditor:Lcom/android/stocksettings/net/NetworkPolicyEditor;

    invoke-static {v0}, Lcom/android/stocksettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/stocksettings/net/NetworkPolicyEditor;->setMobilePolicySplit(Ljava/lang/String;Z)V

    .line 1425
    .end local v1           #tele:Landroid/telephony/TelephonyManager;
    :cond_0
    return-void
.end method

.method private setPolicyLimitBytes(J)V
    .locals 2
    .parameter "limitBytes"

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mPolicyEditor:Lcom/android/stocksettings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/stocksettings/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 954
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/stocksettings/DataUsageSummary;->updatePolicy(Z)V

    .line 955
    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 2
    .parameter "warningBytes"

    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mPolicyEditor:Lcom/android/stocksettings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/stocksettings/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 948
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/stocksettings/DataUsageSummary;->updatePolicy(Z)V

    .line 949
    return-void
.end method

.method private static setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2559
    const v0, 0x1020010

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2560
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2561
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2562
    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2550
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2551
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2552
    return-void
.end method

.method private updateAppDetail()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 872
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 873
    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 874
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 876
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 877
    iget-object v2, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 878
    iget-object v2, p0, Lcom/android/stocksettings/DataUsageSummary;->mCycleAdapter:Lcom/android/stocksettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v2, v1}, Lcom/android/stocksettings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 889
    iget-object v2, p0, Lcom/android/stocksettings/DataUsageSummary;->mChart:Lcom/android/stocksettings/widget/ChartDataUsageView;

    invoke-virtual {v2, v13}, Lcom/android/stocksettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 892
    iget-object v2, p0, Lcom/android/stocksettings/DataUsageSummary;->mCurrentApp:Lcom/android/stocksettings/DataUsageSummary$AppItem;

    iget v6, v2, Lcom/android/stocksettings/DataUsageSummary$AppItem;->key:I

    .line 893
    iget-object v2, p0, Lcom/android/stocksettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/stocksettings/net/UidDetailProvider;

    invoke-virtual {v2, v6, v0}, Lcom/android/stocksettings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/stocksettings/net/UidDetail;

    move-result-object v2

    .line 894
    iget-object v7, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    iget-object v8, v2, Lcom/android/stocksettings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 896
    iget-object v7, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 897
    iget-object v7, v2, Lcom/android/stocksettings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    .line 898
    iget-object v7, v2, Lcom/android/stocksettings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    array-length v8, v7

    move v2, v1

    :goto_0
    if-ge v2, v8, :cond_2

    aget-object v9, v7, v2

    .line 899
    iget-object v10, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    invoke-static {v5, v11, v9}, Lcom/android/stocksettings/DataUsageSummary;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 898
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 880
    :cond_0
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 881
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mCycleAdapter:Lcom/android/stocksettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v1, v0}, Lcom/android/stocksettings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 884
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mChart:Lcom/android/stocksettings/widget/ChartDataUsageView;

    invoke-virtual {v0, v13}, Lcom/android/stocksettings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 943
    :goto_1
    return-void

    .line 902
    :cond_1
    iget-object v7, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v2, v2, Lcom/android/stocksettings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v5, v8, v2}, Lcom/android/stocksettings/DataUsageSummary;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 906
    :cond_2
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 907
    if-eqz v5, :cond_4

    array-length v2, v5

    if-lez v2, :cond_4

    .line 908
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 909
    iget-object v2, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 913
    array-length v7, v5

    move v2, v1

    :goto_2
    if-ge v2, v7, :cond_6

    aget-object v8, v5, v2

    .line 914
    iget-object v9, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v9, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 915
    iget-object v8, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v4, v8, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 921
    :goto_3
    iget-object v2, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 922
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 929
    :goto_4
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->updateDetailData()V

    .line 931
    invoke-static {v6}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v3}, Lcom/android/stocksettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 933
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const v2, 0x7f0b06d0

    invoke-static {v0, v2}, Lcom/android/stocksettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 934
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const v2, 0x7f0b06d1

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/stocksettings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 937
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 938
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->getAppRestrictBackground()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 913
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 925
    :cond_4
    iput-object v13, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 926
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 941
    :cond_5
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method private updateBody()V
    .locals 8

    .prologue
    const v7, 0x7f0b06cc

    const v6, 0x7f0b06c0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 779
    iput-boolean v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mBinding:Z

    .line 780
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 861
    :goto_0
    return-void

    .line 782
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 783
    iget-object v4, p0, Lcom/android/stocksettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v4

    .line 784
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    if-nez v5, :cond_1

    .line 786
    :goto_1
    if-nez v4, :cond_2

    .line 787
    const-string v0, "DataUsage"

    const-string v1, "no tab selected; hiding body"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 784
    goto :goto_1

    .line 791
    :cond_2
    iget-object v5, p0, Lcom/android/stocksettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 794
    iget-object v5, p0, Lcom/android/stocksettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 795
    :cond_3
    iput-object v4, p0, Lcom/android/stocksettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 799
    iget-object v5, p0, Lcom/android/stocksettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 802
    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    .line 804
    const-string v0, "mobile"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 805
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-static {v0, v7}, Lcom/android/stocksettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 806
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-static {v0, v6}, Lcom/android/stocksettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 807
    invoke-static {v3}, Lcom/android/stocksettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 849
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 854
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v4, p0, Lcom/android/stocksettings/DataUsageSummary;->mCurrentApp:Lcom/android/stocksettings/DataUsageSummary$AppItem;

    invoke-static {v3, v4}, Lcom/android/stocksettings/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/stocksettings/DataUsageSummary$AppItem;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stocksettings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 858
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 860
    iput-boolean v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mBinding:Z

    goto :goto_0

    :cond_5
    move v0, v2

    .line 799
    goto :goto_2

    .line 809
    :cond_6
    const-string v0, "SIM"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    .line 810
    :goto_4
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 812
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v3}, Lcom/android/stocksettings/DataUsageSummary;->getSubTag(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 813
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-static {v3, v7}, Lcom/android/stocksettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 815
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-static {v3, v6}, Lcom/android/stocksettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 817
    invoke-static {v0}, Lcom/android/stocksettings/DataUsageSummary;->getActiveSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 811
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 820
    :cond_8
    const-string v0, "3g"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 821
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v4, 0x7f0b06cd

    invoke-static {v0, v4}, Lcom/android/stocksettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 822
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v4, 0x7f0b06c2

    invoke-static {v0, v4}, Lcom/android/stocksettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 824
    invoke-static {v3}, Lcom/android/stocksettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_3

    .line 826
    :cond_9
    const-string v0, "4g"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 827
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v4, 0x7f0b06ce

    invoke-static {v0, v4}, Lcom/android/stocksettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 828
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v4, 0x7f0b06c1

    invoke-static {v0, v4}, Lcom/android/stocksettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 830
    invoke-static {v3}, Lcom/android/stocksettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_3

    .line 832
    :cond_a
    const-string v0, "wifi"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 834
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 835
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 836
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_3

    .line 838
    :cond_b
    const-string v0, "ethernet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 840
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 841
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 842
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_3

    .line 845
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tab: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateCycleList(Landroid/net/NetworkPolicy;)V
    .locals 14
    .parameter

    .prologue
    const-wide v9, 0x7fffffffffffffffL

    const-wide/high16 v4, -0x8000

    const/4 v11, 0x0

    .line 1109
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/stocksettings/DataUsageSummary$CycleItem;

    .line 1110
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mCycleAdapter:Lcom/android/stocksettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0}, Lcom/android/stocksettings/DataUsageSummary$CycleAdapter;->clear()V

    .line 1112
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1116
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mChartData:Lcom/android/stocksettings/net/ChartData;

    if-eqz v0, :cond_8

    .line 1117
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mChartData:Lcom/android/stocksettings/net/ChartData;

    iget-object v0, v0, Lcom/android/stocksettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v7

    .line 1118
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mChartData:Lcom/android/stocksettings/net/ChartData;

    iget-object v0, v0, Lcom/android/stocksettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v2

    .line 1121
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1122
    cmp-long v0, v7, v9

    if-nez v0, :cond_7

    move-wide v9, v12

    .line 1123
    :goto_1
    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    const-wide/16 v2, 0x1

    add-long v7, v12, v2

    .line 1126
    :goto_2
    if-eqz p1, :cond_5

    .line 1128
    invoke-static {v7, v8, p1}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    move v0, v11

    .line 1131
    :goto_3
    cmp-long v2, v4, v9

    if-lez v2, :cond_0

    .line 1132
    invoke-static {v4, v5, p1}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v2

    .line 1133
    const-string v0, "DataUsage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "generating cs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to ce="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " waiting for hs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    iget-object v12, p0, Lcom/android/stocksettings/DataUsageSummary;->mCycleAdapter:Lcom/android/stocksettings/DataUsageSummary$CycleAdapter;

    new-instance v0, Lcom/android/stocksettings/DataUsageSummary$CycleItem;

    invoke-direct/range {v0 .. v5}, Lcom/android/stocksettings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v12, v0}, Lcom/android/stocksettings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1137
    const/4 v0, 0x1

    move-wide v4, v2

    .line 1138
    goto :goto_3

    .line 1141
    :cond_0
    iget-object v2, p0, Lcom/android/stocksettings/DataUsageSummary;->mCycleAdapter:Lcom/android/stocksettings/DataUsageSummary$CycleAdapter;

    invoke-direct {p0, p1}, Lcom/android/stocksettings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/stocksettings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1144
    :goto_4
    if-nez v0, :cond_2

    move-wide v4, v7

    .line 1147
    :goto_5
    cmp-long v0, v4, v9

    if-lez v0, :cond_1

    .line 1148
    const-wide v2, 0x90321000L

    sub-long v2, v4, v2

    .line 1149
    iget-object v7, p0, Lcom/android/stocksettings/DataUsageSummary;->mCycleAdapter:Lcom/android/stocksettings/DataUsageSummary$CycleAdapter;

    new-instance v0, Lcom/android/stocksettings/DataUsageSummary$CycleItem;

    invoke-direct/range {v0 .. v5}, Lcom/android/stocksettings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v7, v0}, Lcom/android/stocksettings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    move-wide v4, v2

    .line 1151
    goto :goto_5

    .line 1153
    :cond_1
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mCycleAdapter:Lcom/android/stocksettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v11}, Lcom/android/stocksettings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1157
    :cond_2
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mCycleAdapter:Lcom/android/stocksettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0}, Lcom/android/stocksettings/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1158
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mCycleAdapter:Lcom/android/stocksettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v6}, Lcom/android/stocksettings/DataUsageSummary$CycleAdapter;->findNearestPosition(Lcom/android/stocksettings/DataUsageSummary$CycleItem;)I

    move-result v3

    .line 1159
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1163
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mCycleAdapter:Lcom/android/stocksettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v3}, Lcom/android/stocksettings/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/DataUsageSummary$CycleItem;

    .line 1164
    invoke-static {v0, v6}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1165
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1173
    :goto_6
    return-void

    .line 1168
    :cond_3
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->updateDetailData()V

    goto :goto_6

    .line 1171
    :cond_4
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->updateDetailData()V

    goto :goto_6

    :cond_5
    move v0, v11

    goto :goto_4

    :cond_6
    move-wide v7, v2

    goto/16 :goto_2

    :cond_7
    move-wide v9, v7

    goto/16 :goto_1

    :cond_8
    move-wide v2, v4

    move-wide v7, v9

    goto/16 :goto_0
.end method

.method private updateDetailData()V
    .locals 15

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mChart:Lcom/android/stocksettings/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v1

    .line 1292
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mChart:Lcom/android/stocksettings/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v3

    .line 1293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1295
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 1297
    const/4 v7, 0x0

    .line 1298
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mChartData:Lcom/android/stocksettings/net/ChartData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mChartData:Lcom/android/stocksettings/net/ChartData;

    iget-object v0, v0, Lcom/android/stocksettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_1

    .line 1300
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mChartData:Lcom/android/stocksettings/net/ChartData;

    iget-object v0, v0, Lcom/android/stocksettings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1301
    iget-wide v9, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v11, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v9, v11

    .line 1302
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mChartData:Lcom/android/stocksettings/net/ChartData;

    iget-object v0, v0, Lcom/android/stocksettings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    .line 1303
    iget-wide v11, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v13, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v11, v13

    .line 1305
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppPieChart:Lcom/android/stocksettings/widget/PieChartView;

    const/16 v7, 0xaf

    invoke-virtual {v0, v7}, Lcom/android/stocksettings/widget/PieChartView;->setOriginAngle(I)V

    .line 1307
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppPieChart:Lcom/android/stocksettings/widget/PieChartView;

    invoke-virtual {v0}, Lcom/android/stocksettings/widget/PieChartView;->removeAllSlices()V

    .line 1308
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppPieChart:Lcom/android/stocksettings/widget/PieChartView;

    const-string v7, "#d88d3a"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v11, v12, v7}, Lcom/android/stocksettings/widget/PieChartView;->addSlice(JI)V

    .line 1309
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppPieChart:Lcom/android/stocksettings/widget/PieChartView;

    const-string v7, "#666666"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v9, v10, v7}, Lcom/android/stocksettings/widget/PieChartView;->addSlice(JI)V

    .line 1311
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppPieChart:Lcom/android/stocksettings/widget/PieChartView;

    invoke-virtual {v0}, Lcom/android/stocksettings/widget/PieChartView;->generatePath()V

    .line 1313
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1314
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    invoke-static {v8, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1317
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mChartData:Lcom/android/stocksettings/net/ChartData;

    iget-object v0, v0, Lcom/android/stocksettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1319
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1331
    :goto_0
    if-eqz v7, :cond_3

    iget-wide v5, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v9, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v5, v9

    .line 1332
    :goto_1
    invoke-static {v8, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 1333
    invoke-static {v8, v1, v2, v3, v4}, Lcom/android/stocksettings/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v1

    .line 1336
    const-string v0, "mobile"

    iget-object v2, p0, Lcom/android/stocksettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3g"

    iget-object v2, p0, Lcom/android/stocksettings/DataUsageSummary;->mCurrentApp:Lcom/android/stocksettings/DataUsageSummary$AppItem;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "4g"

    iget-object v2, p0, Lcom/android/stocksettings/DataUsageSummary;->mCurrentApp:Lcom/android/stocksettings/DataUsageSummary$AppItem;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v2, "SIM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1338
    :cond_0
    const v0, 0x7f0b06ea

    .line 1343
    :goto_2
    iget-object v2, p0, Lcom/android/stocksettings/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {p0, v0, v3}, Lcom/android/stocksettings/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1346
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->ensureLayoutTransitions()V

    .line 1347
    return-void

    .line 1322
    :cond_1
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mChartData:Lcom/android/stocksettings/net/ChartData;

    if-eqz v0, :cond_2

    .line 1323
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mChartData:Lcom/android/stocksettings/net/ChartData;

    iget-object v0, v0, Lcom/android/stocksettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1327
    :cond_2
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/stocksettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v6, v1, v2, v3, v4}, Lcom/android/stocksettings/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v6

    iget-object v9, p0, Lcom/android/stocksettings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v5, v6, v9}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 1331
    :cond_3
    const-wide/16 v5, 0x0

    goto :goto_1

    .line 1340
    :cond_4
    const v0, 0x7f0b06e9

    goto :goto_2
.end method

.method private updatePolicy(Z)V
    .locals 8
    .parameter "refreshCycle"

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1065
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1066
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1071
    :goto_0
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mPolicyEditor:Lcom/android/stocksettings/net/NetworkPolicyEditor;

    iget-object v4, p0, Lcom/android/stocksettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v3, v4}, Lcom/android/stocksettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 1073
    .local v0, policy:Landroid/net/NetworkPolicy;
    const-string v3, "mobile"

    iget-object v4, p0, Lcom/android/stocksettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v4, "SIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1074
    :cond_0
    iput-boolean v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mBinding:Z

    .line 1075
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1076
    iput-boolean v2, p0, Lcom/android/stocksettings/DataUsageSummary;->mBinding:Z

    .line 1078
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1079
    const-wide/16 v3, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/stocksettings/DataUsageSummary;->setPolicyWarningBytes(J)V

    .line 1083
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/stocksettings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1084
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1085
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    if-eqz v0, :cond_5

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1086
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1087
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mChart:Lcom/android/stocksettings/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 1096
    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 1098
    invoke-direct {p0, v0}, Lcom/android/stocksettings/DataUsageSummary;->updateCycleList(Landroid/net/NetworkPolicy;)V

    .line 1100
    :cond_3
    return-void

    .line 1068
    .end local v0           #policy:Landroid/net/NetworkPolicy;
    :cond_4
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .restart local v0       #policy:Landroid/net/NetworkPolicy;
    :cond_5
    move v1, v2

    .line 1085
    goto :goto_1

    .line 1092
    :cond_6
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1093
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mChart:Lcom/android/stocksettings/widget/ChartDataUsageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/stocksettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_2
.end method

.method private updateTabs()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 694
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 695
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 697
    invoke-static {v3}, Lcom/android/stocksettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 698
    iput-boolean v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mShowWifi:Z

    .line 699
    iput-boolean v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mShowEthernet:Z

    .line 701
    :cond_0
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v0

    .line 702
    if-eqz v0, :cond_5

    invoke-static {v3}, Lcom/android/stocksettings/DataUsageSummary;->hasReadyMobile4gRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 703
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "3g"

    const v5, 0x7f0b06c9

    invoke-direct {p0, v4, v5}, Lcom/android/stocksettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 704
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "4g"

    const v5, 0x7f0b06c8

    invoke-direct {p0, v4, v5}, Lcom/android/stocksettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 716
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mShowWifi:Z

    if-eqz v0, :cond_2

    invoke-static {v3}, Lcom/android/stocksettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 717
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "wifi"

    const v5, 0x7f0b06c4

    invoke-direct {p0, v4, v5}, Lcom/android/stocksettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 719
    :cond_2
    iget-boolean v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 720
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "ethernet"

    const v4, 0x7f0b06c5

    invoke-direct {p0, v3, v4}, Lcom/android/stocksettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 723
    :cond_3
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 724
    :goto_1
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v3

    if-le v3, v1, :cond_8

    .line 725
    :goto_2
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v1, :cond_9

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 726
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 727
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 729
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->updateBody()V

    .line 733
    :goto_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 740
    :cond_4
    :goto_5
    return-void

    .line 705
    :cond_5
    invoke-static {v3}, Lcom/android/stocksettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v4

    .line 707
    if-le v4, v1, :cond_6

    move v0, v2

    .line 708
    :goto_6
    if-ge v0, v4, :cond_1

    .line 709
    iget-object v5, p0, Lcom/android/stocksettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    add-int/lit8 v6, v0, 0x1

    invoke-direct {p0, v6}, Lcom/android/stocksettings/DataUsageSummary;->getSubTag(I)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v0, 0x1

    invoke-direct {p0, v7}, Lcom/android/stocksettings/DataUsageSummary;->getSubTitle(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/stocksettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 708
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 712
    :cond_6
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "mobile"

    const v5, 0x7f0b06c6

    invoke-direct {p0, v4, v5}, Lcom/android/stocksettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 723
    goto :goto_1

    :cond_8
    move v1, v2

    .line 724
    goto :goto_2

    .line 725
    :cond_9
    const/16 v2, 0x8

    goto :goto_3

    .line 731
    :cond_a
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_4

    .line 734
    :cond_b
    if-eqz v0, :cond_4

    .line 736
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->updateBody()V

    goto :goto_5
.end method


# virtual methods
.method public hasEthernet(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    .line 2418
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    .line 2419
    .local v6, conn:Landroid/net/ConnectivityManager;
    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    .line 2422
    .local v10, hasEthernet:Z
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    .line 2424
    :try_start_0
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 2435
    .local v8, ethernetBytes:J
    :goto_0
    if-eqz v10, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2427
    .end local v8           #ethernetBytes:J
    :catch_0
    move-exception v7

    .line 2428
    .local v7, e:Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2431
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v8, 0x0

    .restart local v8       #ethernetBytes:J
    goto :goto_0

    .line 2435
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 308
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 309
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 311
    .local v0, context:Landroid/content/Context;
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 313
    const-string v3, "netstats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    .line 315
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 316
    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    .line 318
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "data_usage"

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    .line 320
    new-instance v3, Lcom/android/stocksettings/net/NetworkPolicyEditor;

    iget-object v4, p0, Lcom/android/stocksettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v3, v4}, Lcom/android/stocksettings/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mPolicyEditor:Lcom/android/stocksettings/net/NetworkPolicyEditor;

    .line 321
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mPolicyEditor:Lcom/android/stocksettings/net/NetworkPolicyEditor;

    invoke-virtual {v3}, Lcom/android/stocksettings/net/NetworkPolicyEditor;->read()V

    .line 324
    :try_start_0
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v3}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "show_wifi"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mShowWifi:Z

    .line 330
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "show_ethernet"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mShowEthernet:Z

    .line 333
    invoke-static {v0}, Lcom/android/stocksettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 334
    iput-boolean v6, p0, Lcom/android/stocksettings/DataUsageSummary;->mShowWifi:Z

    .line 335
    iput-boolean v6, p0, Lcom/android/stocksettings/DataUsageSummary;->mShowEthernet:Z

    .line 338
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/stocksettings/DataUsageSummary;->setHasOptionsMenu(Z)V

    .line 341
    new-instance v3, Lcom/android/stocksettings/DataUsageSummary$AirPlaneModeChangeIntentReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/stocksettings/DataUsageSummary$AirPlaneModeChangeIntentReceiver;-><init>(Lcom/android/stocksettings/DataUsageSummary;Lcom/android/stocksettings/DataUsageSummary$1;)V

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mAirPlaneModeReceiver:Lcom/android/stocksettings/DataUsageSummary$AirPlaneModeChangeIntentReceiver;

    .line 342
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 343
    .local v2, mFilter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stocksettings/DataUsageSummary;->mAirPlaneModeReceiver:Lcom/android/stocksettings/DataUsageSummary$AirPlaneModeChangeIntentReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 344
    return-void

    .line 325
    .end local v2           #mFilter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 326
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 497
    const/high16 v0, 0x7f10

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 498
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 350
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 351
    .local v0, context:Landroid/content/Context;
    const v3, 0x7f04002d

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 353
    .local v2, view:Landroid/view/View;
    new-instance v3, Lcom/android/stocksettings/net/UidDetailProvider;

    invoke-direct {v3, v0}, Lcom/android/stocksettings/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/stocksettings/net/UidDetailProvider;

    .line 355
    const v3, 0x1020012

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    .line 356
    const v3, 0x7f080078

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    .line 357
    const v3, 0x1020013

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabWidget;

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    .line 358
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    .line 362
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v3

    const/high16 v6, 0x200

    if-ne v3, v6, :cond_1

    move v1, v4

    .line 364
    .local v1, shouldInset:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 365
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1050029

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mInsetSide:I

    .line 372
    :goto_1
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v2, v3, v4}, Lcom/android/stocksettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 374
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->setup()V

    .line 375
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v6, p0, Lcom/android/stocksettings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v3, v6}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 377
    const v3, 0x7f04002b

    iget-object v6, p0, Lcom/android/stocksettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    .line 378
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 380
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    new-instance v6, Landroid/view/View;

    invoke-direct {v6, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v6, v8, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 381
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/stocksettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6, v8, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 382
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 384
    iget v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mInsetSide:I

    if-lez v3, :cond_0

    .line 386
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget v6, p0, Lcom/android/stocksettings/DataUsageSummary;->mInsetSide:I

    invoke-static {v3, v6}, Lcom/android/stocksettings/DataUsageSummary;->insetListViewDrawables(Landroid/widget/ListView;I)V

    .line 387
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    iget v6, p0, Lcom/android/stocksettings/DataUsageSummary;->mInsetSide:I

    iget v7, p0, Lcom/android/stocksettings/DataUsageSummary;->mInsetSide:I

    invoke-virtual {v3, v6, v5, v7, v5}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 392
    :cond_0
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f080075

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    .line 394
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f080076

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    .line 396
    new-instance v3, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    .line 397
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/stocksettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-static {p1, v3, v6}, Lcom/android/stocksettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 398
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/stocksettings/DataUsageSummary;->mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 399
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/stocksettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 401
    new-instance v3, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    .line 402
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 403
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 404
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/stocksettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-static {p1, v3, v6}, Lcom/android/stocksettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 405
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 406
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 407
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/stocksettings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/stocksettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 412
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f08006c

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    .line 413
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v6, 0x7f08006d

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    .line 414
    new-instance v3, Lcom/android/stocksettings/DataUsageSummary$CycleAdapter;

    invoke-direct {v3, v0}, Lcom/android/stocksettings/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mCycleAdapter:Lcom/android/stocksettings/DataUsageSummary$CycleAdapter;

    .line 415
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/stocksettings/DataUsageSummary;->mCycleAdapter:Lcom/android/stocksettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 416
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/stocksettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 418
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f080063

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/stocksettings/widget/ChartDataUsageView;

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mChart:Lcom/android/stocksettings/widget/ChartDataUsageView;

    .line 419
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mChart:Lcom/android/stocksettings/widget/ChartDataUsageView;

    iget-object v6, p0, Lcom/android/stocksettings/DataUsageSummary;->mChartListener:Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v3, v6}, Lcom/android/stocksettings/widget/ChartDataUsageView;->setListener(Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;)V

    .line 420
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mChart:Lcom/android/stocksettings/widget/ChartDataUsageView;

    invoke-virtual {v3, v8}, Lcom/android/stocksettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 424
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f08006e

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    .line 425
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f08000f

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    .line 426
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f08006f

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    .line 427
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f080072

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/stocksettings/widget/PieChartView;

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppPieChart:Lcom/android/stocksettings/widget/PieChartView;

    .line 428
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f080070

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    .line 429
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f080071

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    .line 430
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f080074

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    .line 432
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f080073

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    .line 433
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    new-instance v3, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    .line 436
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 437
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 438
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-static {p1, v3, v5}, Lcom/android/stocksettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    .line 439
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 440
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 441
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/stocksettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 445
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v4, 0x7f080077

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    .line 446
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    .line 448
    new-instance v3, Lcom/android/stocksettings/DataUsageSummary$DataUsageAdapter;

    iget-object v4, p0, Lcom/android/stocksettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/stocksettings/net/UidDetailProvider;

    iget v5, p0, Lcom/android/stocksettings/DataUsageSummary;->mInsetSide:I

    invoke-direct {v3, v4, v5}, Lcom/android/stocksettings/DataUsageSummary$DataUsageAdapter;-><init>(Lcom/android/stocksettings/net/UidDetailProvider;I)V

    iput-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mAdapter:Lcom/android/stocksettings/DataUsageSummary$DataUsageAdapter;

    .line 449
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/stocksettings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 450
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/stocksettings/DataUsageSummary;->mAdapter:Lcom/android/stocksettings/DataUsageSummary$DataUsageAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 452
    return-object v2

    .end local v1           #shouldInset:Z
    :cond_1
    move v1, v5

    .line 362
    goto/16 :goto_0

    .line 368
    .restart local v1       #shouldInset:Z
    :cond_2
    iput v5, p0, Lcom/android/stocksettings/DataUsageSummary;->mInsetSide:I

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 642
    iput-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 643
    iput-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 645
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/stocksettings/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/stocksettings/net/UidDetailProvider;->clearCache()V

    .line 646
    iput-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/stocksettings/net/UidDetailProvider;

    .line 648
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 650
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "appDetails"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 655
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mAirPlaneModeReceiver:Lcom/android/stocksettings/DataUsageSummary$AirPlaneModeChangeIntentReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 656
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 658
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 659
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 561
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v7, v6

    .line 624
    :goto_0
    return v7

    .line 563
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v7

    .line 564
    :goto_1
    if-eqz v0, :cond_1

    .line 565
    invoke-static {p0}, Lcom/android/stocksettings/DataUsageSummary$ConfirmDataRoamingFragment;->show(Lcom/android/stocksettings/DataUsageSummary;)V

    goto :goto_0

    :cond_0
    move v0, v6

    .line 563
    goto :goto_1

    .line 568
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/stocksettings/DataUsageSummary;->setDataRoaming(Z)V

    goto :goto_0

    .line 573
    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v7

    .line 574
    :goto_2
    if-eqz v0, :cond_4

    .line 576
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->hasLimitedNetworks()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 577
    invoke-static {p0}, Lcom/android/stocksettings/DataUsageSummary$ConfirmRestrictFragment;->show(Lcom/android/stocksettings/DataUsageSummary;)V

    goto :goto_0

    :cond_2
    move v0, v6

    .line 573
    goto :goto_2

    .line 579
    :cond_3
    invoke-static {p0}, Lcom/android/stocksettings/DataUsageSummary$DeniedRestrictFragment;->show(Lcom/android/stocksettings/DataUsageSummary;)V

    .line 580
    invoke-virtual {p0, v6}, Lcom/android/stocksettings/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_0

    .line 584
    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/stocksettings/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_0

    .line 589
    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5

    move v6, v7

    .line 590
    :cond_5
    invoke-direct {p0, v6}, Lcom/android/stocksettings/DataUsageSummary;->setMobilePolicySplit(Z)V

    .line 591
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 592
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .line 596
    :pswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_6

    move v6, v7

    :cond_6
    iput-boolean v6, p0, Lcom/android/stocksettings/DataUsageSummary;->mShowWifi:Z

    .line 597
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_wifi"

    iget-boolean v2, p0, Lcom/android/stocksettings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 598
    iget-boolean v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 599
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .line 603
    :pswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_7

    move v6, v7

    :cond_7
    iput-boolean v6, p0, Lcom/android/stocksettings/DataUsageSummary;->mShowEthernet:Z

    .line 604
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_ethernet"

    iget-boolean v2, p0, Lcom/android/stocksettings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 605
    iget-boolean v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 606
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->updateTabs()V

    goto/16 :goto_0

    .line 610
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 611
    const-class v1, Lcom/android/stocksettings/net/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b06eb

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 616
    :pswitch_6
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 617
    const-string v0, "SyncState"

    const-string v1, "ignoring monkey\'s attempt to flip global sync state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 619
    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_9

    move v6, v7

    :cond_9
    invoke-static {p0, v6}, Lcom/android/stocksettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->show(Lcom/android/stocksettings/DataUsageSummary;Z)V

    goto/16 :goto_0

    .line 561
    :pswitch_data_0
    .packed-switch 0x7f080244
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 13
    .parameter "menu"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 502
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 503
    .local v1, context:Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    .line 504
    .local v0, appDetailMode:Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v11

    if-nez v11, :cond_2

    move v4, v9

    .line 506
    .local v4, isOwner:Z
    :goto_0
    const v11, 0x7f080244

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    iput-object v11, p0, Lcom/android/stocksettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    .line 507
    const-string v11, "mobile"

    iget-object v12, p0, Lcom/android/stocksettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/android/stocksettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v12, "SIM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 508
    :cond_0
    iget-object v12, p0, Lcom/android/stocksettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/stocksettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_3

    if-nez v0, :cond_3

    move v11, v9

    :goto_1
    invoke-interface {v12, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 509
    iget-object v11, p0, Lcom/android/stocksettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->getDataRoaming()Z

    move-result v12

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 514
    :goto_2
    const v11, 0x7f080245

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    iput-object v11, p0, Lcom/android/stocksettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    .line 515
    iget-object v12, p0, Lcom/android/stocksettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/stocksettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_5

    if-eqz v4, :cond_5

    if-nez v0, :cond_5

    move v11, v9

    :goto_3
    invoke-interface {v12, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 517
    iget-object v11, p0, Lcom/android/stocksettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    iget-object v12, p0, Lcom/android/stocksettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v12}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v12

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 519
    const v11, 0x7f080247

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    iput-object v11, p0, Lcom/android/stocksettings/DataUsageSummary;->mMenuAutoSync:Landroid/view/MenuItem;

    .line 520
    iget-object v11, p0, Lcom/android/stocksettings/DataUsageSummary;->mMenuAutoSync:Landroid/view/MenuItem;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v12

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 521
    iget-object v12, p0, Lcom/android/stocksettings/DataUsageSummary;->mMenuAutoSync:Landroid/view/MenuItem;

    if-nez v0, :cond_6

    move v11, v9

    :goto_4
    invoke-interface {v12, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 523
    const v11, 0x7f080246

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 524
    .local v8, split4g:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/stocksettings/DataUsageSummary;->hasReadyMobile4gRadio(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_7

    if-eqz v4, :cond_7

    if-nez v0, :cond_7

    move v11, v9

    :goto_5
    invoke-interface {v8, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 525
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v11

    invoke-interface {v8, v11}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 527
    const v11, 0x7f080248

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 528
    .local v7, showWifi:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/stocksettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-static {v1}, Lcom/android/stocksettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 529
    if-nez v0, :cond_8

    move v11, v9

    :goto_6
    invoke-interface {v7, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 530
    iget-boolean v11, p0, Lcom/android/stocksettings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v7, v11}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 535
    :goto_7
    const v11, 0x7f080249

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 536
    .local v6, showEthernet:Landroid/view/MenuItem;
    invoke-virtual {p0, v1}, Lcom/android/stocksettings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-static {v1}, Lcom/android/stocksettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 537
    if-nez v0, :cond_a

    move v11, v9

    :goto_8
    invoke-interface {v6, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 538
    iget-boolean v11, p0, Lcom/android/stocksettings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v6, v11}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 543
    :goto_9
    const v11, 0x7f08024a

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 544
    .local v5, metered:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/stocksettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-static {v1}, Lcom/android/stocksettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 545
    :cond_1
    if-nez v0, :cond_c

    :goto_a
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 550
    :goto_b
    const v9, 0x7f08024b

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 552
    .local v2, help:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0b0775

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, helpUrl:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 553
    invoke-static {v1, v2, v3}, Lcom/android/stocksettings/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    .line 557
    :goto_c
    return-void

    .end local v2           #help:Landroid/view/MenuItem;
    .end local v3           #helpUrl:Ljava/lang/String;
    .end local v4           #isOwner:Z
    .end local v5           #metered:Landroid/view/MenuItem;
    .end local v6           #showEthernet:Landroid/view/MenuItem;
    .end local v7           #showWifi:Landroid/view/MenuItem;
    .end local v8           #split4g:Landroid/view/MenuItem;
    :cond_2
    move v4, v10

    .line 504
    goto/16 :goto_0

    .restart local v4       #isOwner:Z
    :cond_3
    move v11, v10

    .line 508
    goto/16 :goto_1

    .line 511
    :cond_4
    iget-object v11, p0, Lcom/android/stocksettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-interface {v11, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_5
    move v11, v10

    .line 515
    goto/16 :goto_3

    :cond_6
    move v11, v10

    .line 521
    goto/16 :goto_4

    .restart local v8       #split4g:Landroid/view/MenuItem;
    :cond_7
    move v11, v10

    .line 524
    goto/16 :goto_5

    .restart local v7       #showWifi:Landroid/view/MenuItem;
    :cond_8
    move v11, v10

    .line 529
    goto :goto_6

    .line 532
    :cond_9
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7

    .restart local v6       #showEthernet:Landroid/view/MenuItem;
    :cond_a
    move v11, v10

    .line 537
    goto :goto_8

    .line 540
    :cond_b
    invoke-interface {v6, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_9

    .restart local v5       #metered:Landroid/view/MenuItem;
    :cond_c
    move v9, v10

    .line 545
    goto :goto_a

    .line 547
    :cond_d
    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_b

    .line 555
    .restart local v2       #help:Landroid/view/MenuItem;
    .restart local v3       #helpUrl:Ljava/lang/String;
    :cond_e
    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_c
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 457
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 460
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 461
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/stocksettings/DataUsageSummary;->computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 465
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->updateTabs()V

    .line 468
    new-instance v1, Lcom/android/stocksettings/DataUsageSummary$2;

    invoke-direct {v1, p0}, Lcom/android/stocksettings/DataUsageSummary$2;-><init>(Lcom/android/stocksettings/DataUsageSummary;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v4, v5}, Lcom/android/stocksettings/DataUsageSummary$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 489
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/stocksettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mMobileRadioStateOld:Z

    .line 490
    invoke-direct {p0}, Lcom/android/stocksettings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/stocksettings/DataUsageSummary;->hasReadyMobile4gRadio(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mMobile4gRadioStateOld:Z

    .line 491
    iget-boolean v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mShowWifi:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/stocksettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mWifiRadioStateOld:Z

    .line 492
    iget-boolean v1, p0, Lcom/android/stocksettings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    iput-boolean v2, p0, Lcom/android/stocksettings/DataUsageSummary;->mEthernetStateOld:Z

    .line 493
    return-void

    :cond_0
    move v1, v3

    .line 490
    goto :goto_0

    :cond_1
    move v1, v3

    .line 491
    goto :goto_1

    :cond_2
    move v2, v3

    .line 492
    goto :goto_2
.end method

.method public setRestrictBackground(Z)V
    .locals 1
    .parameter "restrictBackground"

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 1043
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1044
    return-void
.end method
