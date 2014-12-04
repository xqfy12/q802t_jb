.class Lcom/android/stocksettings/widget/ChartDataUsageView$1;
.super Landroid/os/Handler;
.source "ChartDataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    .line 96
    iput-object p1, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$1;->this$0:Lcom/android/stocksettings/widget/ChartDataUsageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 99
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/stocksettings/widget/ChartSweepView;

    .line 100
    .local v0, sweep:Lcom/android/stocksettings/widget/ChartSweepView;
    iget-object v1, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$1;->this$0:Lcom/android/stocksettings/widget/ChartDataUsageView;

    #calls: Lcom/android/stocksettings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/stocksettings/widget/ChartSweepView;)V
    invoke-static {v1, v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->access$000(Lcom/android/stocksettings/widget/ChartDataUsageView;Lcom/android/stocksettings/widget/ChartSweepView;)V

    .line 101
    iget-object v1, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$1;->this$0:Lcom/android/stocksettings/widget/ChartDataUsageView;

    #calls: Lcom/android/stocksettings/widget/ChartDataUsageView;->updateEstimateVisible()V
    invoke-static {v1}, Lcom/android/stocksettings/widget/ChartDataUsageView;->access$100(Lcom/android/stocksettings/widget/ChartDataUsageView;)V

    .line 104
    iget-object v1, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$1;->this$0:Lcom/android/stocksettings/widget/ChartDataUsageView;

    const/4 v2, 0x1

    #calls: Lcom/android/stocksettings/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/android/stocksettings/widget/ChartSweepView;Z)V
    invoke-static {v1, v0, v2}, Lcom/android/stocksettings/widget/ChartDataUsageView;->access$200(Lcom/android/stocksettings/widget/ChartDataUsageView;Lcom/android/stocksettings/widget/ChartSweepView;Z)V

    .line 105
    return-void
.end method
