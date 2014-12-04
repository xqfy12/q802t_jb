.class Lcom/android/stocksettings/DreamSettings$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/DreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/DreamSettings;


# direct methods
.method private constructor <init>(Lcom/android/stocksettings/DreamSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/stocksettings/DreamSettings$PackageReceiver;->this$0:Lcom/android/stocksettings/DreamSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stocksettings/DreamSettings;Lcom/android/stocksettings/DreamSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/android/stocksettings/DreamSettings$PackageReceiver;-><init>(Lcom/android/stocksettings/DreamSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 371
    const-string v0, "PackageReceiver.onReceive"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    #calls: Lcom/android/stocksettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/stocksettings/DreamSettings;->access$400(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    iget-object v0, p0, Lcom/android/stocksettings/DreamSettings$PackageReceiver;->this$0:Lcom/android/stocksettings/DreamSettings;

    #calls: Lcom/android/stocksettings/DreamSettings;->refreshFromBackend()V
    invoke-static {v0}, Lcom/android/stocksettings/DreamSettings;->access$300(Lcom/android/stocksettings/DreamSettings;)V

    .line 373
    return-void
.end method
