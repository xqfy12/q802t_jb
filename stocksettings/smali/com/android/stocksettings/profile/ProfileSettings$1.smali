.class Lcom/android/stocksettings/profile/ProfileSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/profile/ProfileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/profile/ProfileSettings;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/profile/ProfileSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/stocksettings/profile/ProfileSettings$1;->this$0:Lcom/android/stocksettings/profile/ProfileSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, action:Ljava/lang/String;
    const-string v1, "ProfileSettings"

    const-string v2, "onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {}, Lcom/android/stocksettings/profile/ProfileSettings;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ProfileSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profile mRefreshUiReceiver onReceive() action =="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    const-string v1, "com.android.stocksettings.profile.REFRESH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    invoke-static {}, Lcom/android/stocksettings/profile/ProfileSettings;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ProfileSettings"

    const-string v2, "Profile mRefreshUiReceiver onReceive() action.equals(com.android.stocksettings.profile.REFRESH)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/android/stocksettings/profile/ProfileSettings$1;->this$0:Lcom/android/stocksettings/profile/ProfileSettings;

    #calls: Lcom/android/stocksettings/profile/ProfileSettings;->fillList()V
    invoke-static {v1}, Lcom/android/stocksettings/profile/ProfileSettings;->access$100(Lcom/android/stocksettings/profile/ProfileSettings;)V

    .line 72
    :cond_2
    return-void
.end method
