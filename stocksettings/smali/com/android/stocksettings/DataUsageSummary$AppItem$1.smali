.class final Lcom/android/stocksettings/DataUsageSummary$AppItem$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/DataUsageSummary$AppItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/stocksettings/DataUsageSummary$AppItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1613
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/stocksettings/DataUsageSummary$AppItem;
    .locals 1
    .parameter "in"

    .prologue
    .line 1616
    new-instance v0, Lcom/android/stocksettings/DataUsageSummary$AppItem;

    invoke-direct {v0, p1}, Lcom/android/stocksettings/DataUsageSummary$AppItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1613
    invoke-virtual {p0, p1}, Lcom/android/stocksettings/DataUsageSummary$AppItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/stocksettings/DataUsageSummary$AppItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/stocksettings/DataUsageSummary$AppItem;
    .locals 1
    .parameter "size"

    .prologue
    .line 1621
    new-array v0, p1, [Lcom/android/stocksettings/DataUsageSummary$AppItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1613
    invoke-virtual {p0, p1}, Lcom/android/stocksettings/DataUsageSummary$AppItem$1;->newArray(I)[Lcom/android/stocksettings/DataUsageSummary$AppItem;

    move-result-object v0

    return-object v0
.end method
