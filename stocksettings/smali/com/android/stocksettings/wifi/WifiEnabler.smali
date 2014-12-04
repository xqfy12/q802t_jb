.class public Lcom/android/stocksettings/wifi/WifiEnabler;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/widget/Switch;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    new-instance v0, Lcom/android/stocksettings/wifi/WifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/wifi/WifiEnabler$1;-><init>(Lcom/android/stocksettings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    iput-object p1, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    .line 85
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 88
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mContentResolver:Landroid/content/ContentResolver;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/stocksettings/wifi/WifiEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/stocksettings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/stocksettings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/stocksettings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/stocksettings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 224
    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 180
    packed-switch p1, :pswitch_data_0

    .line 196
    invoke-direct {p0, v1}, Lcom/android/stocksettings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 197
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 200
    :goto_0
    return-void

    .line 182
    :pswitch_0
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 185
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/stocksettings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 189
    :pswitch_2
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 192
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/stocksettings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 193
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSwitchChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 205
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 208
    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 125
    iget-boolean v3, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v3, :cond_0

    .line 177
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 131
    .local v0, mConnService:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 134
    .local v1, netInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 135
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "isConnected"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 154
    .end local v1           #netInfo:Landroid/net/NetworkInfo;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    .line 155
    .local v2, wifiApState:I
    if-eqz p2, :cond_3

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    .line 157
    :cond_2
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 165
    :cond_3
    const-string v3, "wifienable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mWifiManager.setWifiEnabled(isChecked): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 170
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 138
    .end local v2           #wifiApState:I
    .restart local v1       #netInfo:Landroid/net/NetworkInfo;
    :cond_4
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "isConnected"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 173
    .end local v1           #netInfo:Landroid/net/NetworkInfo;
    .restart local v2       #wifiApState:I
    :cond_5
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0b01e6

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 105
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 100
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 7
    .parameter "switch_"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 108
    iget-object v5, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v5, p1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v5, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 110
    iput-object p1, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    .line 111
    iget-object v5, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    iget-object v5, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 114
    .local v2, wifiState:I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    move v1, v3

    .line 115
    .local v1, isEnabled:Z
    :goto_1
    if-ne v2, v3, :cond_4

    move v0, v3

    .line 116
    .local v0, isDisabled:Z
    :goto_2
    iget-object v5, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 117
    iget-object v5, p0, Lcom/android/stocksettings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v4, v3

    :cond_2
    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .end local v0           #isDisabled:Z
    .end local v1           #isEnabled:Z
    :cond_3
    move v1, v4

    .line 114
    goto :goto_1

    .restart local v1       #isEnabled:Z
    :cond_4
    move v0, v4

    .line 115
    goto :goto_2
.end method
