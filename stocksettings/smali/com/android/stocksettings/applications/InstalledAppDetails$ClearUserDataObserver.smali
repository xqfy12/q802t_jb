.class Lcom/android/stocksettings/applications/InstalledAppDetails$ClearUserDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearUserDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails$ClearUserDataObserver;->this$0:Lcom/android/stocksettings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 5
    .parameter "packageName"
    .parameter "succeeded"

    .prologue
    const/4 v2, 0x1

    .line 217
    iget-object v3, p0, Lcom/android/stocksettings/applications/InstalledAppDetails$ClearUserDataObserver;->this$0:Lcom/android/stocksettings/applications/InstalledAppDetails;

    #getter for: Lcom/android/stocksettings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/stocksettings/applications/InstalledAppDetails;->access$400(Lcom/android/stocksettings/applications/InstalledAppDetails;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 218
    .local v1, msg:Landroid/os/Message;
    if-eqz p2, :cond_1

    :goto_0
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 219
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails$ClearUserDataObserver;->this$0:Lcom/android/stocksettings/applications/InstalledAppDetails;

    #getter for: Lcom/android/stocksettings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/stocksettings/applications/InstalledAppDetails;->access$400(Lcom/android/stocksettings/applications/InstalledAppDetails;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 221
    const-string v2, "zte.com.cn.alarmclock"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ALARM_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, alarmChanged:Landroid/content/Intent;
    const-string v2, "alarmSet"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 224
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails$ClearUserDataObserver;->this$0:Lcom/android/stocksettings/applications/InstalledAppDetails;

    invoke-virtual {v2}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 227
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails$ClearUserDataObserver;->this$0:Lcom/android/stocksettings/applications/InstalledAppDetails;

    invoke-virtual {v2}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "next_alarm_formatted"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 229
    .end local v0           #alarmChanged:Landroid/content/Intent;
    :cond_0
    return-void

    .line 218
    :cond_1
    const/4 v2, 0x2

    goto :goto_0
.end method
