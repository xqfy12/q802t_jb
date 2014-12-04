.class public Lcom/android/stocksettings/widget/ChartDataUsageView;
.super Lcom/android/stocksettings/widget/ChartView;
.source "ChartDataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;,
        Lcom/android/stocksettings/widget/ChartDataUsageView$TimeAxis;,
        Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;
    }
.end annotation


# instance fields
.field private mDetailSeries:Lcom/android/stocksettings/widget/ChartNetworkSeriesView;

.field private mGrid:Lcom/android/stocksettings/widget/ChartGridView;

.field private mHandler:Landroid/os/Handler;

.field private mHistory:Landroid/net/NetworkStatsHistory;

.field private mHorizListener:Lcom/android/stocksettings/widget/ChartSweepView$OnSweepListener;

.field private mListener:Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mSeries:Lcom/android/stocksettings/widget/ChartNetworkSeriesView;

.field private mSweepLeft:Lcom/android/stocksettings/widget/ChartSweepView;

.field private mSweepLimit:Lcom/android/stocksettings/widget/ChartSweepView;

.field private mSweepRight:Lcom/android/stocksettings/widget/ChartSweepView;

.field private mSweepWarning:Lcom/android/stocksettings/widget/ChartSweepView;

.field private mVertListener:Lcom/android/stocksettings/widget/ChartSweepView$OnSweepListener;

.field private mVertMax:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/stocksettings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/stocksettings/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 301
    new-instance v0, Lcom/android/stocksettings/widget/ChartDataUsageView$2;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/widget/ChartDataUsageView$2;-><init>(Lcom/android/stocksettings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mHorizListener:Lcom/android/stocksettings/widget/ChartSweepView$OnSweepListener;

    .line 329
    new-instance v0, Lcom/android/stocksettings/widget/ChartDataUsageView$3;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/widget/ChartDataUsageView$3;-><init>(Lcom/android/stocksettings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mVertListener:Lcom/android/stocksettings/widget/ChartSweepView$OnSweepListener;

    .line 94
    new-instance v0, Lcom/android/stocksettings/widget/ChartDataUsageView$TimeAxis;

    invoke-direct {v0}, Lcom/android/stocksettings/widget/ChartDataUsageView$TimeAxis;-><init>()V

    new-instance v1, Lcom/android/stocksettings/widget/InvertedChartAxis;

    new-instance v2, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;

    invoke-direct {v2}, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/stocksettings/widget/InvertedChartAxis;-><init>(Lcom/android/stocksettings/widget/ChartAxis;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/stocksettings/widget/ChartDataUsageView;->init(Lcom/android/stocksettings/widget/ChartAxis;Lcom/android/stocksettings/widget/ChartAxis;)V

    .line 96
    new-instance v0, Lcom/android/stocksettings/widget/ChartDataUsageView$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/widget/ChartDataUsageView$1;-><init>(Lcom/android/stocksettings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/stocksettings/widget/ChartDataUsageView;Lcom/android/stocksettings/widget/ChartSweepView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/stocksettings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/stocksettings/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/stocksettings/widget/ChartDataUsageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->updateEstimateVisible()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/stocksettings/widget/ChartDataUsageView;Lcom/android/stocksettings/widget/ChartSweepView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/stocksettings/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/android/stocksettings/widget/ChartSweepView;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/stocksettings/widget/ChartDataUsageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->updatePrimaryRange()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/stocksettings/widget/ChartDataUsageView;)Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mListener:Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/stocksettings/widget/ChartDataUsageView;Lcom/android/stocksettings/widget/ChartSweepView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/stocksettings/widget/ChartDataUsageView;->clearUpdateAxisDelayed(Lcom/android/stocksettings/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/stocksettings/widget/ChartDataUsageView;)Lcom/android/stocksettings/widget/ChartSweepView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stocksettings/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/stocksettings/widget/ChartDataUsageView;)Lcom/android/stocksettings/widget/ChartSweepView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stocksettings/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic access$800(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/android/stocksettings/widget/ChartDataUsageView;->setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(J)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/android/stocksettings/widget/ChartDataUsageView;->roundUpToPowerOfTwo(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private clearUpdateAxisDelayed(Lcom/android/stocksettings/widget/ChartSweepView;)V
    .locals 2
    .parameter "sweep"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 327
    return-void
.end method

.method private getHistoryEnd()J
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000

    goto :goto_0
.end method

.method private getHistoryStart()J
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private static roundUpToPowerOfTwo(J)J
    .locals 4
    .parameter "i"

    .prologue
    const-wide/16 v2, 0x1

    .line 682
    sub-long/2addr p0, v2

    .line 685
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 686
    const/4 v0, 0x2

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 687
    const/4 v0, 0x4

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 688
    const/16 v0, 0x8

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 689
    const/16 v0, 0x10

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 690
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 692
    add-long/2addr p0, v2

    .line 694
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .end local p0
    :goto_0
    return-wide p0

    .restart local p0
    :cond_0
    const-wide p0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private sendUpdateAxisDelayed(Lcom/android/stocksettings/widget/ChartSweepView;Z)V
    .locals 4
    .parameter "sweep"
    .parameter "force"

    .prologue
    const/16 v2, 0x64

    .line 319
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 323
    :cond_1
    return-void
.end method

.method private static setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3
    .parameter "builder"
    .parameter "key"
    .parameter "text"
    .parameter "bootstrap"

    .prologue
    .line 669
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 670
    .local v1, start:I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 671
    .local v0, end:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 672
    invoke-static {p0, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    .line 673
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int v0, v1, v2

    .line 674
    const/16 v2, 0x12

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 676
    :cond_0
    invoke-virtual {p0, v1, v0, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 677
    return-void
.end method

.method private updateEstimateVisible()V
    .locals 9

    .prologue
    .line 283
    iget-object v5, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSeries:Lcom/android/stocksettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v5}, Lcom/android/stocksettings/widget/ChartNetworkSeriesView;->getMaxEstimate()J

    move-result-wide v3

    .line 286
    .local v3, maxEstimate:J
    const-wide v1, 0x7fffffffffffffffL

    .line 287
    .local v1, interestLine:J
    iget-object v5, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v5}, Lcom/android/stocksettings/widget/ChartSweepView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 288
    iget-object v5, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v5}, Lcom/android/stocksettings/widget/ChartSweepView;->getValue()J

    move-result-wide v1

    .line 293
    :cond_0
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gez v5, :cond_1

    .line 294
    const-wide v1, 0x7fffffffffffffffL

    .line 297
    :cond_1
    const-wide/16 v5, 0x7

    mul-long/2addr v5, v1

    const-wide/16 v7, 0xa

    div-long/2addr v5, v7

    cmp-long v5, v3, v5

    if-ltz v5, :cond_3

    const/4 v0, 0x1

    .line 298
    .local v0, estimateVisible:Z
    :goto_1
    iget-object v5, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSeries:Lcom/android/stocksettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v5, v0}, Lcom/android/stocksettings/widget/ChartNetworkSeriesView;->setEstimateVisible(Z)V

    .line 299
    return-void

    .line 289
    .end local v0           #estimateVisible:Z
    :cond_2
    iget-object v5, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v5}, Lcom/android/stocksettings/widget/ChartSweepView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 290
    iget-object v5, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v5}, Lcom/android/stocksettings/widget/ChartSweepView;->getValue()J

    move-result-wide v1

    goto :goto_0

    .line 297
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updatePrimaryRange()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 446
    iget-object v4, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v4}, Lcom/android/stocksettings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    .line 447
    .local v0, left:J
    iget-object v4, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v4}, Lcom/android/stocksettings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    .line 450
    .local v2, right:J
    iget-object v4, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/stocksettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4}, Lcom/android/stocksettings/widget/ChartNetworkSeriesView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 451
    iget-object v4, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/stocksettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/stocksettings/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    .line 452
    iget-object v4, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSeries:Lcom/android/stocksettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v5, v6, v5, v6}, Lcom/android/stocksettings/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    .line 456
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v4, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSeries:Lcom/android/stocksettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/stocksettings/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    goto :goto_0
.end method

.method private updateVertAxisBounds(Lcom/android/stocksettings/widget/ChartSweepView;)V
    .locals 23
    .parameter "activeSweep"

    .prologue
    .line 223
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mVertMax:J

    .line 225
    .local v7, max:J
    const-wide/16 v17, 0x0

    .line 226
    .local v17, newMax:J
    if-eqz p1, :cond_0

    .line 227
    invoke-virtual/range {p1 .. p1}, Lcom/android/stocksettings/widget/ChartSweepView;->shouldAdjustAxis()I

    move-result v5

    .line 228
    .local v5, adjustAxis:I
    if-lez v5, :cond_5

    .line 230
    const-wide/16 v19, 0xb

    mul-long v19, v19, v7

    const-wide/16 v21, 0xa

    div-long v17, v19, v21

    .line 240
    .end local v5           #adjustAxis:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stocksettings/widget/ChartSweepView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/stocksettings/widget/ChartSweepView;->getValue()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stocksettings/widget/ChartSweepView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/stocksettings/widget/ChartSweepView;->getValue()J

    move-result-wide v21

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 241
    .local v13, maxSweep:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSeries:Lcom/android/stocksettings/widget/ChartNetworkSeriesView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/stocksettings/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/stocksettings/widget/ChartNetworkSeriesView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/stocksettings/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v21

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 242
    .local v11, maxSeries:J
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v19

    const-wide/16 v21, 0xc

    mul-long v19, v19, v21

    const-wide/16 v21, 0xa

    div-long v15, v19, v21

    .line 243
    .local v15, maxVisible:J
    const-wide/32 v19, 0x3200000

    move-wide v0, v15

    move-wide/from16 v2, v19

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 244
    .local v9, maxDefault:J
    move-wide/from16 v0, v17

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    .line 247
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mVertMax:J

    move-wide/from16 v19, v0

    cmp-long v19, v17, v19

    if-eqz v19, :cond_4

    .line 248
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/stocksettings/widget/ChartDataUsageView;->mVertMax:J

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/widget/ChartView;->mVert:Lcom/android/stocksettings/widget/ChartAxis;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    move-wide/from16 v3, v17

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/stocksettings/widget/ChartAxis;->setBounds(JJ)Z

    move-result v6

    .line 251
    .local v6, changed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stocksettings/widget/ChartSweepView;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    move-wide/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/stocksettings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stocksettings/widget/ChartSweepView;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    move-wide/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/stocksettings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 254
    if-eqz v6, :cond_1

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSeries:Lcom/android/stocksettings/widget/ChartNetworkSeriesView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/stocksettings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/stocksettings/widget/ChartNetworkSeriesView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/stocksettings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 259
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mGrid:Lcom/android/stocksettings/widget/ChartGridView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/stocksettings/widget/ChartGridView;->invalidate()V

    .line 262
    if-eqz p1, :cond_2

    .line 263
    invoke-virtual/range {p1 .. p1}, Lcom/android/stocksettings/widget/ChartSweepView;->updateValueFromPosition()V

    .line 269
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stocksettings/widget/ChartSweepView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_3

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stocksettings/widget/ChartSweepView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/widget/ChartDataUsageView;->layoutSweep(Lcom/android/stocksettings/widget/ChartSweepView;)V

    .line 272
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stocksettings/widget/ChartSweepView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_4

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stocksettings/widget/ChartSweepView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/widget/ChartDataUsageView;->layoutSweep(Lcom/android/stocksettings/widget/ChartSweepView;)V

    .line 276
    .end local v6           #changed:Z
    :cond_4
    return-void

    .line 231
    .end local v9           #maxDefault:J
    .end local v11           #maxSeries:J
    .end local v13           #maxSweep:J
    .end local v15           #maxVisible:J
    .restart local v5       #adjustAxis:I
    :cond_5
    if-gez v5, :cond_6

    .line 233
    const-wide/16 v19, 0x9

    mul-long v19, v19, v7

    const-wide/16 v21, 0xa

    div-long v17, v19, v21

    goto/16 :goto_0

    .line 235
    :cond_6
    move-wide/from16 v17, v7

    goto/16 :goto_0
.end method


# virtual methods
.method public bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 3
    .parameter "stats"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/stocksettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/stocksettings/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 176
    iget-object v1, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/stocksettings/widget/ChartNetworkSeriesView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/stocksettings/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/stocksettings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/stocksettings/widget/ChartNetworkSeriesView;->setEndTime(J)V

    .line 180
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/stocksettings/widget/ChartSweepView;)V

    .line 181
    invoke-direct {p0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 182
    invoke-direct {p0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 183
    invoke-virtual {p0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->requestLayout()V

    .line 184
    return-void

    .line 176
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bindNetworkPolicy(Landroid/net/NetworkPolicy;)V
    .locals 7
    .parameter "policy"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const-wide/16 v3, -0x1

    .line 187
    if-nez p1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/stocksettings/widget/ChartSweepView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v0, v3, v4}, Lcom/android/stocksettings/widget/ChartSweepView;->setValue(J)V

    .line 190
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/stocksettings/widget/ChartSweepView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v0, v3, v4}, Lcom/android/stocksettings/widget/ChartSweepView;->setValue(J)V

    .line 216
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v0, v5}, Lcom/android/stocksettings/widget/ChartSweepView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stocksettings/widget/ChartSweepView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/widget/ChartSweepView;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stocksettings/widget/ChartSweepView;

    iget-wide v1, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v1, v2}, Lcom/android/stocksettings/widget/ChartSweepView;->setValue(J)V

    .line 205
    :goto_1
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v0, v5}, Lcom/android/stocksettings/widget/ChartSweepView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stocksettings/widget/ChartSweepView;

    iget-wide v1, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v1, v2}, Lcom/android/stocksettings/widget/ChartSweepView;->setValue(J)V

    .line 213
    :goto_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/stocksettings/widget/ChartSweepView;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->requestLayout()V

    .line 215
    invoke-virtual {p0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->invalidate()V

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v0, v5}, Lcom/android/stocksettings/widget/ChartSweepView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v0, v5}, Lcom/android/stocksettings/widget/ChartSweepView;->setEnabled(Z)V

    .line 202
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v0, v3, v4}, Lcom/android/stocksettings/widget/ChartSweepView;->setValue(J)V

    goto :goto_1

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/stocksettings/widget/ChartSweepView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v0, v3, v4}, Lcom/android/stocksettings/widget/ChartSweepView;->setValue(J)V

    goto :goto_2
.end method

.method public bindNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 1
    .parameter "stats"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSeries:Lcom/android/stocksettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/stocksettings/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 167
    iput-object p1, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/stocksettings/widget/ChartSweepView;)V

    .line 169
    invoke-direct {p0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 170
    invoke-direct {p0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 171
    invoke-virtual {p0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->requestLayout()V

    .line 172
    return-void
.end method

.method public getInspectEnd()J
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/stocksettings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInspectStart()J
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/stocksettings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLimitBytes()J
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/stocksettings/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWarningBytes()J
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/stocksettings/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 111
    invoke-super {p0}, Lcom/android/stocksettings/widget/ChartView;->onFinishInflate()V

    .line 113
    const v0, 0x7f080064

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/widget/ChartGridView;

    iput-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mGrid:Lcom/android/stocksettings/widget/ChartGridView;

    .line 114
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSeries:Lcom/android/stocksettings/widget/ChartNetworkSeriesView;

    .line 115
    const v0, 0x7f080066

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/stocksettings/widget/ChartNetworkSeriesView;

    .line 116
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/stocksettings/widget/ChartNetworkSeriesView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 118
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/stocksettings/widget/ChartSweepView;

    .line 119
    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/stocksettings/widget/ChartSweepView;

    .line 120
    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stocksettings/widget/ChartSweepView;

    .line 121
    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stocksettings/widget/ChartSweepView;

    .line 124
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/stocksettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v0, v2, v1}, Lcom/android/stocksettings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/stocksettings/widget/ChartSweepView;Lcom/android/stocksettings/widget/ChartSweepView;)V

    .line 125
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/stocksettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/stocksettings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/stocksettings/widget/ChartSweepView;Lcom/android/stocksettings/widget/ChartSweepView;)V

    .line 126
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stocksettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v0, v2, v1}, Lcom/android/stocksettings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/stocksettings/widget/ChartSweepView;Lcom/android/stocksettings/widget/ChartSweepView;)V

    .line 127
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stocksettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/stocksettings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/stocksettings/widget/ChartSweepView;Lcom/android/stocksettings/widget/ChartSweepView;)V

    .line 130
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/stocksettings/widget/ChartSweepView;

    new-array v1, v4, [Lcom/android/stocksettings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/stocksettings/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/widget/ChartSweepView;->setNeighbors([Lcom/android/stocksettings/widget/ChartSweepView;)V

    .line 131
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/stocksettings/widget/ChartSweepView;

    new-array v1, v4, [Lcom/android/stocksettings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/stocksettings/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/widget/ChartSweepView;->setNeighbors([Lcom/android/stocksettings/widget/ChartSweepView;)V

    .line 132
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stocksettings/widget/ChartSweepView;

    new-array v1, v6, [Lcom/android/stocksettings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stocksettings/widget/ChartSweepView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/stocksettings/widget/ChartSweepView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/stocksettings/widget/ChartSweepView;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/widget/ChartSweepView;->setNeighbors([Lcom/android/stocksettings/widget/ChartSweepView;)V

    .line 133
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stocksettings/widget/ChartSweepView;

    new-array v1, v6, [Lcom/android/stocksettings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stocksettings/widget/ChartSweepView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/stocksettings/widget/ChartSweepView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/stocksettings/widget/ChartSweepView;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/widget/ChartSweepView;->setNeighbors([Lcom/android/stocksettings/widget/ChartSweepView;)V

    .line 135
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/stocksettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mHorizListener:Lcom/android/stocksettings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/stocksettings/widget/ChartSweepView$OnSweepListener;)V

    .line 136
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/stocksettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mHorizListener:Lcom/android/stocksettings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/stocksettings/widget/ChartSweepView$OnSweepListener;)V

    .line 137
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stocksettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mVertListener:Lcom/android/stocksettings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/stocksettings/widget/ChartSweepView$OnSweepListener;)V

    .line 138
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stocksettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mVertListener:Lcom/android/stocksettings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/stocksettings/widget/ChartSweepView$OnSweepListener;)V

    .line 140
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stocksettings/widget/ChartSweepView;

    const-wide/32 v1, 0x100000

    invoke-virtual {v0, v1, v2}, Lcom/android/stocksettings/widget/ChartSweepView;->setDragInterval(J)V

    .line 141
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stocksettings/widget/ChartSweepView;

    const-wide/32 v1, 0x100000

    invoke-virtual {v0, v1, v2}, Lcom/android/stocksettings/widget/ChartSweepView;->setDragInterval(J)V

    .line 144
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/stocksettings/widget/ChartSweepView;->setClickable(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/stocksettings/widget/ChartSweepView;->setFocusable(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/stocksettings/widget/ChartSweepView;->setClickable(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/stocksettings/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/stocksettings/widget/ChartSweepView;->setFocusable(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mGrid:Lcom/android/stocksettings/widget/ChartGridView;

    iget-object v1, p0, Lcom/android/stocksettings/widget/ChartView;->mHoriz:Lcom/android/stocksettings/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/stocksettings/widget/ChartView;->mVert:Lcom/android/stocksettings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/stocksettings/widget/ChartGridView;->init(Lcom/android/stocksettings/widget/ChartAxis;Lcom/android/stocksettings/widget/ChartAxis;)V

    .line 151
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSeries:Lcom/android/stocksettings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/stocksettings/widget/ChartView;->mHoriz:Lcom/android/stocksettings/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/stocksettings/widget/ChartView;->mVert:Lcom/android/stocksettings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/stocksettings/widget/ChartNetworkSeriesView;->init(Lcom/android/stocksettings/widget/ChartAxis;Lcom/android/stocksettings/widget/ChartAxis;)V

    .line 152
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/stocksettings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/stocksettings/widget/ChartView;->mHoriz:Lcom/android/stocksettings/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/stocksettings/widget/ChartView;->mVert:Lcom/android/stocksettings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/stocksettings/widget/ChartNetworkSeriesView;->init(Lcom/android/stocksettings/widget/ChartAxis;Lcom/android/stocksettings/widget/ChartAxis;)V

    .line 153
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/stocksettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/stocksettings/widget/ChartView;->mHoriz:Lcom/android/stocksettings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/widget/ChartSweepView;->init(Lcom/android/stocksettings/widget/ChartAxis;)V

    .line 154
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/stocksettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/stocksettings/widget/ChartView;->mHoriz:Lcom/android/stocksettings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/widget/ChartSweepView;->init(Lcom/android/stocksettings/widget/ChartAxis;)V

    .line 155
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stocksettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/stocksettings/widget/ChartView;->mVert:Lcom/android/stocksettings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/widget/ChartSweepView;->init(Lcom/android/stocksettings/widget/ChartAxis;)V

    .line 156
    iget-object v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stocksettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/stocksettings/widget/ChartView;->mVert:Lcom/android/stocksettings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/widget/ChartSweepView;->init(Lcom/android/stocksettings/widget/ChartAxis;)V

    .line 158
    invoke-virtual {p0, v3}, Lcom/android/stocksettings/widget/ChartDataUsageView;->setActivated(Z)V

    .line 159
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 359
    invoke-virtual {p0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    :goto_0
    return v0

    .line 360
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 362
    goto :goto_0

    .line 365
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/stocksettings/widget/ChartDataUsageView;->setActivated(Z)V

    move v0, v1

    .line 366
    goto :goto_0

    .line 360
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setListener(Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mListener:Lcom/android/stocksettings/widget/ChartDataUsageView$DataUsageChartListener;

    .line 163
    return-void
.end method

.method public setVisibleRange(JJ)V
    .locals 24
    .parameter "visibleStart"
    .parameter "visibleEnd"

    .prologue
    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/widget/ChartView;->mHoriz:Lcom/android/stocksettings/widget/ChartAxis;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/stocksettings/widget/ChartAxis;->setBounds(JJ)Z

    move-result v5

    .line 405
    .local v5, changed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mGrid:Lcom/android/stocksettings/widget/ChartGridView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/stocksettings/widget/ChartGridView;->setBounds(JJ)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSeries:Lcom/android/stocksettings/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/stocksettings/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/stocksettings/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/stocksettings/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    .line 409
    invoke-direct/range {p0 .. p0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->getHistoryStart()J

    move-result-wide v10

    .line 410
    .local v10, historyStart:J
    invoke-direct/range {p0 .. p0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->getHistoryEnd()J

    move-result-wide v8

    .line 412
    .local v8, historyEnd:J
    const-wide v20, 0x7fffffffffffffffL

    cmp-long v20, v10, v20

    if-nez v20, :cond_1

    move-wide/from16 v18, p1

    .line 414
    .local v18, validStart:J
    :goto_0
    const-wide/high16 v20, -0x8000

    cmp-long v20, v8, v20

    if-nez v20, :cond_2

    move-wide/from16 v16, p3

    .line 422
    .local v16, validEnd:J
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/stocksettings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/stocksettings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/stocksettings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/stocksettings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 427
    add-long v20, p3, p1

    const-wide/16 v22, 0x2

    div-long v6, v20, v22

    .line 428
    .local v6, halfRange:J
    move-wide/from16 v12, v16

    .line 429
    .local v12, sweepMax:J
    const-wide/32 v20, 0x240c8400

    sub-long v20, v12, v20

    move-wide/from16 v0, p1

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 431
    .local v14, sweepMin:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/stocksettings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Lcom/android/stocksettings/widget/ChartSweepView;->setValue(J)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSweepRight:Lcom/android/stocksettings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Lcom/android/stocksettings/widget/ChartSweepView;->setValue(J)V

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->requestLayout()V

    .line 435
    if-eqz v5, :cond_0

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mSeries:Lcom/android/stocksettings/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/stocksettings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/stocksettings/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/stocksettings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 440
    :cond_0
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/stocksettings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/stocksettings/widget/ChartSweepView;)V

    .line 441
    invoke-direct/range {p0 .. p0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 442
    invoke-direct/range {p0 .. p0}, Lcom/android/stocksettings/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 443
    return-void

    .line 412
    .end local v6           #halfRange:J
    .end local v12           #sweepMax:J
    .end local v14           #sweepMin:J
    .end local v16           #validEnd:J
    .end local v18           #validStart:J
    :cond_1
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    goto :goto_0

    .line 414
    .restart local v18       #validStart:J
    :cond_2
    move-wide/from16 v0, p3

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    goto :goto_1
.end method
