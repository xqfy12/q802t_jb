.class Lcom/android/stocksettings/NotificationStation$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/NotificationStation;


# direct methods
.method private constructor <init>(Lcom/android/stocksettings/NotificationStation;)V
    .locals 0
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/stocksettings/NotificationStation$PackageReceiver;->this$0:Lcom/android/stocksettings/NotificationStation;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stocksettings/NotificationStation;Lcom/android/stocksettings/NotificationStation$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/android/stocksettings/NotificationStation$PackageReceiver;-><init>(Lcom/android/stocksettings/NotificationStation;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 397
    const-string v0, "PackageReceiver.onReceive"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    #calls: Lcom/android/stocksettings/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/stocksettings/NotificationStation;->access$500(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    return-void
.end method
