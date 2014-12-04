.class Lcom/android/stocksettings/DataUsageSummary$13;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;


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
    .line 1437
    iput-object p1, p0, Lcom/android/stocksettings/DataUsageSummary$13;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInspectRangeChanged()V
    .locals 1

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary$13;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #calls: Lcom/android/stocksettings/DataUsageSummary;->updateDetailData()V
    invoke-static {v0}, Lcom/android/stocksettings/DataUsageSummary;->access$2500(Lcom/android/stocksettings/DataUsageSummary;)V

    .line 1442
    return-void
.end method

.method public onLimitChanged()V
    .locals 3

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary$13;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary$13;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mChart:Lcom/android/stocksettings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/stocksettings/DataUsageSummary;->access$2400(Lcom/android/stocksettings/DataUsageSummary;)Lcom/android/stocksettings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/stocksettings/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v1

    #calls: Lcom/android/stocksettings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/stocksettings/DataUsageSummary;->access$1800(Lcom/android/stocksettings/DataUsageSummary;J)V

    .line 1452
    return-void
.end method

.method public onWarningChanged()V
    .locals 3

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary$13;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary$13;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mChart:Lcom/android/stocksettings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/stocksettings/DataUsageSummary;->access$2400(Lcom/android/stocksettings/DataUsageSummary;)Lcom/android/stocksettings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/stocksettings/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v1

    #calls: Lcom/android/stocksettings/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/stocksettings/DataUsageSummary;->access$3400(Lcom/android/stocksettings/DataUsageSummary;J)V

    .line 1447
    return-void
.end method

.method public requestLimitEdit()V
    .locals 1

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary$13;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/stocksettings/DataUsageSummary$LimitEditorFragment;->show(Lcom/android/stocksettings/DataUsageSummary;)V

    .line 1462
    return-void
.end method

.method public requestWarningEdit()V
    .locals 1

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary$13;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/stocksettings/DataUsageSummary$WarningEditorFragment;->show(Lcom/android/stocksettings/DataUsageSummary;)V

    .line 1457
    return-void
.end method
