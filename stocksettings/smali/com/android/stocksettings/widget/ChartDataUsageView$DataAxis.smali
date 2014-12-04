.class public Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/stocksettings/widget/ChartAxis;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataAxis"
.end annotation


# static fields
.field private static final sSpanSize:Ljava/lang/Object;

.field private static final sSpanUnit:Ljava/lang/Object;


# instance fields
.field private mMax:J

.field private mMin:J

.field private mSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 603
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->sSpanSize:Ljava/lang/Object;

    .line 604
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->sSpanUnit:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 545
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 12
    .parameter "res"
    .parameter "builder"
    .parameter "value"

    .prologue
    .line 611
    const-wide/32 v8, 0x3e800000

    cmp-long v8, p3, v8

    if-gez v8, :cond_0

    .line 612
    const v8, 0x104008f

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 613
    .local v5, unit:Ljava/lang/CharSequence;
    const-wide/32 v6, 0x100000

    .line 619
    .local v6, unitFactor:J
    :goto_0
    long-to-double v8, p3

    long-to-double v10, v6

    div-double v0, v8, v10

    .line 623
    .local v0, result:D
    const-wide/high16 v8, 0x4024

    cmpg-double v8, v0, v8

    if-gez v8, :cond_1

    .line 624
    const-string v8, "%.1f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 625
    .local v4, size:Ljava/lang/CharSequence;
    const-wide/high16 v8, 0x4024

    mul-double/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    mul-long/2addr v8, v6

    const-wide/16 v10, 0xa

    div-long/2addr v8, v10

    long-to-double v2, v8

    .line 631
    .local v2, resultRounded:D
    :goto_1
    sget-object v8, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->sSpanSize:Ljava/lang/Object;

    const-string v9, "^1"

    #calls: Lcom/android/stocksettings/widget/ChartDataUsageView;->setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    invoke-static {p2, v8, v4, v9}, Lcom/android/stocksettings/widget/ChartDataUsageView;->access$800(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 632
    sget-object v8, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->sSpanUnit:Ljava/lang/Object;

    const-string v9, "^2"

    #calls: Lcom/android/stocksettings/widget/ChartDataUsageView;->setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    invoke-static {p2, v8, v5, v9}, Lcom/android/stocksettings/widget/ChartDataUsageView;->access$800(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 634
    double-to-long v8, v2

    return-wide v8

    .line 615
    .end local v0           #result:D
    .end local v2           #resultRounded:D
    .end local v4           #size:Ljava/lang/CharSequence;
    .end local v5           #unit:Ljava/lang/CharSequence;
    .end local v6           #unitFactor:J
    :cond_0
    const v8, 0x1040090

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 616
    .restart local v5       #unit:Ljava/lang/CharSequence;
    const-wide/32 v6, 0x40000000

    .restart local v6       #unitFactor:J
    goto :goto_0

    .line 627
    .restart local v0       #result:D
    :cond_1
    const-string v8, "%.0f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 628
    .restart local v4       #size:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    mul-long/2addr v8, v6

    long-to-double v2, v8

    .restart local v2       #resultRounded:D
    goto :goto_1
.end method

.method public convertToPoint(J)F
    .locals 5
    .parameter "value"

    .prologue
    .line 587
    iget v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->mSize:F

    iget-wide v1, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long v1, p1, v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    iget-wide v1, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->mMax:J

    iget-wide v3, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public convertToValue(F)J
    .locals 5
    .parameter "point"

    .prologue
    .line 599
    iget-wide v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->mMin:J

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->mMax:J

    iget-wide v3, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->mSize:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getTickPoints()[F
    .locals 13

    .prologue
    .line 639
    iget-wide v9, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->mMax:J

    iget-wide v11, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long v1, v9, v11

    .line 642
    .local v1, range:J
    const-wide/16 v9, 0x10

    div-long v9, v1, v9

    #calls: Lcom/android/stocksettings/widget/ChartDataUsageView;->roundUpToPowerOfTwo(J)J
    invoke-static {v9, v10}, Lcom/android/stocksettings/widget/ChartDataUsageView;->access$900(J)J

    move-result-wide v4

    .line 643
    .local v4, tickJump:J
    div-long v9, v1, v4

    long-to-int v3, v9

    .line 644
    .local v3, tickCount:I
    new-array v6, v3, [F

    .line 645
    .local v6, tickPoints:[F
    iget-wide v7, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->mMin:J

    .line 646
    .local v7, value:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v9, v6

    if-ge v0, v9, :cond_0

    .line 647
    invoke-virtual {p0, v7, v8}, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->convertToPoint(J)F

    move-result v9

    aput v9, v6, v0

    .line 648
    add-long/2addr v7, v4

    .line 646
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 651
    :cond_0
    return-object v6
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 554
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->mMin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->mMax:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->mSize:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBounds(JJ)Z
    .locals 2
    .parameter "min"
    .parameter "max"

    .prologue
    .line 559
    iget-wide v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->mMin:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->mMax:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_1

    .line 560
    :cond_0
    iput-wide p1, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->mMin:J

    .line 561
    iput-wide p3, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->mMax:J

    .line 562
    const/4 v0, 0x1

    .line 564
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSize(F)Z
    .locals 1
    .parameter "size"

    .prologue
    .line 570
    iget v0, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->mSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 571
    iput p1, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->mSize:F

    .line 572
    const/4 v0, 0x1

    .line 574
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldAdjustAxis(J)I
    .locals 7
    .parameter "value"

    .prologue
    .line 656
    invoke-virtual {p0, p1, p2}, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->convertToPoint(J)F

    move-result v0

    .line 657
    .local v0, point:F
    float-to-double v1, v0

    iget v3, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->mSize:F

    float-to-double v3, v3

    const-wide v5, 0x3fb999999999999aL

    mul-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 658
    const/4 v1, -0x1

    .line 662
    :goto_0
    return v1

    .line 659
    :cond_0
    float-to-double v1, v0

    iget v3, p0, Lcom/android/stocksettings/widget/ChartDataUsageView$DataAxis;->mSize:F

    float-to-double v3, v3

    const-wide v5, 0x3feb333333333333L

    mul-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 660
    const/4 v1, 0x1

    goto :goto_0

    .line 662
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
