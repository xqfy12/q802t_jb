.class Lcom/android/stocksettings/DataUsageSummary$AirPlaneModeChangeIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirPlaneModeChangeIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/DataUsageSummary;


# direct methods
.method private constructor <init>(Lcom/android/stocksettings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/stocksettings/DataUsageSummary$AirPlaneModeChangeIntentReceiver;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stocksettings/DataUsageSummary;Lcom/android/stocksettings/DataUsageSummary$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 630
    invoke-direct {p0, p1}, Lcom/android/stocksettings/DataUsageSummary$AirPlaneModeChangeIntentReceiver;-><init>(Lcom/android/stocksettings/DataUsageSummary;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 633
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, actionStr:Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary$AirPlaneModeChangeIntentReceiver;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/stocksettings/DataUsageSummary;->access$900(Lcom/android/stocksettings/DataUsageSummary;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/DataUsageSummary$AirPlaneModeChangeIntentReceiver;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/stocksettings/DataUsageSummary;->access$800(Lcom/android/stocksettings/DataUsageSummary;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 637
    :cond_0
    return-void
.end method
