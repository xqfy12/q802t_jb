.class Lcom/android/stocksettings/widget/ChartDataUsageView$2;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/stocksettings/widget/ChartSweepView$OnSweepListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/widget/ChartDataUsageView;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$2;->this$0:Lcom/android/stocksettings/widget/ChartDataUsageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/android/stocksettings/widget/ChartSweepView;Z)V
    .locals 1
    .parameter "sweep"
    .parameter "sweepDone"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$2;->this$0:Lcom/android/stocksettings/widget/ChartDataUsageView;

    #calls: Lcom/android/stocksettings/widget/ChartDataUsageView;->updatePrimaryRange()V
    invoke-static {v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->access$300(Lcom/android/stocksettings/widget/ChartDataUsageView;)V

    .line 307
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$2;->this$0:Lcom/android/stocksettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/stocksettings/widget/ChartDataUsageView;->mListener:Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->access$400(Lcom/android/stocksettings/widget/ChartDataUsageView;)Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$2;->this$0:Lcom/android/stocksettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/stocksettings/widget/ChartDataUsageView;->mListener:Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->access$400(Lcom/android/stocksettings/widget/ChartDataUsageView;)Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;->onInspectRangeChanged()V

    .line 310
    :cond_0
    return-void
.end method

.method public requestEdit(Lcom/android/stocksettings/widget/ChartSweepView;)V
    .locals 0
    .parameter "sweep"

    .prologue
    .line 315
    return-void
.end method
