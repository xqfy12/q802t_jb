.class Lcom/android/stocksettings/DataUsageSummary$11;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/stocksettings/net/ChartData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1350
    iput-object p1, p0, Lcom/android/stocksettings/DataUsageSummary$11;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/stocksettings/net/ChartData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1353
    new-instance v0, Lcom/android/stocksettings/net/ChartDataLoader;

    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary$11;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/stocksettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/DataUsageSummary$11;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/android/stocksettings/DataUsageSummary;->access$2600(Lcom/android/stocksettings/DataUsageSummary;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/stocksettings/net/ChartDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/stocksettings/net/ChartData;)V
    .locals 2
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/stocksettings/net/ChartData;",
            ">;",
            "Lcom/android/stocksettings/net/ChartData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1358
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/stocksettings/net/ChartData;>;"
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary$11;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #setter for: Lcom/android/stocksettings/DataUsageSummary;->mChartData:Lcom/android/stocksettings/net/ChartData;
    invoke-static {v0, p2}, Lcom/android/stocksettings/DataUsageSummary;->access$2702(Lcom/android/stocksettings/DataUsageSummary;Lcom/android/stocksettings/net/ChartData;)Lcom/android/stocksettings/net/ChartData;

    .line 1359
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary$11;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mChart:Lcom/android/stocksettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/stocksettings/DataUsageSummary;->access$2400(Lcom/android/stocksettings/DataUsageSummary;)Lcom/android/stocksettings/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary$11;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mChartData:Lcom/android/stocksettings/net/ChartData;
    invoke-static {v1}, Lcom/android/stocksettings/DataUsageSummary;->access$2700(Lcom/android/stocksettings/DataUsageSummary;)Lcom/android/stocksettings/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/stocksettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1360
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary$11;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mChart:Lcom/android/stocksettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/stocksettings/DataUsageSummary;->access$2400(Lcom/android/stocksettings/DataUsageSummary;)Lcom/android/stocksettings/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary$11;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mChartData:Lcom/android/stocksettings/net/ChartData;
    invoke-static {v1}, Lcom/android/stocksettings/DataUsageSummary;->access$2700(Lcom/android/stocksettings/DataUsageSummary;)Lcom/android/stocksettings/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/stocksettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1363
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary$11;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    const/4 v1, 0x1

    #calls: Lcom/android/stocksettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v0, v1}, Lcom/android/stocksettings/DataUsageSummary;->access$1600(Lcom/android/stocksettings/DataUsageSummary;Z)V

    .line 1364
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary$11;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #calls: Lcom/android/stocksettings/DataUsageSummary;->updateAppDetail()V
    invoke-static {v0}, Lcom/android/stocksettings/DataUsageSummary;->access$2800(Lcom/android/stocksettings/DataUsageSummary;)V

    .line 1367
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary$11;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mChartData:Lcom/android/stocksettings/net/ChartData;
    invoke-static {v0}, Lcom/android/stocksettings/DataUsageSummary;->access$2700(Lcom/android/stocksettings/DataUsageSummary;)Lcom/android/stocksettings/net/ChartData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/stocksettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary$11;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/stocksettings/DataUsageSummary;->access$2900(Lcom/android/stocksettings/DataUsageSummary;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1370
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1350
    check-cast p2, Lcom/android/stocksettings/net/ChartData;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/stocksettings/DataUsageSummary$11;->onLoadFinished(Landroid/content/Loader;Lcom/android/stocksettings/net/ChartData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/stocksettings/net/ChartData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/stocksettings/net/ChartData;>;"
    const/4 v1, 0x0

    .line 1374
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary$11;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #setter for: Lcom/android/stocksettings/DataUsageSummary;->mChartData:Lcom/android/stocksettings/net/ChartData;
    invoke-static {v0, v1}, Lcom/android/stocksettings/DataUsageSummary;->access$2702(Lcom/android/stocksettings/DataUsageSummary;Lcom/android/stocksettings/net/ChartData;)Lcom/android/stocksettings/net/ChartData;

    .line 1375
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary$11;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mChart:Lcom/android/stocksettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/stocksettings/DataUsageSummary;->access$2400(Lcom/android/stocksettings/DataUsageSummary;)Lcom/android/stocksettings/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1376
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary$11;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mChart:Lcom/android/stocksettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/stocksettings/DataUsageSummary;->access$2400(Lcom/android/stocksettings/DataUsageSummary;)Lcom/android/stocksettings/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1377
    return-void
.end method
