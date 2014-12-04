.class public Lcom/android/stocksettings/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/stocksettings/ButtonBarHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stocksettings/Settings$NotificationAccessSettingsActivity;,
        Lcom/android/stocksettings/Settings$UserSettingsActivity;,
        Lcom/android/stocksettings/Settings$NotificationStationActivity;,
        Lcom/android/stocksettings/Settings$DreamSettingsActivity;,
        Lcom/android/stocksettings/Settings$WifiDisplaySettingsActivity;,
        Lcom/android/stocksettings/Settings$AndroidBeamSettingsActivity;,
        Lcom/android/stocksettings/Settings$TextToSpeechSettingsActivity;,
        Lcom/android/stocksettings/Settings$AdvancedWifiSettingsActivity;,
        Lcom/android/stocksettings/Settings$DataUsageSummaryActivity;,
        Lcom/android/stocksettings/Settings$DeviceAdminSettingsActivity;,
        Lcom/android/stocksettings/Settings$CryptKeeperSettingsActivity;,
        Lcom/android/stocksettings/Settings$AccountSyncSettingsActivity;,
        Lcom/android/stocksettings/Settings$PowerUsageSummaryActivity;,
        Lcom/android/stocksettings/Settings$RunningServicesActivity;,
        Lcom/android/stocksettings/Settings$PrivacySettingsActivity;,
        Lcom/android/stocksettings/Settings$LocationSettingsActivity;,
        Lcom/android/stocksettings/Settings$SecuritySettingsActivity;,
        Lcom/android/stocksettings/Settings$AccessibilitySettingsActivity;,
        Lcom/android/stocksettings/Settings$DevelopmentSettingsActivity;,
        Lcom/android/stocksettings/Settings$StorageUseActivity;,
        Lcom/android/stocksettings/Settings$AppOpsSummaryActivity;,
        Lcom/android/stocksettings/Settings$ManageApplicationsActivity;,
        Lcom/android/stocksettings/Settings$DeviceInfoSettingsActivity;,
        Lcom/android/stocksettings/Settings$DisplaySettingsActivity;,
        Lcom/android/stocksettings/Settings$SoundSettingsActivity;,
        Lcom/android/stocksettings/Settings$UserDictionarySettingsActivity;,
        Lcom/android/stocksettings/Settings$LocalePickerActivity;,
        Lcom/android/stocksettings/Settings$SpellCheckersSettingsActivity;,
        Lcom/android/stocksettings/Settings$KeyboardLayoutPickerActivity;,
        Lcom/android/stocksettings/Settings$InputMethodAndLanguageSettingsActivity;,
        Lcom/android/stocksettings/Settings$WifiP2pSettingsActivity;,
        Lcom/android/stocksettings/Settings$WifiSettingsActivity;,
        Lcom/android/stocksettings/Settings$StorageSettingsActivity;,
        Lcom/android/stocksettings/Settings$DateTimeSettingsActivity;,
        Lcom/android/stocksettings/Settings$VpnSettingsActivity;,
        Lcom/android/stocksettings/Settings$TetherSettingsActivity;,
        Lcom/android/stocksettings/Settings$WirelessSettingsActivity;,
        Lcom/android/stocksettings/Settings$BluetoothSettingsActivity;,
        Lcom/android/stocksettings/Settings$HeaderAdapter;
    }
.end annotation


# instance fields
.field private SETTINGS_FOR_RESTRICTED:[I

.field private mAuthenticatorHelper:Lcom/android/stocksettings/accounts/AuthenticatorHelper;

.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFragmentClass:Ljava/lang/String;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInLocalHeaderSwitch:Z

.field private mLastHeader:Landroid/preference/PreferenceActivity$Header;

.field private mListeningToAccountUpdates:Z

.field private mParentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mTopLevelHeaderId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 109
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/stocksettings/Settings;->SETTINGS_FOR_RESTRICTED:[I

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/stocksettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 889
    return-void

    .line 109
    :array_0
    .array-data 0x4
        0x26t 0x2t 0x8t 0x7ft
        0x27t 0x2t 0x8t 0x7ft
        0x28t 0x2t 0x8t 0x7ft
        0x29t 0x2t 0x8t 0x7ft
        0x2at 0x2t 0x8t 0x7ft
        0x2ct 0x2t 0x8t 0x7ft
        0x2dt 0x2t 0x8t 0x7ft
        0x30t 0x2t 0x8t 0x7ft
        0x31t 0x2t 0x8t 0x7ft
        0x32t 0x2t 0x8t 0x7ft
        0x34t 0x2t 0x8t 0x7ft
        0x33t 0x2t 0x8t 0x7ft
        0x37t 0x2t 0x8t 0x7ft
        0x38t 0x2t 0x8t 0x7ft
        0x39t 0x2t 0x8t 0x7ft
        0x3at 0x2t 0x8t 0x7ft
        0x35t 0x2t 0x8t 0x7ft
        0x3ct 0x2t 0x8t 0x7ft
        0x3dt 0x2t 0x8t 0x7ft
        0x3et 0x2t 0x8t 0x7ft
        0x3ft 0x2t 0x8t 0x7ft
        0x43t 0x2t 0x8t 0x7ft
        0x41t 0x2t 0x8t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/stocksettings/Settings;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/stocksettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/stocksettings/Settings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/stocksettings/Settings;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method private getMetaData()V
    .locals 6

    .prologue
    .line 567
    :try_start_0
    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 569
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 586
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 570
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.stocksettings.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/stocksettings/Settings;->mTopLevelHeaderId:I

    .line 571
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.stocksettings.FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stocksettings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 574
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.stocksettings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 575
    .local v2, parentHeaderTitleRes:I
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.stocksettings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 576
    .local v1, parentFragmentClass:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 577
    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v3, p0, Lcom/android/stocksettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 578
    iget-object v3, p0, Lcom/android/stocksettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 579
    if-eqz v2, :cond_0

    .line 580
    iget-object v3, p0, Lcom/android/stocksettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 583
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #parentFragmentClass:Ljava/lang/String;
    .end local v2           #parentHeaderTitleRes:I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private highlightHeader(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 314
    if-eqz p1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/android/stocksettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 316
    .local v0, index:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 318
    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->isMultiPane()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 323
    .end local v0           #index:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private insertAccountsHeaders(Ljava/util/List;I)I
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const v12, 0x7f0b064d

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 502
    iget-object v0, p0, Lcom/android/stocksettings/Settings;->mAuthenticatorHelper:Lcom/android/stocksettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/stocksettings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v4

    .line 503
    new-instance v5, Ljava/util/ArrayList;

    array-length v0, v4

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 504
    array-length v6, v4

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_6

    aget-object v7, v4, v3

    .line 505
    iget-object v0, p0, Lcom/android/stocksettings/Settings;->mAuthenticatorHelper:Lcom/android/stocksettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v7}, Lcom/android/stocksettings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 506
    if-nez v8, :cond_1

    .line 504
    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 510
    :cond_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    .line 511
    array-length v0, v9

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/stocksettings/Settings;->mAuthenticatorHelper:Lcom/android/stocksettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, v7}, Lcom/android/stocksettings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 513
    :goto_2
    new-instance v10, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v10}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 514
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 515
    iget-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v11, :cond_2

    .line 516
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iput-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 518
    :cond_2
    if-eqz v0, :cond_5

    .line 519
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 520
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 521
    const-class v0, Lcom/android/stocksettings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 522
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 524
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v8, "account_type"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v8, "account"

    aget-object v11, v9, v2

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 526
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v8, "account"

    aget-object v9, v9, v2

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 542
    :cond_3
    :goto_3
    const-string v0, "com.android.localphone"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.sim"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move v0, v2

    .line 511
    goto :goto_2

    .line 529
    :cond_5
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 530
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 531
    const-class v0, Lcom/android/stocksettings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 532
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 533
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->isMultiPane()Z

    move-result v0

    if-nez v0, :cond_3

    .line 537
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v9, "account_label"

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 548
    :cond_6
    new-instance v0, Lcom/android/stocksettings/Settings$3;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/Settings$3;-><init>(Lcom/android/stocksettings/Settings;)V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 555
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 556
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move p2, v2

    goto :goto_4

    .line 558
    :cond_7
    iget-boolean v0, p0, Lcom/android/stocksettings/Settings;->mListeningToAccountUpdates:Z

    if-nez v0, :cond_8

    .line 559
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 560
    iput-boolean v1, p0, Lcom/android/stocksettings/Settings;->mListeningToAccountUpdates:Z

    .line 562
    :cond_8
    return p2
.end method

.method private switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stocksettings/Settings;->mInLocalHeaderSwitch:Z

    .line 256
    invoke-virtual {p0, p1}, Lcom/android/stocksettings/Settings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stocksettings/Settings;->mInLocalHeaderSwitch:Z

    .line 258
    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 10
    .parameter "className"

    .prologue
    .line 274
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 276
    .local v0, cn:Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 277
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 279
    .local v5, parentInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_0

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 280
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.android.stocksettings.FRAGMENT_CLASS"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, fragmentClass:Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 282
    .local v2, fragmentTitle:Ljava/lang/CharSequence;
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 283
    .local v4, parentHeader:Landroid/preference/PreferenceActivity$Header;
    iput-object v1, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 284
    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 285
    iput-object v4, p0, Lcom/android/stocksettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 287
    invoke-direct {p0, v4}, Lcom/android/stocksettings/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 288
    iget v7, p0, Lcom/android/stocksettings/Settings;->mTopLevelHeaderId:I

    invoke-direct {p0, v7}, Lcom/android/stocksettings/Settings;->highlightHeader(I)V

    .line 290
    new-instance v7, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v7}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v7, p0, Lcom/android/stocksettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 291
    iget-object v7, p0, Lcom/android/stocksettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.stocksettings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 293
    iget-object v7, p0, Lcom/android/stocksettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.stocksettings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v1           #fragmentClass:Ljava/lang/String;
    .end local v2           #fragmentTitle:Ljava/lang/CharSequence;
    .end local v4           #parentHeader:Landroid/preference/PreferenceActivity$Header;
    .end local v5           #parentInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v3

    .line 296
    .local v3, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find parent activity : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    iget-object v7, p0, Lcom/android/stocksettings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v8, "show"

    sget-object v9, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v10, "eng"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 420
    .local v5, showDev:Z
    const/4 v2, 0x0

    .line 422
    .local v2, i:I
    const-string v7, "user"

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 423
    .local v6, um:Landroid/os/UserManager;
    iget-object v7, p0, Lcom/android/stocksettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 424
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_11

    .line 425
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 427
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    iget-wide v7, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v3, v7

    .line 428
    .local v3, id:I
    const v7, 0x7f08022b

    if-eq v3, v7, :cond_1

    const v7, 0x7f080236

    if-ne v3, v7, :cond_5

    .line 429
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/android/stocksettings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    .line 482
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/stocksettings/Settings;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v7, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v7

    if-nez v7, :cond_3

    .line 485
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 489
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_0

    .line 491
    iget-object v7, p0, Lcom/android/stocksettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v7, :cond_4

    invoke-static {v0}, Lcom/android/stocksettings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v7

    if-eqz v7, :cond_4

    .line 493
    iput-object v0, p0, Lcom/android/stocksettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 495
    :cond_4
    iget-object v7, p0, Lcom/android/stocksettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 430
    :cond_5
    const v7, 0x7f080227

    if-ne v3, v7, :cond_6

    .line 432
    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.wifi"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 433
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 435
    :cond_6
    const v7, 0x7f080229

    if-ne v3, v7, :cond_7

    .line 437
    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.bluetooth"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 438
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 440
    :cond_7
    const v7, 0x7f08022a

    if-ne v3, v7, :cond_8

    .line 442
    const-string v7, "network_management"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 445
    .local v4, netManager:Landroid/os/INetworkManagementService;
    :try_start_0
    invoke-interface {v4}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    .line 446
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 448
    :catch_0
    move-exception v7

    goto/16 :goto_1

    .line 451
    .end local v4           #netManager:Landroid/os/INetworkManagementService;
    :cond_8
    const v7, 0x7f08023c

    if-ne v3, v7, :cond_9

    .line 452
    add-int/lit8 v1, v2, 0x1

    .line 453
    .local v1, headerIndex:I
    invoke-direct {p0, p1, v1}, Lcom/android/stocksettings/Settings;->insertAccountsHeaders(Ljava/util/List;I)I

    move-result v2

    .line 454
    goto/16 :goto_1

    .end local v1           #headerIndex:I
    :cond_9
    const v7, 0x7f080235

    if-ne v3, v7, :cond_b

    .line 455
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {}, Lcom/android/stocksettings/Utils;->isMonkeyRunning()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 458
    :cond_a
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 460
    :cond_b
    const v7, 0x7f080242

    if-ne v3, v7, :cond_c

    .line 461
    if-nez v5, :cond_2

    .line 462
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 464
    :cond_c
    const v7, 0x7f08023d

    if-ne v3, v7, :cond_d

    .line 465
    const-string v7, "no_modify_accounts"

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 466
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 468
    :cond_d
    const v7, 0x7f08022e

    if-ne v3, v7, :cond_e

    .line 470
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 471
    :cond_e
    const v7, 0x7f08022f

    if-ne v3, v7, :cond_f

    .line 472
    const-string v7, "persist.env.phone.global"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_2

    .line 473
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 475
    :cond_f
    const v7, 0x7f080228

    if-ne v3, v7, :cond_10

    .line 476
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 477
    :cond_10
    const v7, 0x7f080230

    if-ne v3, v7, :cond_2

    .line 478
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 499
    .end local v0           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v3           #id:I
    :cond_11
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 327
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 328
    .local v4, superIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/stocksettings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 331
    .local v3, startingFragment:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    .line 332
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 333
    .local v2, modIntent:Landroid/content/Intent;
    const-string v5, ":android:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 335
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 336
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0           #args:Landroid/os/Bundle;
    .local v1, args:Landroid/os/Bundle;
    move-object v0, v1

    .line 340
    .end local v1           #args:Landroid/os/Bundle;
    .restart local v0       #args:Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 341
    const-string v5, ":android:show_fragment_args"

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 344
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 338
    .restart local v0       #args:Landroid/os/Bundle;
    .restart local v2       #modIntent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #args:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0       #args:Landroid/os/Bundle;
    goto :goto_0

    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 344
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 595
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/stocksettings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/stocksettings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 364
    :cond_0
    :goto_0
    return-object v0

    .line 354
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 357
    :cond_2
    const-string v1, "com.android.stocksettings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.stocksettings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.stocksettings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    :cond_3
    const-class v0, Lcom/android/stocksettings/applications/ManageApplications;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 590
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .parameter "accounts"

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/stocksettings/Settings;->mAuthenticatorHelper:Lcom/android/stocksettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/stocksettings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 834
    iget-object v0, p0, Lcom/android/stocksettings/Settings;->mAuthenticatorHelper:Lcom/android/stocksettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, p1}, Lcom/android/stocksettings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 835
    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->invalidateHeaders()V

    .line 836
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p1, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v0, 0x7f050033

    invoke-virtual {p0, v0, p1}, Lcom/android/stocksettings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 413
    invoke-direct {p0, p1}, Lcom/android/stocksettings/Settings;->updateHeaderList(Ljava/util/List;)V

    .line 414
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 389
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 394
    const-class v1, Lcom/android/stocksettings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/stocksettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/stocksettings/wfd/WifiDisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/stocksettings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/stocksettings/DreamSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/stocksettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    :cond_0
    const-string v1, "settings:ui_options"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 403
    :cond_1
    const-class v1, Lcom/android/stocksettings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 404
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 148
    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "settings:ui_options"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "settings:ui_options"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setUiOptions(I)V

    .line 152
    :cond_0
    new-instance v0, Lcom/android/stocksettings/accounts/AuthenticatorHelper;

    invoke-direct {v0}, Lcom/android/stocksettings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v0, p0, Lcom/android/stocksettings/Settings;->mAuthenticatorHelper:Lcom/android/stocksettings/accounts/AuthenticatorHelper;

    .line 153
    iget-object v0, p0, Lcom/android/stocksettings/Settings;->mAuthenticatorHelper:Lcom/android/stocksettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/stocksettings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 154
    iget-object v0, p0, Lcom/android/stocksettings/Settings;->mAuthenticatorHelper:Lcom/android/stocksettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v4}, Lcom/android/stocksettings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 156
    const-string v0, "development"

    invoke-virtual {p0, v0, v3}, Lcom/android/stocksettings/Settings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 159
    invoke-direct {p0}, Lcom/android/stocksettings/Settings;->getMetaData()V

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stocksettings/Settings;->mInLocalHeaderSwitch:Z

    .line 161
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    iput-boolean v3, p0, Lcom/android/stocksettings/Settings;->mInLocalHeaderSwitch:Z

    .line 164
    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget v0, p0, Lcom/android/stocksettings/Settings;->mTopLevelHeaderId:I

    invoke-direct {p0, v0}, Lcom/android/stocksettings/Settings;->highlightHeader(I)V

    .line 168
    const v0, 0x7f0b00eb

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/Settings;->setTitle(I)V

    .line 172
    :cond_1
    if-eqz p1, :cond_2

    .line 173
    const-string v0, "com.android.stocksettings.CURRENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/stocksettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 174
    const-string v0, "com.android.stocksettings.PARENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/stocksettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 178
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/stocksettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/android/stocksettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v4}, Lcom/android/stocksettings/Settings;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/android/stocksettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_4

    .line 184
    iget-object v0, p0, Lcom/android/stocksettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/stocksettings/Settings$1;

    invoke-direct {v1, p0}, Lcom/android/stocksettings/Settings$1;-><init>(Lcom/android/stocksettings/Settings;)V

    invoke-virtual {p0, v0, v4, v1}, Lcom/android/stocksettings/Settings;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 193
    :cond_4
    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 194
    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 195
    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 197
    :cond_5
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 842
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 248
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 249
    iget-boolean v0, p0, Lcom/android/stocksettings/Settings;->mListeningToAccountUpdates:Z

    if-eqz v0, :cond_0

    .line 250
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 252
    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    .line 373
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, fragmentClass:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 375
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 376
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 377
    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 378
    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 379
    iput-object v1, p0, Lcom/android/stocksettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 383
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/stocksettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 5
    .parameter "header"
    .parameter "position"

    .prologue
    .line 783
    const/4 v0, 0x0

    .line 784
    .local v0, revert:Z
    iget-wide v1, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f08023d

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 785
    const/4 v0, 0x1

    .line 788
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 790
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/stocksettings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_1

    .line 791
    iget-object v1, p0, Lcom/android/stocksettings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    iget-wide v1, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/android/stocksettings/Settings;->highlightHeader(I)V

    .line 795
    :goto_0
    return-void

    .line 793
    :cond_1
    iput-object p1, p0, Lcom/android/stocksettings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 302
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 305
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/stocksettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/stocksettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/stocksettings/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 311
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 234
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 236
    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 237
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/stocksettings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 238
    check-cast v0, Lcom/android/stocksettings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/stocksettings/Settings$HeaderAdapter;->pause()V

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/android/stocksettings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/stocksettings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 243
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/stocksettings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 244
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 800
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 801
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/stocksettings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    const v3, 0x7f0b02f2

    .line 811
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/stocksettings/Settings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 813
    const/4 v0, 0x1

    return v0

    .line 803
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/stocksettings/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 806
    const v3, 0x7f0b011a

    goto :goto_0

    .line 808
    :cond_2
    const v3, 0x7f0b0118

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 214
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 216
    new-instance v1, Lcom/android/stocksettings/Settings$2;

    invoke-direct {v1, p0}, Lcom/android/stocksettings/Settings$2;-><init>(Lcom/android/stocksettings/Settings;)V

    iput-object v1, p0, Lcom/android/stocksettings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 222
    iget-object v1, p0, Lcom/android/stocksettings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/stocksettings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 226
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/stocksettings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 227
    check-cast v0, Lcom/android/stocksettings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/stocksettings/Settings$HeaderAdapter;->resume()V

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->invalidateHeaders()V

    .line 230
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 204
    iget-object v0, p0, Lcom/android/stocksettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "com.android.stocksettings.CURRENT_HEADER"

    iget-object v1, p0, Lcom/android/stocksettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_1

    .line 208
    const-string v0, "com.android.stocksettings.PARENT_HEADER"

    iget-object v1, p0, Lcom/android/stocksettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 210
    :cond_1
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 823
    if-nez p1, :cond_0

    .line 824
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 828
    :goto_0
    return-void

    .line 826
    :cond_0
    new-instance v0, Lcom/android/stocksettings/Settings$HeaderAdapter;

    invoke-virtual {p0}, Lcom/android/stocksettings/Settings;->getHeaders()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/Settings;->mAuthenticatorHelper:Lcom/android/stocksettings/accounts/AuthenticatorHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/stocksettings/Settings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/stocksettings/accounts/AuthenticatorHelper;)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .parameter

    .prologue
    .line 818
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/stocksettings/Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 2
    .parameter "header"

    .prologue
    const/4 v1, 0x0

    .line 262
    iget-boolean v0, p0, Lcom/android/stocksettings/Settings;->mInLocalHeaderSwitch:Z

    if-nez v0, :cond_0

    .line 263
    iput-object v1, p0, Lcom/android/stocksettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 264
    iput-object v1, p0, Lcom/android/stocksettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 266
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 267
    return-void
.end method
