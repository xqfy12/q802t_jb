.class Lcom/android/stocksettings/widget/ChartDataUsageView$3;
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
    .line 329
    iput-object p1, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/stocksettings/widget/ChartDataUsageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/android/stocksettings/widget/ChartSweepView;Z)V
    .locals 2
    .parameter "sweep"
    .parameter "sweepDone"

    .prologue
    .line 332
    if-eqz p2, :cond_2

    .line 333
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/stocksettings/widget/ChartDataUsageView;

    #calls: Lcom/android/stocksettings/widget/ChartDataUsageView;->clearUpdateAxisDelayed(Lcom/android/stocksettings/widget/ChartSweepView;)V
    invoke-static {v0, p1}, Lcom/android/stocksettings/widget/ChartDataUsageView;->access$500(Lcom/android/stocksettings/widget/ChartDataUsageView;Lcom/android/stocksettings/widget/ChartSweepView;)V

    .line 334
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/stocksettings/widget/ChartDataUsageView;

    #calls: Lcom/android/stocksettings/widget/ChartDataUsageView;->updateEstimateVisible()V
    invoke-static {v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->access$100(Lcom/android/stocksettings/widget/ChartDataUsageView;)V

    .line 336
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/stocksettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stocksettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->access$600(Lcom/android/stocksettings/widget/ChartDataUsageView;)Lcom/android/stocksettings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/stocksettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/stocksettings/widget/ChartDataUsageView;->mListener:Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->access$400(Lcom/android/stocksettings/widget/ChartDataUsageView;)Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/stocksettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/stocksettings/widget/ChartDataUsageView;->mListener:Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->access$400(Lcom/android/stocksettings/widget/ChartDataUsageView;)Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;->onWarningChanged()V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/stocksettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stocksettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->access$700(Lcom/android/stocksettings/widget/ChartDataUsageView;)Lcom/android/stocksettings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/stocksettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/stocksettings/widget/ChartDataUsageView;->mListener:Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->access$400(Lcom/android/stocksettings/widget/ChartDataUsageView;)Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/stocksettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/stocksettings/widget/ChartDataUsageView;->mListener:Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->access$400(Lcom/android/stocksettings/widget/ChartDataUsageView;)Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;->onLimitChanged()V

    goto :goto_0

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/stocksettings/widget/ChartDataUsageView;

    const/4 v1, 0x0

    #calls: Lcom/android/stocksettings/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/android/stocksettings/widget/ChartSweepView;Z)V
    invoke-static {v0, p1, v1}, Lcom/android/stocksettings/widget/ChartDataUsageView;->access$200(Lcom/android/stocksettings/widget/ChartDataUsageView;Lcom/android/stocksettings/widget/ChartSweepView;Z)V

    goto :goto_0
.end method

.method public requestEdit(Lcom/android/stocksettings/widget/ChartSweepView;)V
    .locals 1
    .parameter "sweep"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/stocksettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stocksettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->access$600(Lcom/android/stocksettings/widget/ChartDataUsageView;)Lcom/android/stocksettings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/stocksettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/stocksettings/widget/ChartDataUsageView;->mListener:Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->access$400(Lcom/android/stocksettings/widget/ChartDataUsageView;)Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/stocksettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/stocksettings/widget/ChartDataUsageView;->mListener:Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->access$400(Lcom/android/stocksettings/widget/ChartDataUsageView;)Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;->requestWarningEdit()V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/stocksettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stocksettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->access$700(Lcom/android/stocksettings/widget/ChartDataUsageView;)Lcom/android/stocksettings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/stocksettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/stocksettings/widget/ChartDataUsageView;->mListener:Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->access$400(Lcom/android/stocksettings/widget/ChartDataUsageView;)Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/stocksettings/widget/ChartDataUsageView;

    #getter for: Lcom/android/stocksettings/widget/ChartDataUsageView;->mListener:Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->access$400(Lcom/android/stocksettings/widget/ChartDataUsageView;)Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;->requestLimitEdit()V

    goto :goto_0
.end method
