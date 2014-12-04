.class public Lcom/android/stocksettings/wfd/WifiUtils;
.super Ljava/lang/Object;
.source "WifiUtils.java"


# instance fields
.field private bOpenWifi:Z

.field public mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "paramContext"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stocksettings/wfd/WifiUtils;->bOpenWifi:Z

    .line 15
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/stocksettings/wfd/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 16
    return-void
.end method


# virtual methods
.method public isWifiApEnable()Z
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/stocksettings/wfd/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    return v0
.end method

.method public isWifiEnable()Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/stocksettings/wfd/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public toEnableWifi()Z
    .locals 5

    .prologue
    .line 44
    const/4 v0, 0x1

    .line 45
    .local v0, bool:Z
    iget-object v2, p0, Lcom/android/stocksettings/wfd/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 47
    iget-object v2, p0, Lcom/android/stocksettings/wfd/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 48
    .local v1, i:I
    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/android/stocksettings/wfd/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 50
    :cond_1
    const-string v2, "Wifi-Display-Setting.WiFiUtil"

    const-string v3, "toEnableP2p open wifi"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iput-boolean v0, p0, Lcom/android/stocksettings/wfd/WifiUtils;->bOpenWifi:Z

    .line 52
    iget-object v2, p0, Lcom/android/stocksettings/wfd/WifiUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v2

    .line 56
    .end local v1           #i:I
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method
