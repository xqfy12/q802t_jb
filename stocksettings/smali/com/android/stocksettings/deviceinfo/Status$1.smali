.class Lcom/android/stocksettings/deviceinfo/Status$1;
.super Landroid/content/BroadcastReceiver;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/deviceinfo/Status;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/stocksettings/deviceinfo/Status$1;->this$0:Lcom/android/stocksettings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 177
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/Status$1;->this$0:Lcom/android/stocksettings/deviceinfo/Status;

    #getter for: Lcom/android/stocksettings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/stocksettings/deviceinfo/Status;->access$200(Lcom/android/stocksettings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {p2}, Lcom/android/stocksettings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/Status$1;->this$0:Lcom/android/stocksettings/deviceinfo/Status;

    #getter for: Lcom/android/stocksettings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/stocksettings/deviceinfo/Status;->access$300(Lcom/android/stocksettings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/Status$1;->this$0:Lcom/android/stocksettings/deviceinfo/Status;

    invoke-virtual {v2}, Lcom/android/stocksettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/stocksettings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 182
    :cond_0
    return-void
.end method
