.class Lcom/android/stocksettings/RadioInfo$4;
.super Ljava/lang/Thread;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/RadioInfo;->updatePingState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/RadioInfo;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$updatePingResults:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 839
    iput-object p1, p0, Lcom/android/stocksettings/RadioInfo$4;->this$0:Lcom/android/stocksettings/RadioInfo;

    iput-object p2, p0, Lcom/android/stocksettings/RadioInfo$4;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/stocksettings/RadioInfo$4;->val$updatePingResults:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo$4;->this$0:Lcom/android/stocksettings/RadioInfo;

    #calls: Lcom/android/stocksettings/RadioInfo;->pingIpAddr()V
    invoke-static {v0}, Lcom/android/stocksettings/RadioInfo;->access$2900(Lcom/android/stocksettings/RadioInfo;)V

    .line 843
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo$4;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo$4;->val$updatePingResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 844
    return-void
.end method
