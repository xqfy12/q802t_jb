.class Lcom/android/stocksettings/wfd/WifiDisplaySettings$7;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/wfd/WifiDisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/stocksettings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    .line 480
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 482
    const-string v3, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/WifiDisplayStatus;

    .line 484
    .local v2, status:Landroid/hardware/display/WifiDisplayStatus;
    iget-object v3, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/stocksettings/wfd/WifiDisplaySettings;

    #setter for: Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;
    invoke-static {v3, v2}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->access$002(Lcom/android/stocksettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;

    .line 485
    iget-object v3, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/stocksettings/wfd/WifiDisplaySettings;

    #calls: Lcom/android/stocksettings/wfd/WifiDisplaySettings;->applyState()V
    invoke-static {v3}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->access$800(Lcom/android/stocksettings/wfd/WifiDisplaySettings;)V

    .line 497
    .end local v2           #status:Landroid/hardware/display/WifiDisplayStatus;
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    const-string v3, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 489
    const-string v3, "wifi_p2p_state"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 491
    .local v1, mWifiP2pEnabled:Z
    :goto_1
    if-nez v1, :cond_0

    .line 493
    iget-object v3, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/stocksettings/wfd/WifiDisplaySettings;

    #setter for: Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z
    invoke-static {v3, v1}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->access$302(Lcom/android/stocksettings/wfd/WifiDisplaySettings;Z)Z

    .line 494
    iget-object v3, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/stocksettings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->access$900(Lcom/android/stocksettings/wfd/WifiDisplaySettings;)Landroid/widget/Switch;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/stocksettings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/stocksettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z
    invoke-static {v4}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->access$300(Lcom/android/stocksettings/wfd/WifiDisplaySettings;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 489
    .end local v1           #mWifiP2pEnabled:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
