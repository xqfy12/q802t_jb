.class public Lcom/android/stocksettings/DataUsageSummary$CycleChangeItem;
.super Lcom/android/stocksettings/DataUsageSummary$CycleItem;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleChangeItem"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1523
    const v0, 0x7f0b06b9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/stocksettings/DataUsageSummary$CycleItem;-><init>(Ljava/lang/CharSequence;)V

    .line 1524
    return-void
.end method
