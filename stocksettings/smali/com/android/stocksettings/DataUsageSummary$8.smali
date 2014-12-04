.class Lcom/android/stocksettings/DataUsageSummary$8;
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
    .line 1226
    iput-object p1, p0, Lcom/android/stocksettings/DataUsageSummary$8;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary$8;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/stocksettings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1233
    :goto_0
    return-void

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary$8;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/stocksettings/DataUsageSummary$8;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/stocksettings/DataUsageSummary;->access$2100(Lcom/android/stocksettings/DataUsageSummary;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
