.class Lcom/android/stocksettings/DateTimeSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/DateTimeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/stocksettings/DateTimeSettings$1;->this$0:Lcom/android/stocksettings/DateTimeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 420
    iget-object v1, p0, Lcom/android/stocksettings/DateTimeSettings$1;->this$0:Lcom/android/stocksettings/DateTimeSettings;

    invoke-virtual {v1}, Lcom/android/stocksettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 421
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 422
    iget-object v1, p0, Lcom/android/stocksettings/DateTimeSettings$1;->this$0:Lcom/android/stocksettings/DateTimeSettings;

    invoke-virtual {v1, v0}, Lcom/android/stocksettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 424
    :cond_0
    return-void
.end method