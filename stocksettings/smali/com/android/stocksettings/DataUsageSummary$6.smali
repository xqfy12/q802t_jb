.class Lcom/android/stocksettings/DataUsageSummary$6;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1196
    iput-object p1, p0, Lcom/android/stocksettings/DataUsageSummary$6;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1199
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary$6;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/stocksettings/DataUsageSummary;->access$1700(Lcom/android/stocksettings/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1200
    .local v0, disableAtLimit:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1203
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary$6;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment;->show(Lcom/android/stocksettings/DataUsageSummary;)V

    .line 1207
    :goto_1
    return-void

    .line 1199
    .end local v0           #disableAtLimit:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1205
    .restart local v0       #disableAtLimit:Z
    :cond_1
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary$6;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    const-wide/16 v2, -0x1

    #calls: Lcom/android/stocksettings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v1, v2, v3}, Lcom/android/stocksettings/DataUsageSummary;->access$1800(Lcom/android/stocksettings/DataUsageSummary;J)V

    goto :goto_1
.end method
