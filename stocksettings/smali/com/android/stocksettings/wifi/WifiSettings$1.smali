.class Lcom/android/stocksettings/wifi/WifiSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/wifi/WifiSettings;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/stocksettings/wifi/WifiSettings$1;->this$0:Lcom/android/stocksettings/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings$1;->this$0:Lcom/android/stocksettings/wifi/WifiSettings;

    #calls: Lcom/android/stocksettings/wifi/WifiSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lcom/android/stocksettings/wifi/WifiSettings;->access$000(Lcom/android/stocksettings/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V

    .line 223
    return-void
.end method
