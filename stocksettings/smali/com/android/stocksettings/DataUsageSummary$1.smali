.class Lcom/android/stocksettings/DataUsageSummary$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/stocksettings/DataUsageSummary$1;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 283
    iget-object v6, p0, Lcom/android/stocksettings/DataUsageSummary$1;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    invoke-virtual {v6}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/stocksettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    .line 284
    .local v2, mMobileRadioStateNew:Z
    iget-object v6, p0, Lcom/android/stocksettings/DataUsageSummary$1;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #calls: Lcom/android/stocksettings/DataUsageSummary;->isMobilePolicySplit()Z
    invoke-static {v6}, Lcom/android/stocksettings/DataUsageSummary;->access$000(Lcom/android/stocksettings/DataUsageSummary;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/stocksettings/DataUsageSummary$1;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    invoke-virtual {v6}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/stocksettings/DataUsageSummary;->hasReadyMobile4gRadio(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v1, v4

    .line 286
    .local v1, mMobile4gRadioStateNew:Z
    :goto_0
    iget-object v6, p0, Lcom/android/stocksettings/DataUsageSummary$1;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mShowWifi:Z
    invoke-static {v6}, Lcom/android/stocksettings/DataUsageSummary;->access$100(Lcom/android/stocksettings/DataUsageSummary;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/stocksettings/DataUsageSummary$1;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    invoke-virtual {v6}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/stocksettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v4

    .line 287
    .local v3, mWifiRadioStateNew:Z
    :goto_1
    iget-object v6, p0, Lcom/android/stocksettings/DataUsageSummary$1;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mShowEthernet:Z
    invoke-static {v6}, Lcom/android/stocksettings/DataUsageSummary;->access$200(Lcom/android/stocksettings/DataUsageSummary;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/stocksettings/DataUsageSummary$1;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    iget-object v7, p0, Lcom/android/stocksettings/DataUsageSummary$1;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    invoke-virtual {v7}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/stocksettings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v4

    .line 291
    .local v0, mEthernetStateNew:Z
    :goto_2
    iget-object v4, p0, Lcom/android/stocksettings/DataUsageSummary$1;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mMobileRadioStateOld:Z
    invoke-static {v4}, Lcom/android/stocksettings/DataUsageSummary;->access$300(Lcom/android/stocksettings/DataUsageSummary;)Z

    move-result v4

    if-ne v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/stocksettings/DataUsageSummary$1;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mMobile4gRadioStateOld:Z
    invoke-static {v4}, Lcom/android/stocksettings/DataUsageSummary;->access$400(Lcom/android/stocksettings/DataUsageSummary;)Z

    move-result v4

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/stocksettings/DataUsageSummary$1;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mWifiRadioStateOld:Z
    invoke-static {v4}, Lcom/android/stocksettings/DataUsageSummary;->access$500(Lcom/android/stocksettings/DataUsageSummary;)Z

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/stocksettings/DataUsageSummary$1;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mEthernetStateOld:Z
    invoke-static {v4}, Lcom/android/stocksettings/DataUsageSummary;->access$600(Lcom/android/stocksettings/DataUsageSummary;)Z

    move-result v4

    if-eq v0, v4, :cond_4

    .line 295
    :cond_0
    iget-object v4, p0, Lcom/android/stocksettings/DataUsageSummary$1;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #calls: Lcom/android/stocksettings/DataUsageSummary;->updateBody()V
    invoke-static {v4}, Lcom/android/stocksettings/DataUsageSummary;->access$700(Lcom/android/stocksettings/DataUsageSummary;)V

    .line 296
    iget-object v4, p0, Lcom/android/stocksettings/DataUsageSummary$1;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #setter for: Lcom/android/stocksettings/DataUsageSummary;->mMobileRadioStateOld:Z
    invoke-static {v4, v2}, Lcom/android/stocksettings/DataUsageSummary;->access$302(Lcom/android/stocksettings/DataUsageSummary;Z)Z

    .line 297
    iget-object v4, p0, Lcom/android/stocksettings/DataUsageSummary$1;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #setter for: Lcom/android/stocksettings/DataUsageSummary;->mMobile4gRadioStateOld:Z
    invoke-static {v4, v1}, Lcom/android/stocksettings/DataUsageSummary;->access$402(Lcom/android/stocksettings/DataUsageSummary;Z)Z

    .line 298
    iget-object v4, p0, Lcom/android/stocksettings/DataUsageSummary$1;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #setter for: Lcom/android/stocksettings/DataUsageSummary;->mWifiRadioStateOld:Z
    invoke-static {v4, v3}, Lcom/android/stocksettings/DataUsageSummary;->access$502(Lcom/android/stocksettings/DataUsageSummary;Z)Z

    .line 299
    iget-object v4, p0, Lcom/android/stocksettings/DataUsageSummary$1;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #setter for: Lcom/android/stocksettings/DataUsageSummary;->mEthernetStateOld:Z
    invoke-static {v4, v0}, Lcom/android/stocksettings/DataUsageSummary;->access$602(Lcom/android/stocksettings/DataUsageSummary;Z)Z

    .line 303
    :goto_3
    return-void

    .end local v0           #mEthernetStateNew:Z
    .end local v1           #mMobile4gRadioStateNew:Z
    .end local v3           #mWifiRadioStateNew:Z
    :cond_1
    move v1, v5

    .line 284
    goto :goto_0

    .restart local v1       #mMobile4gRadioStateNew:Z
    :cond_2
    move v3, v5

    .line 286
    goto :goto_1

    .restart local v3       #mWifiRadioStateNew:Z
    :cond_3
    move v0, v5

    .line 287
    goto :goto_2

    .line 301
    .restart local v0       #mEthernetStateNew:Z
    :cond_4
    iget-object v4, p0, Lcom/android/stocksettings/DataUsageSummary$1;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/stocksettings/DataUsageSummary;->access$900(Lcom/android/stocksettings/DataUsageSummary;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/stocksettings/DataUsageSummary$1;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/stocksettings/DataUsageSummary;->access$800(Lcom/android/stocksettings/DataUsageSummary;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3
.end method
