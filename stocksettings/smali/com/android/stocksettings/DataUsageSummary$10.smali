.class Lcom/android/stocksettings/DataUsageSummary$10;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 1250
    iput-object p1, p0, Lcom/android/stocksettings/DataUsageSummary$10;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1253
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/DataUsageSummary$CycleItem;

    .line 1254
    .local v0, cycle:Lcom/android/stocksettings/DataUsageSummary$CycleItem;
    instance-of v1, v0, Lcom/android/stocksettings/DataUsageSummary$CycleChangeItem;

    if-eqz v1, :cond_0

    .line 1257
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary$10;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/stocksettings/DataUsageSummary$CycleEditorFragment;->show(Lcom/android/stocksettings/DataUsageSummary;)V

    .line 1260
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary$10;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/android/stocksettings/DataUsageSummary;->access$2300(Lcom/android/stocksettings/DataUsageSummary;)Landroid/widget/Spinner;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1274
    :goto_0
    return-void

    .line 1270
    :cond_0
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary$10;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mChart:Lcom/android/stocksettings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/stocksettings/DataUsageSummary;->access$2400(Lcom/android/stocksettings/DataUsageSummary;)Lcom/android/stocksettings/widget/ChartDataUsageView;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/stocksettings/DataUsageSummary$CycleItem;->start:J

    iget-wide v4, v0, Lcom/android/stocksettings/DataUsageSummary$CycleItem;->end:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/stocksettings/widget/ChartDataUsageView;->setVisibleRange(JJ)V

    .line 1272
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary$10;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #calls: Lcom/android/stocksettings/DataUsageSummary;->updateDetailData()V
    invoke-static {v1}, Lcom/android/stocksettings/DataUsageSummary;->access$2500(Lcom/android/stocksettings/DataUsageSummary;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1279
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
