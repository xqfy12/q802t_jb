.class Lcom/android/stocksettings/DisplaySettings$5;
.super Ljava/lang/Thread;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/DisplaySettings;->stopCABL()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/DisplaySettings;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/DisplaySettings;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/stocksettings/DisplaySettings$5;->this$0:Lcom/android/stocksettings/DisplaySettings;

    iput-object p2, p0, Lcom/android/stocksettings/DisplaySettings$5;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 487
    :try_start_0
    const-string v3, "DisplaySettings"

    const-string v4, "stopCABL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-static {}, Lcom/android/stocksettings/DisplaySettings;->access$400()Lcom/android/cabl/ICABLService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/cabl/ICABLService;->control(I)Z

    move-result v1

    .line 490
    .local v1, result:Z
    iget-object v3, p0, Lcom/android/stocksettings/DisplaySettings$5;->val$resolver:Landroid/content/ContentResolver;

    const-string v4, "cabl_enabled"

    if-eqz v1, :cond_0

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    .end local v1           #result:Z
    :goto_1
    return-void

    .line 490
    .restart local v1       #result:Z
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 493
    .end local v1           #result:Z
    :catch_0
    move-exception v0

    .line 494
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DisplaySettings"

    const-string v3, "stopCABL, exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
