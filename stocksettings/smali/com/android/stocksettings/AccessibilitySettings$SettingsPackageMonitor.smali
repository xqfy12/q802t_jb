.class Lcom/android/stocksettings/AccessibilitySettings$SettingsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/AccessibilitySettings;


# direct methods
.method private constructor <init>(Lcom/android/stocksettings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 616
    iput-object p1, p0, Lcom/android/stocksettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/stocksettings/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stocksettings/AccessibilitySettings;Lcom/android/stocksettings/AccessibilitySettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 616
    invoke-direct {p0, p1}, Lcom/android/stocksettings/AccessibilitySettings$SettingsPackageMonitor;-><init>(Lcom/android/stocksettings/AccessibilitySettings;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 620
    iget-object v1, p0, Lcom/android/stocksettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/stocksettings/AccessibilitySettings;

    #getter for: Lcom/android/stocksettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/stocksettings/AccessibilitySettings;->access$400(Lcom/android/stocksettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 621
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/stocksettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/stocksettings/AccessibilitySettings;

    #getter for: Lcom/android/stocksettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/stocksettings/AccessibilitySettings;->access$400(Lcom/android/stocksettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 622
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 626
    iget-object v1, p0, Lcom/android/stocksettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/stocksettings/AccessibilitySettings;

    #getter for: Lcom/android/stocksettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/stocksettings/AccessibilitySettings;->access$400(Lcom/android/stocksettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 627
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/stocksettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/stocksettings/AccessibilitySettings;

    #getter for: Lcom/android/stocksettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/stocksettings/AccessibilitySettings;->access$400(Lcom/android/stocksettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 628
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 632
    iget-object v1, p0, Lcom/android/stocksettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/stocksettings/AccessibilitySettings;

    #getter for: Lcom/android/stocksettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/stocksettings/AccessibilitySettings;->access$400(Lcom/android/stocksettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 633
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/stocksettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/stocksettings/AccessibilitySettings;

    #getter for: Lcom/android/stocksettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/stocksettings/AccessibilitySettings;->access$400(Lcom/android/stocksettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 634
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 638
    iget-object v1, p0, Lcom/android/stocksettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/stocksettings/AccessibilitySettings;

    #getter for: Lcom/android/stocksettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/stocksettings/AccessibilitySettings;->access$400(Lcom/android/stocksettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 639
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/stocksettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/stocksettings/AccessibilitySettings;

    #getter for: Lcom/android/stocksettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/stocksettings/AccessibilitySettings;->access$400(Lcom/android/stocksettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 640
    return-void
.end method
