.class Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment;

.field final synthetic val$limitBytes:J

.field final synthetic val$tabName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1855
    iput-object p1, p0, Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment$1;->this$0:Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment;

    iput-object p2, p0, Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment$1;->val$tabName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment$1;->val$limitBytes:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1858
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment$1;->this$0:Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment;

    invoke-virtual {v1}, Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/DataUsageSummary;

    .line 1859
    .local v0, target:Lcom/android/stocksettings/DataUsageSummary;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment$1;->val$tabName:Ljava/lang/String;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/stocksettings/DataUsageSummary;->access$1400(Lcom/android/stocksettings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1860
    iget-wide v1, p0, Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment$1;->val$limitBytes:J

    #calls: Lcom/android/stocksettings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/stocksettings/DataUsageSummary;->access$1800(Lcom/android/stocksettings/DataUsageSummary;J)V

    .line 1862
    :cond_0
    return-void
.end method
