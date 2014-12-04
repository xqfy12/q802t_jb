.class public Lcom/android/stocksettings/applications/InstalledAppDetails;
.super Landroid/app/Fragment;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/stocksettings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stocksettings/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/stocksettings/applications/InstalledAppDetails$MyAlertDialogFragment;,
        Lcom/android/stocksettings/applications/InstalledAppDetails$PremiumSmsSelectionListener;,
        Lcom/android/stocksettings/applications/InstalledAppDetails$PackageMoveObserver;,
        Lcom/android/stocksettings/applications/InstalledAppDetails$ClearCacheObserver;,
        Lcom/android/stocksettings/applications/InstalledAppDetails$ClearUserDataObserver;
    }
.end annotation


# instance fields
.field private mActivitiesButton:Landroid/widget/Button;

.field private mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

.field private mAppSize:Landroid/widget/TextView;

.field private mAppVersion:Landroid/widget/TextView;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAskCompatibilityCB:Landroid/widget/CheckBox;

.field private mCacheSize:Landroid/widget/TextView;

.field private mCanBeOnSdCardChecker:Lcom/android/stocksettings/applications/CanBeOnSdCardChecker;

.field private mCanClearData:Z

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/stocksettings/applications/InstalledAppDetails$ClearCacheObserver;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataObserver:Lcom/android/stocksettings/applications/InstalledAppDetails$ClearUserDataObserver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataSize:Landroid/widget/TextView;

.field private mDisableAfterUninstall:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableCompatibilityCB:Landroid/widget/CheckBox;

.field private mExternalCodeSize:Landroid/widget/TextView;

.field private mExternalDataSize:Landroid/widget/TextView;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private mInitialized:Z

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private mMoreControlButtons:Landroid/view/View;

.field private mMoveAppButton:Landroid/widget/Button;

.field private mMoveInProgress:Z

.field private mNotificationSwitch:Landroid/widget/CompoundButton;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageMoveObserver:Lcom/android/stocksettings/applications/InstalledAppDetails$PackageMoveObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRootView:Landroid/view/View;

.field private mScreenCompatSection:Landroid/view/View;

.field private mSession:Lcom/android/stocksettings/applications/ApplicationsState$Session;

.field private mShowUninstalled:Z

.field private mSmsManager:Lcom/android/internal/telephony/ISms;

.field private mSpecialDisableButton:Landroid/widget/Button;

.field private mState:Lcom/android/stocksettings/applications/ApplicationsState;

.field private mTotalSize:Landroid/widget/TextView;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    .line 98
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 123
    iput-boolean v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 124
    iput-boolean v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 150
    iput-boolean v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 151
    iput-wide v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 152
    iput-wide v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 153
    iput-wide v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 154
    iput-wide v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 155
    iput-wide v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 156
    iput-wide v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 192
    new-instance v0, Lcom/android/stocksettings/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/applications/InstalledAppDetails$1;-><init>(Lcom/android/stocksettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    .line 1248
    new-instance v0, Lcom/android/stocksettings/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/applications/InstalledAppDetails$2;-><init>(Lcom/android/stocksettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 1287
    return-void
.end method

.method static synthetic access$000(Lcom/android/stocksettings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/stocksettings/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/stocksettings/applications/InstalledAppDetails;)Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/stocksettings/applications/InstalledAppDetails;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getMoveErrMsg(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/stocksettings/applications/InstalledAppDetails;)Landroid/widget/CompoundButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/stocksettings/applications/InstalledAppDetails;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/stocksettings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/stocksettings/applications/InstalledAppDetails;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/stocksettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/stocksettings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/stocksettings/applications/InstalledAppDetails;)Lcom/android/stocksettings/applications/ApplicationsState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mState:Lcom/android/stocksettings/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/stocksettings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/stocksettings/applications/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/stocksettings/applications/InstalledAppDetails;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/stocksettings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/stocksettings/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/android/stocksettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/stocksettings/applications/InstalledAppDetails;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/stocksettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/stocksettings/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/stocksettings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/stocksettings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method private checkForceStop()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1269
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1271
    invoke-direct {p0, v5}, Lcom/android/stocksettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    .line 1285
    :goto_0
    return-void

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 1275
    invoke-direct {p0, v6}, Lcom/android/stocksettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    .line 1277
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1279
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1280
    const-string v0, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1281
    const-string v0, "android.intent.extra.user_handle"

    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1282
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1237
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1239
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1240
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mState:Lcom/android/stocksettings/applications/ApplicationsState;

    invoke-virtual {v0, p1}, Lcom/android/stocksettings/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;)V

    .line 1241
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mState:Lcom/android/stocksettings/applications/ApplicationsState;

    invoke-virtual {v0, p1}, Lcom/android/stocksettings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 1242
    if-eqz v0, :cond_0

    .line 1243
    iput-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    .line 1245
    :cond_0
    invoke-direct {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 1246
    return-void
.end method

.method private getMoveErrMsg(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "errCode"

    .prologue
    .line 274
    packed-switch p1, :pswitch_data_0

    .line 288
    const-string v0, ""

    :goto_0
    return-object v0

    .line 276
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0496

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 278
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0497

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 280
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0498

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 282
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0499

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 284
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b049a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 286
    :pswitch_5
    const-string v0, ""

    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .parameter "packageName"

    .prologue
    .line 1321
    :try_start_0
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    if-eqz v0, :cond_0

    .line 1322
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1327
    :goto_0
    return v0

    .line 1324
    :catch_0
    move-exception v0

    .line 1327
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 249
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleDisableable(Landroid/widget/Button;)Z
    .locals 8
    .parameter "button"

    .prologue
    .line 334
    const/4 v0, 0x0

    .line 339
    .local v0, disableable:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v6, "android"

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 341
    .local v4, sys:Landroid/content/pm/PackageInfo;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    iget-object v5, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    iget-object v5, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 345
    .local v2, homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->isThisASystemPackage()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 347
    :cond_1
    const v5, 0x7f0b0457

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .end local v2           #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #sys:Landroid/content/pm/PackageInfo;
    :goto_0
    const-string v5, "com.ume.browser"

    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 361
    const/4 v0, 0x0

    .line 363
    :cond_2
    return v0

    .line 348
    .restart local v2       #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #sys:Landroid/content/pm/PackageInfo;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_4

    .line 350
    const v5, 0x7f0b0457

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(I)V

    .line 351
    const/4 v0, 0x1

    goto :goto_0

    .line 353
    :cond_4
    const v5, 0x7f0b0458

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 354
    const/4 v0, 0x1

    goto :goto_0

    .line 356
    .end local v2           #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #sys:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 357
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "InstalledAppDetails"

    const-string v6, "Unable to get package info"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initDataButtons()V
    .locals 4

    .prologue
    const v3, 0x7f0b0459

    const/4 v2, 0x0

    .line 256
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 261
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 262
    iput-boolean v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 271
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f0b046b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 269
    :goto_1
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private initMoveButton()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 292
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 293
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 321
    :goto_0
    return-void

    .line 296
    :cond_0
    const/4 v0, 0x0

    .line 297
    .local v0, dataOnly:Z
    iget-object v4, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_1

    move v0, v2

    .line 298
    :goto_1
    const/4 v1, 0x1

    .line 299
    .local v1, moveDisable:Z
    if-eqz v0, :cond_2

    .line 300
    iget-object v4, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f0b0491

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 315
    :goto_2
    if-eqz v1, :cond_6

    .line 316
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .end local v1           #moveDisable:Z
    :cond_1
    move v0, v3

    .line 297
    goto :goto_1

    .line 301
    .restart local v1       #moveDisable:Z
    :cond_2
    iget-object v4, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 302
    iget-object v4, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f0b0492

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 304
    const/4 v1, 0x0

    goto :goto_2

    .line 307
    :cond_3
    const-string v4, "persist.sys.isExternalSdFirst"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 308
    iget-object v4, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f0b0493

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 312
    :goto_3
    iget-object v4, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/stocksettings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v4}, Lcom/android/stocksettings/applications/CanBeOnSdCardChecker;->init()V

    .line 313
    iget-object v4, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/stocksettings/applications/CanBeOnSdCardChecker;

    iget-object v5, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Lcom/android/stocksettings/applications/CanBeOnSdCardChecker;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_5

    move v1, v2

    :goto_4
    goto :goto_2

    .line 310
    :cond_4
    iget-object v4, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f0b0494

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_3

    :cond_5
    move v1, v3

    .line 313
    goto :goto_4

    .line 318
    :cond_6
    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initNotificationButton()V
    .locals 4

    .prologue
    .line 405
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 407
    .local v1, nm:Landroid/app/INotificationManager;
    const/4 v0, 0x1

    .line 409
    .local v0, enabled:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v2, v3}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 414
    :goto_0
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 415
    invoke-direct {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->isThisASystemPackage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 421
    :goto_1
    return-void

    .line 418
    :cond_0
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 419
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 411
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private initUninstallButtons()V
    .locals 6

    .prologue
    const v5, 0x7f0b0454

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 367
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 368
    const/4 v0, 0x1

    .line 369
    .local v0, enabled:Z
    iget-boolean v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v2, :cond_5

    .line 370
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v5, 0x7f0b045a

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    .line 371
    const/4 v1, 0x0

    .line 372
    .local v1, specialDisable:Z
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 373
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/android/stocksettings/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v1

    .line 374
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    :cond_0
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    if-eqz v1, :cond_4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 394
    .end local v1           #specialDisable:Z
    :goto_2
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 395
    const/4 v0, 0x0

    .line 397
    :cond_1
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 398
    if-eqz v0, :cond_2

    .line 400
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    :cond_2
    return-void

    .end local v0           #enabled:Z
    :cond_3
    move v2, v3

    .line 367
    goto :goto_0

    .restart local v0       #enabled:Z
    .restart local v1       #specialDisable:Z
    :cond_4
    move v3, v4

    .line 376
    goto :goto_1

    .line 378
    .end local v1           #specialDisable:Z
    :cond_5
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    .line 380
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/android/stocksettings/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v0

    goto :goto_2

    .line 381
    :cond_6
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x80

    and-int/2addr v2, v3

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_7

    .line 386
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    .line 387
    const/4 v0, 0x0

    goto :goto_2

    .line 389
    :cond_7
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_2
.end method

.method private initiateClearUserData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1034
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1036
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1037
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing user data for package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/stocksettings/applications/InstalledAppDetails$ClearUserDataObserver;

    if-nez v0, :cond_0

    .line 1039
    new-instance v0, Lcom/android/stocksettings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/applications/InstalledAppDetails$ClearUserDataObserver;-><init>(Lcom/android/stocksettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/stocksettings/applications/InstalledAppDetails$ClearUserDataObserver;

    .line 1041
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1043
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/stocksettings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v0

    .line 1044
    if-nez v0, :cond_1

    .line 1046
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldnt clear application user data for package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const/4 v0, 0x4

    invoke-direct {p0, v0, v4}, Lcom/android/stocksettings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1051
    :goto_0
    return-void

    .line 1049
    :cond_1
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f0b0479

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private isThisASystemPackage()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 325
    :try_start_0
    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v4, "android"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 326
    .local v1, sys:Landroid/content/pm/PackageInfo;
    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 329
    .end local v1           #sys:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 988
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 989
    iget-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 990
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v3, 0x7f0b0459

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 991
    if-ne v0, v4, :cond_0

    .line 992
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleared user data for package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mState:Lcom/android/stocksettings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 997
    :goto_0
    invoke-direct {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 998
    return-void

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private processMoveMsg(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 1015
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1016
    iget-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1018
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 1019
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1020
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moved resources for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mState:Lcom/android/stocksettings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1026
    :goto_0
    invoke-direct {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->refreshUi()Z

    .line 1027
    return-void

    .line 1024
    :cond_0
    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0
.end method

.method private refreshButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1001
    iget-boolean v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-nez v0, :cond_0

    .line 1002
    invoke-direct {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->initUninstallButtons()V

    .line 1003
    invoke-direct {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->initDataButtons()V

    .line 1004
    invoke-direct {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->initMoveButton()V

    .line 1005
    invoke-direct {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->initNotificationButton()V

    .line 1012
    :goto_0
    return-void

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v1, 0x7f0b0495

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1008
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1009
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1010
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshSizeInfo()V
    .locals 10

    .prologue
    .line 921
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 923
    :cond_0
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mLastTotalSize:J

    iput-wide v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mLastCacheSize:J

    iput-wide v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mLastDataSize:J

    iput-wide v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 924
    iget-boolean v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mHaveSizes:Z

    if-nez v6, :cond_1

    .line 925
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 926
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 927
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 928
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 930
    :cond_1
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 931
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 981
    :goto_0
    return-void

    .line 934
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 935
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v6, Lcom/android/stocksettings/applications/ApplicationsState$SizeInfo;->codeSize:J

    .line 936
    .local v2, codeSize:J
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v6, Lcom/android/stocksettings/applications/ApplicationsState$SizeInfo;->dataSize:J

    .line 937
    .local v4, dataSize:J
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 938
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/stocksettings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    add-long/2addr v2, v6

    .line 939
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/stocksettings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    add-long/2addr v4, v6

    .line 950
    :cond_3
    :goto_1
    iget-wide v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mLastCodeSize:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_4

    .line 951
    iput-wide v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 952
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 954
    :cond_4
    iget-wide v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mLastDataSize:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_5

    .line 955
    iput-wide v4, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 956
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 958
    :cond_5
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/stocksettings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    iget-object v8, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/stocksettings/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    add-long v0, v6, v8

    .line 959
    .local v0, cacheSize:J
    iget-wide v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mLastCacheSize:J

    cmp-long v6, v6, v0

    if-eqz v6, :cond_6

    .line 960
    iput-wide v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 961
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 963
    :cond_6
    iget-wide v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mLastTotalSize:J

    iget-object v8, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_7

    .line 964
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 965
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-wide v7, v7, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v7, v8}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 968
    :cond_7
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/stocksettings/applications/ApplicationsState$SizeInfo;->dataSize:J

    iget-object v8, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/stocksettings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_8

    iget-boolean v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mCanClearData:Z

    if-nez v6, :cond_b

    .line 969
    :cond_8
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 974
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_c

    .line 975
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 941
    .end local v0           #cacheSize:J
    :cond_9
    iget-wide v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    iget-object v8, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/stocksettings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a

    .line 942
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/stocksettings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    iput-wide v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 943
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-wide v7, v7, Lcom/android/stocksettings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    invoke-direct {p0, v7, v8}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 945
    :cond_a
    iget-wide v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    iget-object v8, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/stocksettings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    .line 946
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/stocksettings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    iput-wide v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 947
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-wide v7, v7, Lcom/android/stocksettings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    invoke-direct {p0, v7, v8}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 971
    .restart local v0       #cacheSize:J
    :cond_b
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 972
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 977
    :cond_c
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 978
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private refreshUi()Z
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/16 v12, 0x8

    const/4 v11, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 663
    iget-boolean v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-eqz v0, :cond_1

    .line 866
    :cond_0
    :goto_0
    return v4

    .line 666
    :cond_1
    invoke-direct {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    move-result-object v6

    .line 668
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    if-nez v0, :cond_2

    move v4, v3

    .line 669
    goto :goto_0

    .line 672
    :cond_2
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_3

    move v4, v3

    .line 673
    goto :goto_0

    .line 677
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 680
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 681
    iget-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, v5, v6}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v6, v1}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v2, v0

    .line 690
    :goto_1
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v7

    .line 693
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f0800b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 694
    iget-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v8, 0x7f0800b7

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 695
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    move v5, v4

    .line 696
    :goto_2
    if-nez v5, :cond_7

    if-nez v7, :cond_7

    .line 697
    invoke-direct {p0, v0, v1}, Lcom/android/stocksettings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 736
    :goto_3
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 738
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    .line 749
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 753
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f0800bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 754
    new-instance v5, Landroid/widget/AppSecurityPermissions;

    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v5, v1, v6}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 755
    invoke-direct {p0, v6}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v7

    .line 759
    invoke-virtual {v5}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v1

    if-gtz v1, :cond_5

    if-eqz v7, :cond_10

    .line 761
    :cond_5
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 766
    :goto_4
    const v1, 0x7f0800bd

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 768
    const v2, 0x7f0800be

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 770
    if-eqz v7, :cond_11

    .line 772
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 773
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 774
    const v1, 0x7f0800bf

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 776
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v8, 0x7f07005b

    const v9, 0x1090008

    invoke-static {v2, v8, v9}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 779
    const v8, 0x1090009

    invoke-virtual {v2, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 780
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 782
    add-int/lit8 v2, v7, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 783
    new-instance v2, Lcom/android/stocksettings/applications/InstalledAppDetails$PremiumSmsSelectionListener;

    iget-object v7, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-direct {v2, v6, v7}, Lcom/android/stocksettings/applications/InstalledAppDetails$PremiumSmsSelectionListener;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/ISms;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 791
    :goto_5
    invoke-virtual {v5}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v1

    if-lez v1, :cond_14

    .line 793
    const v1, 0x7f0800c1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 795
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 796
    invoke-virtual {v5}, Landroid/widget/AppSecurityPermissions;->getPermissionsViewWithRevokeButtons()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 799
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 800
    if-eqz v1, :cond_14

    array-length v0, v1

    if-le v0, v4, :cond_14

    .line 801
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v3

    .line 802
    :goto_6
    array-length v2, v1

    if-ge v0, v2, :cond_13

    .line 803
    aget-object v2, v1, v0

    .line 804
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 802
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 687
    :catch_0
    move-exception v0

    .line 688
    const-string v1, "InstalledAppDetails"

    const-string v2, "mUsbManager.hasDefaults"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    goto/16 :goto_1

    :cond_6
    move v5, v3

    .line 695
    goto/16 :goto_2

    .line 699
    :cond_7
    if-eqz v7, :cond_c

    if-eqz v5, :cond_c

    move v2, v4

    .line 701
    :goto_8
    if-eqz v7, :cond_d

    .line 702
    const v8, 0x7f0b0447

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 707
    :goto_9
    const/4 v0, 0x0

    .line 708
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d000b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 710
    if-eqz v5, :cond_9

    .line 711
    const v5, 0x7f0b045b

    invoke-virtual {p0, v5}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 712
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 713
    if-eqz v2, :cond_8

    .line 714
    new-instance v10, Landroid/text/style/BulletSpan;

    invoke-direct {v10, v8}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v9, v10, v3, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 716
    :cond_8
    if-nez v0, :cond_e

    new-array v0, v11, [Ljava/lang/CharSequence;

    aput-object v9, v0, v3

    const-string v5, "\n"

    aput-object v5, v0, v4

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 719
    :cond_9
    :goto_a
    if-eqz v7, :cond_b

    .line 720
    const v5, 0x7f0b045c

    invoke-virtual {p0, v5}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 722
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 723
    if-eqz v2, :cond_a

    .line 724
    new-instance v2, Landroid/text/style/BulletSpan;

    invoke-direct {v2, v8}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v7, v2, v3, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 727
    :cond_a
    if-nez v0, :cond_f

    new-array v0, v11, [Ljava/lang/CharSequence;

    aput-object v7, v0, v3

    const-string v2, "\n"

    aput-object v2, v0, v4

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 730
    :cond_b
    :goto_b
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 732
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_c
    move v2, v3

    .line 699
    goto :goto_8

    .line 704
    :cond_d
    const v8, 0x7f0b0446

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_9

    .line 716
    :cond_e
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/CharSequence;

    aput-object v0, v5, v3

    const-string v0, "\n"

    aput-object v0, v5, v4

    aput-object v9, v5, v11

    const-string v0, "\n"

    aput-object v0, v5, v13

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a

    .line 727
    :cond_f
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/CharSequence;

    aput-object v0, v2, v3

    const-string v0, "\n"

    aput-object v0, v2, v4

    aput-object v7, v2, v11

    const-string v0, "\n"

    aput-object v0, v2, v13

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_b

    .line 763
    :cond_10
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 787
    :cond_11
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 788
    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 808
    :cond_12
    :try_start_1
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 809
    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_7

    .line 810
    :catch_1
    move-exception v2

    goto/16 :goto_7

    .line 813
    :cond_13
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 814
    if-lez v6, :cond_14

    .line 815
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 817
    if-ne v6, v4, :cond_16

    .line 818
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 831
    :goto_c
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v2, 0x7f0800c0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 833
    const v2, 0x7f0b0486

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object v1, v5, v4

    invoke-virtual {v7, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    :cond_14
    invoke-direct {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 840
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 841
    invoke-direct {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->refreshButtons()V

    .line 842
    invoke-direct {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 844
    iget-boolean v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mInitialized:Z

    if-nez v0, :cond_1a

    .line 846
    iput-boolean v4, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mInitialized:Z

    .line 847
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x80

    and-int/2addr v0, v1

    if-nez v0, :cond_15

    move v3, v4

    :cond_15
    iput-boolean v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mShowUninstalled:Z

    goto/16 :goto_0

    .line 819
    :cond_16
    if-ne v6, v11, :cond_17

    .line 820
    const v0, 0x7f0b0487

    new-array v1, v11, [Ljava/lang/Object;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_c

    .line 823
    :cond_17
    add-int/lit8 v0, v6, -0x2

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 824
    add-int/lit8 v0, v6, -0x3

    move-object v2, v1

    move v1, v0

    :goto_d
    if-ltz v1, :cond_19

    .line 825
    if-nez v1, :cond_18

    const v0, 0x7f0b0489

    :goto_e
    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v3

    aput-object v2, v8, v4

    invoke-virtual {v7, v0, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 824
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_d

    .line 825
    :cond_18
    const v0, 0x7f0b048a

    goto :goto_e

    .line 828
    :cond_19
    const v0, 0x7f0b0488

    new-array v1, v11, [Ljava/lang/Object;

    aput-object v2, v1, v3

    add-int/lit8 v2, v6, -0x1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_c

    .line 852
    :cond_1a
    :try_start_2
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x2200

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 855
    iget-boolean v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mShowUninstalled:Z

    if-nez v1, :cond_0

    .line 859
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    const/high16 v1, 0x80

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    move v4, v3

    goto/16 :goto_0

    .line 861
    :catch_2
    move-exception v0

    move v4, v3

    .line 862
    goto/16 :goto_0
.end method

.method private resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 906
    const v0, 0x7f0b0446

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 907
    const v0, 0x7f0b045d

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 909
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 910
    return-void
.end method

.method private retrieveAppEntry()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 634
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 635
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v4, "package"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 636
    .local v3, packageName:Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_0

    .line 637
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 639
    .local v2, intent:Landroid/content/Intent;
    :goto_1
    if-eqz v2, :cond_0

    .line 640
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 643
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v4, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mState:Lcom/android/stocksettings/applications/ApplicationsState;

    invoke-virtual {v4, v3}, Lcom/android/stocksettings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    move-result-object v4

    iput-object v4, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    .line 644
    iget-object v4, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_3

    .line 647
    :try_start_0
    iget-object v4, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x2240

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    :goto_2
    return-object v3

    .end local v3           #packageName:Ljava/lang/String;
    :cond_1
    move-object v3, v5

    .line 635
    goto :goto_0

    .line 637
    .restart local v3       #packageName:Ljava/lang/String;
    :cond_2
    const-string v4, "intent"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    move-object v2, v4

    goto :goto_1

    .line 651
    :catch_0
    move-exception v1

    .line 652
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "InstalledAppDetails"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when retrieving package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 655
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const-string v4, "InstalledAppDetails"

    const-string v6, "Missing AppEntry; maybe reinstalling?"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iput-object v5, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_2
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 9
    .parameter "pkgInfo"

    .prologue
    const/4 v8, 0x0

    .line 564
    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v4, 0x7f080009

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 565
    .local v0, appSnippet:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v8, v3, v8, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 567
    const v3, 0x7f08000f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 568
    .local v1, icon:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mState:Lcom/android/stocksettings/applications/ApplicationsState;

    iget-object v4, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v3, v4}, Lcom/android/stocksettings/applications/ApplicationsState;->ensureIcon(Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;)V

    .line 569
    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 571
    const v3, 0x7f080010

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 572
    .local v2, label:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    const v3, 0x7f0800d6

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    .line 576
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 577
    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 578
    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0490

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    :goto_0
    return-void

    .line 581
    :cond_0
    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 914
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 915
    const-string v0, "chg"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 916
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 917
    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2, v1}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 918
    return-void
.end method

.method private setNotificationsEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    .line 1308
    iget-object v4, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1309
    .local v3, packageName:Ljava/lang/String;
    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    .line 1312
    .local v2, nm:Landroid/app/INotificationManager;
    :try_start_0
    iget-object v4, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 1313
    .local v0, enable:Z
    iget-object v4, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v2, v3, v4, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1317
    .end local v0           #enable:Z
    :goto_0
    return-void

    .line 1314
    :catch_0
    move-exception v1

    .line 1315
    .local v1, ex:Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-nez p1, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private showDialogInner(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1054
    invoke-static {p1, p2}, Lcom/android/stocksettings/applications/InstalledAppDetails$MyAlertDialogFragment;->newInstance(II)Lcom/android/stocksettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 1055
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1057
    :try_start_0
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1061
    :goto_0
    return-void

    .line 1058
    :catch_0
    move-exception v0

    .line 1059
    const-string v1, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showDialogInner error ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1230
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1231
    const-string v0, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1232
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1233
    iput-boolean p3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 1234
    return-void
.end method

.method private updateForceStopButton(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1264
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1266
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 540
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 541
    if-ne p1, v5, :cond_1

    .line 542
    iget-boolean v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    if-eqz v1, :cond_0

    .line 543
    iput-boolean v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 545
    :try_start_0
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x2200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 548
    .local v0, ainfo:Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    .line 549
    new-instance v2, Lcom/android/stocksettings/applications/InstalledAppDetails$DisableChanger;

    iget-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v1, v3}, Lcom/android/stocksettings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/stocksettings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/stocksettings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    .end local v0           #ainfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v1

    if-nez v1, :cond_1

    .line 557
    invoke-direct {p0, v5, v5}, Lcom/android/stocksettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 560
    :cond_1
    return-void

    .line 553
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 607
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1408
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1409
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1411
    iget-object v4, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_1

    .line 1412
    invoke-virtual {v0, v3, p2}, Landroid/app/ActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1424
    :cond_0
    :goto_0
    return-void

    .line 1413
    :cond_1
    iget-object v4, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_3

    .line 1414
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v0, v3, v1}, Landroid/app/ActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 1416
    :cond_3
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-ne p1, v0, :cond_0

    .line 1417
    if-nez p2, :cond_4

    .line 1418
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1419
    const/16 v0, 0x8

    invoke-direct {p0, v0, v2}, Lcom/android/stocksettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1421
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/stocksettings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1335
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1336
    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_5

    .line 1337
    iget-boolean v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v3, :cond_1

    .line 1338
    invoke-direct {p0, v0, v4}, Lcom/android/stocksettings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1404
    :cond_0
    :goto_0
    return-void

    .line 1340
    :cond_1
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1341
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_2

    .line 1342
    const/4 v0, 0x7

    invoke-direct {p0, v0, v4}, Lcom/android/stocksettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1350
    :cond_2
    new-instance v2, Lcom/android/stocksettings/applications/InstalledAppDetails$DisableChanger;

    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/stocksettings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/stocksettings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-virtual {v2, v1}, Lcom/android/stocksettings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1354
    :cond_3
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x80

    and-int/2addr v0, v3

    if-nez v0, :cond_4

    .line 1355
    invoke-direct {p0, v2, v1, v4}, Lcom/android/stocksettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1357
    :cond_4
    invoke-direct {p0, v2, v4, v4}, Lcom/android/stocksettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1360
    :cond_5
    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_6

    .line 1361
    const/16 v0, 0x9

    invoke-direct {p0, v0, v4}, Lcom/android/stocksettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1362
    :cond_6
    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_7

    .line 1363
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1365
    :try_start_0
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    :goto_1
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v2, v4}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 1370
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f0800b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1372
    iget-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v2, 0x7f0800b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1373
    invoke-direct {p0, v0, v1}, Lcom/android/stocksettings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0

    .line 1366
    :catch_0
    move-exception v0

    .line 1367
    const-string v1, "InstalledAppDetails"

    const-string v3, "mUsbManager.clearDefaults"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1374
    :cond_7
    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_9

    .line 1375
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 1376
    invoke-static {}, Lcom/android/stocksettings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1377
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1378
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1380
    invoke-virtual {p0, v1, v0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1383
    :cond_8
    invoke-direct {p0, v1, v4}, Lcom/android/stocksettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 1385
    :cond_9
    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_b

    .line 1387
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/stocksettings/applications/InstalledAppDetails$ClearCacheObserver;

    if-nez v0, :cond_a

    .line 1388
    new-instance v0, Lcom/android/stocksettings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/applications/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/stocksettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/stocksettings/applications/InstalledAppDetails$ClearCacheObserver;

    .line 1390
    :cond_a
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/stocksettings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto/16 :goto_0

    .line 1391
    :cond_b
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_c

    .line 1392
    const/4 v0, 0x5

    invoke-direct {p0, v0, v4}, Lcom/android/stocksettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 1394
    :cond_c
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 1395
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/stocksettings/applications/InstalledAppDetails$PackageMoveObserver;

    if-nez v2, :cond_d

    .line 1396
    new-instance v2, Lcom/android/stocksettings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-direct {v2, p0}, Lcom/android/stocksettings/applications/InstalledAppDetails$PackageMoveObserver;-><init>(Lcom/android/stocksettings/applications/InstalledAppDetails;)V

    iput-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/stocksettings/applications/InstalledAppDetails$PackageMoveObserver;

    .line 1398
    :cond_d
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_e

    move v0, v1

    .line 1400
    :cond_e
    iput-boolean v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 1401
    invoke-direct {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->refreshButtons()V

    .line 1402
    iget-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/stocksettings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 426
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 428
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/stocksettings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/stocksettings/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mState:Lcom/android/stocksettings/applications/ApplicationsState;

    .line 429
    iget-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mState:Lcom/android/stocksettings/applications/ApplicationsState;

    invoke-virtual {v1, p0}, Lcom/android/stocksettings/applications/ApplicationsState;->newSession(Lcom/android/stocksettings/applications/ApplicationsState$Callbacks;)Lcom/android/stocksettings/applications/ApplicationsState$Session;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mSession:Lcom/android/stocksettings/applications/ApplicationsState$Session;

    .line 430
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 431
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    .line 432
    const-string v1, "usb"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 433
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 434
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 435
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 436
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    .line 438
    new-instance v1, Lcom/android/stocksettings/applications/CanBeOnSdCardChecker;

    invoke-direct {v1}, Lcom/android/stocksettings/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/stocksettings/applications/CanBeOnSdCardChecker;

    .line 441
    iget-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mSession:Lcom/android/stocksettings/applications/ApplicationsState$Session;

    invoke-virtual {v1}, Lcom/android/stocksettings/applications/ApplicationsState$Session;->resume()V

    .line 443
    invoke-direct {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    .line 445
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/applications/InstalledAppDetails;->setHasOptionsMenu(Z)V

    .line 446
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 505
    const v0, 0x7f0b0455

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 507
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f08018c

    const v7, 0x7f08018b

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 451
    const v3, 0x7f04003c

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 452
    .local v2, view:Landroid/view/View;
    invoke-static {p2, v2, v2, v5}, Lcom/android/stocksettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 454
    iput-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    .line 455
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b048d

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    .line 458
    const v3, 0x7f0800a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    .line 459
    const v3, 0x7f0800a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    .line 460
    const v3, 0x7f0800ad

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    .line 461
    const v3, 0x7f0800aa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    .line 462
    const v3, 0x7f0800af

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    .line 464
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 465
    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 466
    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 470
    :cond_0
    const v3, 0x7f0800a1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 471
    .local v0, btnPanel:Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 472
    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v4, 0x7f0b044e

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 473
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 474
    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 477
    const v3, 0x7f0800a2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    .line 478
    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 479
    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    .line 480
    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 483
    const v3, 0x7f0800b0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 484
    .local v1, data_buttons_panel:Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    .line 485
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    .line 488
    const v3, 0x7f0800b4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    .line 489
    const v3, 0x7f0800b5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    .line 491
    const v3, 0x7f0800b8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    .line 494
    const v3, 0x7f0800b9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    .line 495
    const v3, 0x7f0800ba

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    .line 496
    const v3, 0x7f0800bb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    .line 498
    const v3, 0x7f0800a3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CompoundButton;

    iput-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    .line 500
    return-object v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 530
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 531
    .local v0, menuId:I
    if-ne v0, v1, :cond_0

    .line 532
    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/stocksettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 535
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 611
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 615
    invoke-direct {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->refreshUi()Z

    .line 616
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    invoke-direct {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 627
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 601
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 602
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mSession:Lcom/android/stocksettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/stocksettings/applications/ApplicationsState$Session;->pause()V

    .line 603
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 511
    const/4 v0, 0x1

    .line 512
    .local v0, showIt:Z
    iget-boolean v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v1, :cond_1

    .line 513
    const/4 v0, 0x0

    .line 525
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 526
    return-void

    .line 514
    :cond_1
    iget-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    if-nez v1, :cond_2

    .line 515
    const/4 v0, 0x0

    goto :goto_0

    .line 516
    :cond_2
    iget-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 517
    const/4 v0, 0x0

    goto :goto_0

    .line 518
    :cond_3
    iget-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 519
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 520
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_6

    .line 521
    const/4 v0, 0x0

    goto :goto_0

    .line 522
    :cond_6
    iget-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 523
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 620
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 587
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 590
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const v1, 0x7f0b0771

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setText(I)V

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails;->mSession:Lcom/android/stocksettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/stocksettings/applications/ApplicationsState$Session;->resume()V

    .line 594
    invoke-direct {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_1

    .line 595
    invoke-direct {p0, v2, v2}, Lcom/android/stocksettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 597
    :cond_1
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .parameter "running"

    .prologue
    .line 631
    return-void
.end method