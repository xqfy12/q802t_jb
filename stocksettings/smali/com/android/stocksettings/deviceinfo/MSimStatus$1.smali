.class Lcom/android/stocksettings/deviceinfo/MSimStatus$1;
.super Landroid/content/BroadcastReceiver;
.source "MSimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/deviceinfo/MSimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/deviceinfo/MSimStatus;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/deviceinfo/MSimStatus;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus$1;->this$0:Lcom/android/stocksettings/deviceinfo/MSimStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 186
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 188
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 189
    .local v2, extras:Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 199
    .end local v2           #extras:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 192
    .restart local v2       #extras:Landroid/os/Bundle;
    :cond_1
    const-string v5, "message"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellBroadcastMessage;

    .line 193
    .local v1, cbMessage:Landroid/telephony/CellBroadcastMessage;
    const-string v5, "subscription"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 194
    .local v4, subscriptionId:I
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getServiceCategory()I

    move-result v5

    const/16 v6, 0x32

    if-ne v5, v6, :cond_0

    .line 195
    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, latestAreaInfo:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus$1;->this$0:Lcom/android/stocksettings/deviceinfo/MSimStatus;

    #calls: Lcom/android/stocksettings/deviceinfo/MSimStatus;->updateAreaInfo(Ljava/lang/String;I)V
    invoke-static {v5, v3, v4}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->access$000(Lcom/android/stocksettings/deviceinfo/MSimStatus;Ljava/lang/String;I)V

    goto :goto_0
.end method
