.class public Lcom/android/stocksettings/wifi/WifiSettings$ProportionalOuterFrame;
.super Landroid/widget/RelativeLayout;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProportionalOuterFrame"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1301
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1302
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1304
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1305
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 1307
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1308
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v8, 0x1

    .line 1315
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1316
    .local v2, parentWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1317
    .local v1, parentHeight:I
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings$ProportionalOuterFrame;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1318
    .local v3, resources:Landroid/content/res/Resources;
    const v7, 0x7f0d0010

    invoke-virtual {v3, v7, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    .line 1319
    .local v6, titleHeight:F
    const v7, 0x7f0d0011

    invoke-virtual {v3, v7, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    .line 1320
    .local v4, sideMargin:F
    const v7, 0x7f0d0012

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1321
    .local v0, bottom:I
    int-to-float v7, v2

    mul-float/2addr v7, v4

    float-to-int v7, v7

    const/4 v8, 0x0

    int-to-float v9, v2

    mul-float/2addr v9, v4

    float-to-int v9, v9

    invoke-virtual {p0, v7, v8, v9, v0}, Lcom/android/stocksettings/wifi/WifiSettings$ProportionalOuterFrame;->setPaddingRelative(IIII)V

    .line 1326
    const v7, 0x7f080169

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/wifi/WifiSettings$ProportionalOuterFrame;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1327
    .local v5, title:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1328
    int-to-float v7, v1

    mul-float/2addr v7, v6

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1330
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 1331
    return-void
.end method
