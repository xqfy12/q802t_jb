.class Lcom/android/stocksettings/wfd/WifiDisplaySettings$8;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/stocksettings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 500
    iput-object p1, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings$8;->this$0:Lcom/android/stocksettings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings$8;->this$0:Lcom/android/stocksettings/wfd/WifiDisplaySettings;

    #calls: Lcom/android/stocksettings/wfd/WifiDisplaySettings;->update()V
    invoke-static {v0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->access$1000(Lcom/android/stocksettings/wfd/WifiDisplaySettings;)V

    .line 504
    return-void
.end method
