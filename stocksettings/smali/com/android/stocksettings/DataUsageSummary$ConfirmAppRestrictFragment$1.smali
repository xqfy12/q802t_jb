.class Lcom/android/stocksettings/DataUsageSummary$ConfirmAppRestrictFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/DataUsageSummary$ConfirmAppRestrictFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/DataUsageSummary$ConfirmAppRestrictFragment;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/DataUsageSummary$ConfirmAppRestrictFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2216
    iput-object p1, p0, Lcom/android/stocksettings/DataUsageSummary$ConfirmAppRestrictFragment$1;->this$0:Lcom/android/stocksettings/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2219
    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary$ConfirmAppRestrictFragment$1;->this$0:Lcom/android/stocksettings/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-virtual {v1}, Lcom/android/stocksettings/DataUsageSummary$ConfirmAppRestrictFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/DataUsageSummary;

    .line 2220
    .local v0, target:Lcom/android/stocksettings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2221
    const/4 v1, 0x1

    #calls: Lcom/android/stocksettings/DataUsageSummary;->setAppRestrictBackground(Z)V
    invoke-static {v0, v1}, Lcom/android/stocksettings/DataUsageSummary;->access$2000(Lcom/android/stocksettings/DataUsageSummary;Z)V

    .line 2223
    :cond_0
    return-void
.end method
