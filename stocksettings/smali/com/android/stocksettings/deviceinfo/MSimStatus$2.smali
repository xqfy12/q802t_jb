.class Lcom/android/stocksettings/deviceinfo/MSimStatus$2;
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
    .line 272
    iput-object p1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus$2;->this$0:Lcom/android/stocksettings/deviceinfo/MSimStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 276
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus$2;->this$0:Lcom/android/stocksettings/deviceinfo/MSimStatus;

    #getter for: Lcom/android/stocksettings/deviceinfo/MSimStatus;->mBatteryLevel:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->access$100(Lcom/android/stocksettings/deviceinfo/MSimStatus;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {p2}, Lcom/android/stocksettings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus$2;->this$0:Lcom/android/stocksettings/deviceinfo/MSimStatus;

    #getter for: Lcom/android/stocksettings/deviceinfo/MSimStatus;->mBatteryStatus:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->access$200(Lcom/android/stocksettings/deviceinfo/MSimStatus;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus$2;->this$0:Lcom/android/stocksettings/deviceinfo/MSimStatus;

    invoke-virtual {v2}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/stocksettings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 281
    :cond_0
    return-void
.end method
