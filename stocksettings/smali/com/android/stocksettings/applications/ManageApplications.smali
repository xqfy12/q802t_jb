.class public Lcom/android/stocksettings/applications/ManageApplications;
.super Landroid/app/Fragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/stocksettings/applications/AppClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/stocksettings/applications/ManageApplications$MyPagerAdapter;,
        Lcom/android/stocksettings/applications/ManageApplications$TabInfo;
    }
.end annotation


# instance fields
.field private mActivityResumed:Z

.field private mApplicationsState:Lcom/android/stocksettings/applications/ApplicationsState;

.field private mComputingSizeStr:Ljava/lang/CharSequence;

.field private final mContainerConnection:Landroid/content/ServiceConnection;

.field private volatile mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContentContainer:Landroid/view/ViewGroup;

.field mCurTab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mDefaultListType:I

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mNumTabs:I

.field private mOptionsMenu:Landroid/view/Menu;

.field mResetDialog:Landroid/app/AlertDialog;

.field private mRootView:Landroid/view/View;

.field public mSearchTitle:Landroid/widget/TextView;

.field private mSearchView:Landroid/widget/LinearLayout;

.field private mShowBackground:Z

.field private mSortOrder:I

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/stocksettings/applications/ManageApplications$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mTextView:Landroid/widget/EditText;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 184
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mSortOrder:I

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mCurTab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mShowBackground:Z

    .line 476
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mDefaultListType:I

    .line 1333
    new-instance v0, Lcom/android/stocksettings/applications/ManageApplications$3;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/applications/ManageApplications$3;-><init>(Lcom/android/stocksettings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/stocksettings/applications/ManageApplications;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mNumTabs:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/stocksettings/applications/ManageApplications;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/stocksettings/applications/ManageApplications;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/stocksettings/applications/ManageApplications;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mActivityResumed:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/stocksettings/applications/ManageApplications;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mSortOrder:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/stocksettings/applications/ManageApplications;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/stocksettings/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/stocksettings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/stocksettings/applications/ManageApplications;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/stocksettings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method private showInputmethod()V
    .locals 2

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mSearchView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mCurTab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    iget v0, v0, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->mListType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mSearchView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1353
    iget-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1356
    :cond_0
    return-void
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    .line 1086
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1087
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1090
    const-class v1, Lcom/android/stocksettings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0444

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1092
    return-void
.end method

.method private updateNumTabs()V
    .locals 2

    .prologue
    .line 1064
    iget-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mApplicationsState:Lcom/android/stocksettings/applications/ApplicationsState;

    invoke-virtual {v1}, Lcom/android/stocksettings/applications/ApplicationsState;->haveDisabledApps()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1065
    .local v0, newNum:I
    :goto_0
    iget v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mNumTabs:I

    if-eq v0, v1, :cond_0

    .line 1066
    iput v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mNumTabs:I

    .line 1067
    iget-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 1068
    iget-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 1071
    :cond_0
    return-void

    .line 1064
    .end local v0           #newNum:I
    :cond_1
    iget-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method buildResetDialog()V
    .locals 3

    .prologue
    .line 1170
    iget-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 1171
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1172
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b0468

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1173
    const v1, 0x7f0b0469

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1174
    const v1, 0x7f0b046a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1175
    const v1, 0x7f0b00ea

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1176
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1177
    iget-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1179
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1058
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mApplicationsState:Lcom/android/stocksettings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1061
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1192
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1193
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 1195
    .local v4, mIPm:Landroid/content/pm/IPackageManager;
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 1197
    .local v3, nm:Landroid/app/INotificationManager;
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v6

    .line 1198
    .local v6, npm:Landroid/net/NetworkPolicyManager;
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    .line 1200
    .local v5, aom:Landroid/app/AppOpsManager;
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1201
    .local v7, handler:Landroid/os/Handler;
    new-instance v0, Lcom/android/stocksettings/applications/ManageApplications$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/stocksettings/applications/ManageApplications$2;-><init>(Lcom/android/stocksettings/applications/ManageApplications;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/content/pm/IPackageManager;Landroid/app/AppOpsManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/applications/ManageApplications$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1258
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #nm:Landroid/app/INotificationManager;
    .end local v4           #mIPm:Landroid/content/pm/IPackageManager;
    .end local v5           #aom:Landroid/app/AppOpsManager;
    .end local v6           #npm:Landroid/net/NetworkPolicyManager;
    .end local v7           #handler:Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v5, -0x1

    const/4 v7, 0x3

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 859
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 861
    invoke-virtual {p0, v8}, Lcom/android/stocksettings/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 863
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/stocksettings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/stocksettings/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mApplicationsState:Lcom/android/stocksettings/applications/ApplicationsState;

    .line 864
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 865
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 867
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "classname"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 869
    :goto_0
    if-nez v0, :cond_0

    .line 870
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 872
    :cond_0
    const-class v1, Lcom/android/stocksettings/Settings$RunningServicesActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".RunningServices"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    move v1, v8

    .line 885
    :goto_1
    if-eqz p1, :cond_9

    .line 886
    const-string v0, "sortOrder"

    iget v2, p0, Lcom/android/stocksettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mSortOrder:I

    .line 887
    const-string v0, "defaultListType"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 888
    if-eq v0, v5, :cond_8

    .line 889
    :goto_2
    const-string v1, "showBackground"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mShowBackground:Z

    .line 892
    :goto_3
    iput v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mDefaultListType:I

    .line 894
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 896
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v8}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 898
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b048e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 899
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b048d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 901
    new-instance v0, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/stocksettings/applications/ManageApplications;->mApplicationsState:Lcom/android/stocksettings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0b0470

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/stocksettings/applications/ManageApplications;Lcom/android/stocksettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/stocksettings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 904
    iget-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 907
    const-string v0, "persist.sys.isExternalSdFirst"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 908
    new-instance v0, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/stocksettings/applications/ManageApplications;->mApplicationsState:Lcom/android/stocksettings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0b0472

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v4, v9

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/stocksettings/applications/ManageApplications;Lcom/android/stocksettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/stocksettings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 917
    :goto_4
    iget-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    :cond_2
    new-instance v0, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/stocksettings/applications/ManageApplications;->mApplicationsState:Lcom/android/stocksettings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0b0471

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v4, v8

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/stocksettings/applications/ManageApplications;Lcom/android/stocksettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/stocksettings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 923
    iget-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    new-instance v0, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/stocksettings/applications/ManageApplications;->mApplicationsState:Lcom/android/stocksettings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0b046e

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v4, v7

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/stocksettings/applications/ManageApplications;Lcom/android/stocksettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/stocksettings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 928
    iget-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 930
    new-instance v0, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/stocksettings/applications/ManageApplications;->mApplicationsState:Lcom/android/stocksettings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0b046f

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/stocksettings/applications/ManageApplications;Lcom/android/stocksettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/stocksettings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 933
    iget-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    iget-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mNumTabs:I

    .line 936
    return-void

    .line 867
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 875
    :cond_4
    const-class v1, Lcom/android/stocksettings/Settings$StorageUseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ".StorageUse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 878
    :cond_5
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mSortOrder:I

    move v1, v7

    .line 879
    goto/16 :goto_1

    .line 880
    :cond_6
    const-string v0, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v1, v7

    .line 882
    goto/16 :goto_1

    .line 912
    :cond_7
    new-instance v0, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/stocksettings/applications/ManageApplications;->mApplicationsState:Lcom/android/stocksettings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0b0473

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v4, v9

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/stocksettings/applications/ManageApplications;Lcom/android/stocksettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/stocksettings/applications/AppClickListener;Landroid/os/Bundle;)V

    goto/16 :goto_4

    :cond_8
    move v0, v1

    goto/16 :goto_2

    :cond_9
    move v0, v1

    goto/16 :goto_3

    :cond_a
    move v1, v4

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1096
    iput-object p1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1099
    const-string v0, "persist.env.settings.searchapp"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    const/16 v0, 0x9

    const v1, 0x7f0b07d3

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1104
    :cond_0
    const v0, 0x7f0b0463

    invoke-interface {p1, v3, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1106
    const/4 v0, 0x5

    const/4 v1, 0x2

    const v2, 0x7f0b0464

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1108
    const/4 v0, 0x6

    const v1, 0x7f0b0465

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1110
    const/4 v0, 0x7

    const v1, 0x7f0b0466

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1112
    const/16 v0, 0x8

    const v1, 0x7f0b0467

    invoke-interface {p1, v3, v0, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1114
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1115
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 942
    iput-object p1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 944
    iget-object v5, p0, Lcom/android/stocksettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040044

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 946
    .local v2, rootView:Landroid/view/View;
    iput-object p2, p0, Lcom/android/stocksettings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    .line 947
    iput-object v2, p0, Lcom/android/stocksettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 949
    const v5, 0x7f0800d2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/stocksettings/applications/ManageApplications;->mSearchView:Landroid/widget/LinearLayout;

    .line 950
    const v5, 0x7f0800d4

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/stocksettings/applications/ManageApplications;->mTextView:Landroid/widget/EditText;

    .line 951
    const v5, 0x7f0800d3

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/stocksettings/applications/ManageApplications;->mSearchTitle:Landroid/widget/TextView;

    .line 952
    iget-object v5, p0, Lcom/android/stocksettings/applications/ManageApplications;->mTextView:Landroid/widget/EditText;

    new-instance v6, Lcom/android/stocksettings/applications/ManageApplications$1;

    invoke-direct {v6, p0}, Lcom/android/stocksettings/applications/ManageApplications$1;-><init>(Lcom/android/stocksettings/applications/ManageApplications;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 969
    const v5, 0x7f080011

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/android/stocksettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 970
    new-instance v0, Lcom/android/stocksettings/applications/ManageApplications$MyPagerAdapter;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/applications/ManageApplications$MyPagerAdapter;-><init>(Lcom/android/stocksettings/applications/ManageApplications;)V

    .line 971
    .local v0, adapter:Lcom/android/stocksettings/applications/ManageApplications$MyPagerAdapter;
    iget-object v5, p0, Lcom/android/stocksettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 972
    iget-object v5, p0, Lcom/android/stocksettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 973
    const v5, 0x7f080012

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/PagerTabStrip;

    .line 974
    .local v4, tabs:Landroid/support/v4/view/PagerTabStrip;
    const v5, 0x1060012

    invoke-virtual {v4, v5}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColorResource(I)V

    .line 978
    instance-of v5, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v5, :cond_0

    .line 979
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 982
    :cond_0
    if-eqz p3, :cond_1

    const-string v5, "resetDialog"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 983
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->buildResetDialog()V

    .line 986
    :cond_1
    if-nez p3, :cond_2

    .line 988
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/stocksettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 989
    iget-object v5, p0, Lcom/android/stocksettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    .line 990
    .local v3, tab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;
    iget v5, v3, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->mListType:I

    iget v6, p0, Lcom/android/stocksettings/applications/ManageApplications;->mDefaultListType:I

    if-ne v5, v6, :cond_3

    .line 991
    iget-object v5, p0, Lcom/android/stocksettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 997
    .end local v1           #i:I
    .end local v3           #tab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;
    :cond_2
    return-object v2

    .line 988
    .restart local v1       #i:I
    .restart local v3       #tab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1129
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1130
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1131
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 1124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1125
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 1047
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 1051
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1052
    iget-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->detachView()V

    .line 1051
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1054
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1186
    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/android/stocksettings/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "tab"
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/stocksettings/applications/ManageApplications$TabInfo;",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1294
    .local p2, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p1, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v1

    if-le v1, p4, :cond_0

    .line 1295
    iget-object v1, p1, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p4}, Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 1296
    .local v0, entry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 1297
    invoke-direct {p0}, Lcom/android/stocksettings/applications/ManageApplications;->startApplicationDetailsActivity()V

    .line 1299
    .end local v0           #entry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1262
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1263
    .local v0, menuId:I
    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    .line 1264
    :cond_0
    iput v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mSortOrder:I

    .line 1265
    iget-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mCurTab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mCurTab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    iget-object v1, v1, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_1

    .line 1266
    iget-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mCurTab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    iget-object v1, v1, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;

    iget v3, p0, Lcom/android/stocksettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v1, v3}, Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    .line 1288
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->updateOptionsMenu()V

    move v1, v2

    .line 1289
    :cond_2
    return v1

    .line 1268
    :cond_3
    const/4 v3, 0x6

    if-ne v0, v3, :cond_4

    .line 1269
    iput-boolean v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mShowBackground:Z

    .line 1270
    iget-object v3, p0, Lcom/android/stocksettings/applications/ManageApplications;->mCurTab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/stocksettings/applications/ManageApplications;->mCurTab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/stocksettings/applications/RunningProcessesView;
    invoke-static {v3}, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/stocksettings/applications/ManageApplications$TabInfo;)Lcom/android/stocksettings/applications/RunningProcessesView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1271
    iget-object v3, p0, Lcom/android/stocksettings/applications/ManageApplications;->mCurTab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/stocksettings/applications/RunningProcessesView;
    invoke-static {v3}, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/stocksettings/applications/ManageApplications$TabInfo;)Lcom/android/stocksettings/applications/RunningProcessesView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/stocksettings/applications/RunningProcessesView;->mAdapter:Lcom/android/stocksettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/stocksettings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 1273
    :cond_4
    const/4 v3, 0x7

    if-ne v0, v3, :cond_5

    .line 1274
    iput-boolean v2, p0, Lcom/android/stocksettings/applications/ManageApplications;->mShowBackground:Z

    .line 1275
    iget-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mCurTab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mCurTab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/stocksettings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/stocksettings/applications/ManageApplications$TabInfo;)Lcom/android/stocksettings/applications/RunningProcessesView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1276
    iget-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mCurTab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/stocksettings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/stocksettings/applications/ManageApplications$TabInfo;)Lcom/android/stocksettings/applications/RunningProcessesView;

    move-result-object v1

    iget-object v1, v1, Lcom/android/stocksettings/applications/RunningProcessesView;->mAdapter:Lcom/android/stocksettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/stocksettings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 1278
    :cond_5
    const/16 v3, 0x8

    if-ne v0, v3, :cond_6

    .line 1279
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->buildResetDialog()V

    goto :goto_0

    .line 1282
    :cond_6
    const/16 v3, 0x9

    if-ne v0, v3, :cond_2

    .line 1283
    invoke-direct {p0}, Lcom/android/stocksettings/applications/ManageApplications;->showInputmethod()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1029
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1030
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mActivityResumed:Z

    .line 1031
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1032
    iget-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->pause()V

    .line 1031
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1034
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 1119
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1120
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1007
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 1008
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mActivityResumed:Z

    .line 1009
    iget-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/applications/ManageApplications;->updateCurrentTab(I)V

    .line 1010
    invoke-direct {p0}, Lcom/android/stocksettings/applications/ManageApplications;->updateNumTabs()V

    .line 1011
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1012
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1016
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1017
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1018
    iget v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mDefaultListType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1019
    const-string v0, "defaultListType"

    iget v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mDefaultListType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1021
    :cond_0
    const-string v0, "showBackground"

    iget-boolean v1, p0, Lcom/android/stocksettings/applications/ManageApplications;->mShowBackground:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1022
    iget-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1023
    const-string v0, "resetDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1025
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1002
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1003
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1038
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1039
    iget-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1041
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1043
    :cond_0
    return-void
.end method

.method tabForType(I)Lcom/android/stocksettings/applications/ManageApplications$TabInfo;
    .locals 3
    .parameter "type"

    .prologue
    .line 1074
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/stocksettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1075
    iget-object v2, p0, Lcom/android/stocksettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    .line 1076
    .local v1, tab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;
    iget v2, v1, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v2, p1, :cond_0

    .line 1080
    .end local v1           #tab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;
    :goto_1
    return-object v1

    .line 1074
    .restart local v1       #tab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1080
    .end local v1           #tab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateCurrentTab(I)V
    .locals 8
    .parameter "position"

    .prologue
    .line 1302
    iget-object v4, p0, Lcom/android/stocksettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    .line 1303
    .local v3, tab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;
    iput-object v3, p0, Lcom/android/stocksettings/applications/ManageApplications;->mCurTab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    .line 1306
    iget-boolean v4, p0, Lcom/android/stocksettings/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v4, :cond_1

    .line 1307
    iget-object v4, p0, Lcom/android/stocksettings/applications/ManageApplications;->mCurTab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    iget-object v5, p0, Lcom/android/stocksettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/android/stocksettings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/stocksettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1308
    iget-object v4, p0, Lcom/android/stocksettings/applications/ManageApplications;->mCurTab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    iget v5, p0, Lcom/android/stocksettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v4, v5}, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->resume(I)V

    .line 1312
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/stocksettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1313
    iget-object v4, p0, Lcom/android/stocksettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    .line 1314
    .local v2, t:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;
    iget-object v4, p0, Lcom/android/stocksettings/applications/ManageApplications;->mCurTab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    if-eq v2, v4, :cond_0

    .line 1315
    invoke-virtual {v2}, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->pause()V

    .line 1312
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1310
    .end local v1           #i:I
    .end local v2           #t:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/stocksettings/applications/ManageApplications;->mCurTab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->pause()V

    goto :goto_0

    .line 1319
    .restart local v1       #i:I
    :cond_2
    iget-object v4, p0, Lcom/android/stocksettings/applications/ManageApplications;->mCurTab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 1320
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1321
    invoke-virtual {p0}, Lcom/android/stocksettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1322
    .local v0, host:Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 1323
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1326
    :cond_3
    iget-object v4, p0, Lcom/android/stocksettings/applications/ManageApplications;->mCurTab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    iget v4, v4, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->mListType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 1327
    iget-object v4, p0, Lcom/android/stocksettings/applications/ManageApplications;->mSearchView:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1329
    :cond_4
    return-void
.end method

.method updateOptionsMenu()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1134
    iget-object v4, p0, Lcom/android/stocksettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v4, :cond_1

    .line 1167
    :cond_0
    :goto_0
    return-void

    .line 1142
    :cond_1
    iget-object v4, p0, Lcom/android/stocksettings/applications/ManageApplications;->mCurTab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/stocksettings/applications/ManageApplications;->mCurTab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    iget v4, v4, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v4, v3, :cond_4

    .line 1143
    invoke-virtual {p0, v3}, Lcom/android/stocksettings/applications/ManageApplications;->tabForType(I)Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    move-result-object v1

    .line 1144
    .local v1, tab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;
    if-eqz v1, :cond_2

    #getter for: Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/stocksettings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/stocksettings/applications/ManageApplications$TabInfo;)Lcom/android/stocksettings/applications/RunningProcessesView;

    move-result-object v4

    if-eqz v4, :cond_2

    #getter for: Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/stocksettings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/stocksettings/applications/ManageApplications$TabInfo;)Lcom/android/stocksettings/applications/RunningProcessesView;

    move-result-object v4

    iget-object v4, v4, Lcom/android/stocksettings/applications/RunningProcessesView;->mAdapter:Lcom/android/stocksettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v4}, Lcom/android/stocksettings/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v0

    .line 1146
    .local v0, showingBackground:Z
    :goto_1
    iget-object v4, p0, Lcom/android/stocksettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1147
    iget-object v4, p0, Lcom/android/stocksettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1148
    iget-object v4, p0, Lcom/android/stocksettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1149
    iget-object v4, p0, Lcom/android/stocksettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v0, :cond_3

    :goto_2
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1150
    iget-object v3, p0, Lcom/android/stocksettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1151
    const-string v3, "persist.env.settings.searchapp"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1153
    iget-object v3, p0, Lcom/android/stocksettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v4, 0x9

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .end local v0           #showingBackground:Z
    :cond_2
    move v0, v2

    .line 1144
    goto :goto_1

    .restart local v0       #showingBackground:Z
    :cond_3
    move v3, v2

    .line 1149
    goto :goto_2

    .line 1157
    .end local v0           #showingBackground:Z
    .end local v1           #tab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;
    :cond_4
    iget-object v4, p0, Lcom/android/stocksettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v4, p0, Lcom/android/stocksettings/applications/ManageApplications;->mSortOrder:I

    if-eq v4, v6, :cond_5

    move v4, v3

    :goto_3
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1158
    iget-object v4, p0, Lcom/android/stocksettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v4, p0, Lcom/android/stocksettings/applications/ManageApplications;->mSortOrder:I

    if-eq v4, v7, :cond_6

    move v4, v3

    :goto_4
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1159
    iget-object v4, p0, Lcom/android/stocksettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1160
    iget-object v4, p0, Lcom/android/stocksettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1161
    iget-object v4, p0, Lcom/android/stocksettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v5, 0x8

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1162
    const-string v4, "persist.env.settings.searchapp"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1164
    iget-object v2, p0, Lcom/android/stocksettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v4, 0x9

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_5
    move v4, v2

    .line 1157
    goto :goto_3

    :cond_6
    move v4, v2

    .line 1158
    goto :goto_4
.end method
