.class Lcom/android/stocksettings/DataUsageSummary$9;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 1236
    iput-object p1, p0, Lcom/android/stocksettings/DataUsageSummary$9;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 1239
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1240
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/DataUsageSummary$AppItem;

    .line 1243
    .local v0, app:Lcom/android/stocksettings/DataUsageSummary$AppItem;
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary$9;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/stocksettings/net/UidDetailProvider;
    invoke-static {v3}, Lcom/android/stocksettings/DataUsageSummary;->access$2200(Lcom/android/stocksettings/DataUsageSummary;)Lcom/android/stocksettings/net/UidDetailProvider;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 1247
    :cond_0
    :goto_0
    return-void

    .line 1245
    :cond_1
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary$9;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/stocksettings/net/UidDetailProvider;
    invoke-static {v3}, Lcom/android/stocksettings/DataUsageSummary;->access$2200(Lcom/android/stocksettings/DataUsageSummary;)Lcom/android/stocksettings/net/UidDetailProvider;

    move-result-object v3

    iget v4, v0, Lcom/android/stocksettings/DataUsageSummary$AppItem;->key:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/stocksettings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/stocksettings/net/UidDetail;

    move-result-object v2

    .line 1246
    .local v2, detail:Lcom/android/stocksettings/net/UidDetail;
    iget-object v3, p0, Lcom/android/stocksettings/DataUsageSummary$9;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    iget-object v4, v2, Lcom/android/stocksettings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v3, v0, v4}, Lcom/android/stocksettings/DataUsageSummary$AppDetailsFragment;->show(Lcom/android/stocksettings/DataUsageSummary;Lcom/android/stocksettings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
