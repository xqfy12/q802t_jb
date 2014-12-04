.class public Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$1;,
        Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$SettingsObserver;,
        Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$SyncStateTracker;,
        Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$GpsStateTracker;,
        Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;,
        Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$WifiStateTracker;,
        Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;
    }
.end annotation


# static fields
.field private static final IND_DRAWABLE_MID:[I

.field private static final IND_DRAWABLE_OFF:[I

.field private static final IND_DRAWABLE_ON:[I

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static final sBluetoothState:Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static final sGpsState:Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static sLocalBluetoothAdapter:Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;

.field private static sSettingsObserver:Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$SettingsObserver;

.field private static final sSyncState:Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static final sWifiState:Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 55
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.stocksettings"

    const-string v2, "com.android.stocksettings.widget.SettingsAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 59
    sput-object v3, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;

    .line 82
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    .line 88
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    .line 94
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    .line 105
    new-instance v0, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$WifiStateTracker;

    invoke-direct {v0, v3}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$WifiStateTracker;-><init>(Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 106
    new-instance v0, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;

    invoke-direct {v0, v3}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;-><init>(Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 107
    new-instance v0, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$GpsStateTracker;

    invoke-direct {v0, v3}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$GpsStateTracker;-><init>(Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 108
    new-instance v0, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$SyncStateTracker;

    invoke-direct {v0, v3}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$SyncStateTracker;-><init>(Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;

    return-void

    .line 82
    nop

    :array_0
    .array-data 0x4
        0x12t 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
    .end array-data

    .line 88
    :array_1
    .array-data 0x4
        0xft 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
    .end array-data

    .line 94
    :array_2
    .array-data 0x4
        0x15t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 918
    return-void
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    return-object v0
.end method

.method static synthetic access$600()[I
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    return-object v0
.end method

.method static synthetic access$800()Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;)Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    sput-object p0, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "context"

    .prologue
    .line 664
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040098

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 666
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f0801b3

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 668
    const v1, 0x7f0801bf

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 671
    const v1, 0x7f0801bc

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 674
    const v1, 0x7f0801b9

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 676
    const v1, 0x7f0801b6

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 680
    invoke-static {v0, p0}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 681
    return-object v0
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 629
    sget-object v0, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    if-nez v0, :cond_0

    .line 630
    new-instance v0, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    .line 632
    sget-object v0, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$SettingsObserver;->startObserving()V

    .line 634
    :cond_0
    return-void
.end method

.method private static getBrightness(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 833
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 838
    :goto_0
    return v0

    .line 836
    :catch_0
    move-exception v1

    .line 838
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getBrightnessMode(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 849
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness_mode"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 851
    .local v0, brightnessMode:I
    if-ne v0, v2, :cond_0

    .line 855
    .end local v0           #brightnessMode:I
    :goto_0
    return v2

    .restart local v0       #brightnessMode:I
    :cond_0
    move v2, v3

    .line 851
    goto :goto_0

    .line 852
    .end local v0           #brightnessMode:I
    :catch_0
    move-exception v1

    .line 853
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "SettingsAppWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrightnessMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 855
    goto :goto_0
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 763
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 764
    const-class v1, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 765
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 767
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 769
    return-object v0
.end method

.method private toggleBrightness(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 865
    :try_start_0
    const-string v6, "power"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v5

    .line 867
    .local v5, power:Landroid/os/IPowerManager;
    if-eqz v5, :cond_1

    .line 868
    const-string v6, "power"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 870
    .local v4, pm:Landroid/os/PowerManager;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 871
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v6, "screen_brightness"

    invoke-static {v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 873
    .local v0, brightness:I
    const/4 v1, 0x0

    .line 875
    .local v1, brightnessMode:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110017

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 877
    const-string v6, "screen_brightness_mode"

    invoke-static {v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 883
    :cond_0
    const/4 v6, 0x1

    if-ne v1, v6, :cond_2

    .line 884
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    .line 885
    const/4 v1, 0x0

    .line 895
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110017

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 898
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness_mode"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 905
    :goto_1
    if-nez v1, :cond_1

    .line 906
    invoke-interface {v5, v0}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 907
    const-string v6, "screen_brightness"

    invoke-static {v2, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 915
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #pm:Landroid/os/PowerManager;
    .end local v5           #power:Landroid/os/IPowerManager;
    :cond_1
    :goto_2
    return-void

    .line 886
    .restart local v0       #brightness:I
    .restart local v1       #brightnessMode:I
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v4       #pm:Landroid/os/PowerManager;
    .restart local v5       #power:Landroid/os/IPowerManager;
    :cond_2
    invoke-virtual {v4}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 887
    invoke-virtual {v4}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0

    goto :goto_0

    .line 888
    :cond_3
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 889
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    goto :goto_0

    .line 891
    :cond_4
    const/4 v1, 0x1

    .line 892
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 903
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 910
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #pm:Landroid/os/PowerManager;
    .end local v5           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v3

    .line 911
    .local v3, e:Landroid/os/RemoteException;
    const-string v6, "SettingsAppWidgetProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "toggleBrightness: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 912
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 913
    .local v3, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v6, "SettingsAppWidgetProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "toggleBrightness: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 11
    .parameter "views"
    .parameter "context"

    .prologue
    const v10, 0x7f0b05e9

    const v9, 0x7f0801c0

    const v8, 0x7f0801bf

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 704
    sget-object v4, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 705
    sget-object v4, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 706
    sget-object v4, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 707
    sget-object v4, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 709
    invoke-static {p1}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->getBrightnessMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 710
    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0b05ea

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v10, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v8, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 713
    const v4, 0x7f02003f

    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 715
    const v4, 0x7f0801c1

    const v5, 0x7f020016

    invoke-virtual {p0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 753
    :goto_0
    return-void

    .line 718
    :cond_0
    invoke-static {p1}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->getBrightness(Landroid/content/Context;)I

    move-result v0

    .line 719
    .local v0, brightness:I
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 721
    .local v3, pm:Landroid/os/PowerManager;
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f4ccccd

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 723
    .local v1, full:I
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e99999a

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 725
    .local v2, half:I
    if-le v0, v1, :cond_1

    .line 726
    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0b05eb

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v10, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v8, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 729
    const v4, 0x7f020040

    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 745
    :goto_1
    if-le v0, v2, :cond_3

    .line 746
    const v4, 0x7f0801c1

    const v5, 0x7f020016

    invoke-virtual {p0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 731
    :cond_1
    if-le v0, v2, :cond_2

    .line 732
    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0b05ec

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v10, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v8, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 735
    const v4, 0x7f020041

    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 738
    :cond_2
    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0b05ed

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v10, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v8, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 741
    const v4, 0x7f020042

    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 749
    :cond_3
    const v4, 0x7f0801c1

    const v5, 0x7f020013

    invoke-virtual {p0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 690
    invoke-static {p0}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 692
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 693
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 694
    invoke-static {p0}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 695
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 654
    sget-object v0, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    if-eqz v0, :cond_0

    .line 655
    sget-object v0, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$SettingsObserver;->stopObserving()V

    .line 656
    const/4 v0, 0x0

    sput-object v0, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    .line 658
    :cond_0
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 649
    invoke-static {p1}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 650
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 780
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 781
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 783
    sget-object v3, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 822
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 823
    :cond_1
    return-void

    .line 784
    :cond_2
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 785
    sget-object v3, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 786
    :cond_3
    const-string v3, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 787
    sget-object v3, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 788
    :cond_4
    sget-object v3, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 789
    sget-object v3, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 790
    :cond_5
    const-string v3, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 791
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 792
    .local v2, data:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 793
    .local v1, buttonId:I
    if-nez v1, :cond_6

    .line 799
    sget-object v3, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 800
    :cond_6
    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    .line 801
    invoke-direct {p0, p1}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->toggleBrightness(Landroid/content/Context;)V

    goto :goto_0

    .line 802
    :cond_7
    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    .line 803
    sget-object v3, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 804
    :cond_8
    const/4 v3, 0x3

    if-ne v1, v3, :cond_9

    .line 805
    sget-object v3, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 806
    :cond_9
    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 812
    sget-object v3, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 640
    invoke-static {p1}, Lcom/android/stocksettings/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 642
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 643
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 645
    :cond_0
    return-void
.end method
