.class Lcom/android/stocksettings/wifi/WifiSettings$6;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 339
    iput-object p1, p0, Lcom/android/stocksettings/wifi/WifiSettings$6;->this$0:Lcom/android/stocksettings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 345
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings$6;->this$0:Lcom/android/stocksettings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 346
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 347
    const v1, 0x7f0b024f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 351
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 342
    return-void
.end method
