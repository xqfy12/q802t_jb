.class Lcom/android/stocksettings/DisplaySettings$CABLServiceConnection;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CABLServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/DisplaySettings;


# direct methods
.method private constructor <init>(Lcom/android/stocksettings/DisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/stocksettings/DisplaySettings$CABLServiceConnection;->this$0:Lcom/android/stocksettings/DisplaySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stocksettings/DisplaySettings;Lcom/android/stocksettings/DisplaySettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/android/stocksettings/DisplaySettings$CABLServiceConnection;-><init>(Lcom/android/stocksettings/DisplaySettings;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 506
    invoke-static {p2}, Lcom/android/cabl/ICABLService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/cabl/ICABLService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/stocksettings/DisplaySettings;->access$402(Lcom/android/cabl/ICABLService;)Lcom/android/cabl/ICABLService;

    .line 507
    const-string v0, "DisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected, service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/stocksettings/DisplaySettings;->access$400()Lcom/android/cabl/ICABLService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 512
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/stocksettings/DisplaySettings;->access$402(Lcom/android/cabl/ICABLService;)Lcom/android/cabl/ICABLService;

    .line 513
    return-void
.end method
