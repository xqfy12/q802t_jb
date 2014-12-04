.class public Lcom/android/stocksettings/DataUsageSummary$AppItem;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/stocksettings/DataUsageSummary$AppItem;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/stocksettings/DataUsageSummary$AppItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final key:I

.field public restricted:Z

.field public total:J

.field public uids:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1613
    new-instance v0, Lcom/android/stocksettings/DataUsageSummary$AppItem$1;

    invoke-direct {v0}, Lcom/android/stocksettings/DataUsageSummary$AppItem$1;-><init>()V

    sput-object v0, Lcom/android/stocksettings/DataUsageSummary$AppItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "key"

    .prologue
    .line 1582
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1579
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/stocksettings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 1583
    iput p1, p0, Lcom/android/stocksettings/DataUsageSummary$AppItem;->key:I

    .line 1584
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "parcel"

    .prologue
    .line 1586
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1579
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/stocksettings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 1587
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/stocksettings/DataUsageSummary$AppItem;->key:I

    .line 1588
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 1589
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/stocksettings/DataUsageSummary$AppItem;->total:J

    .line 1590
    return-void
.end method


# virtual methods
.method public addUid(I)V
    .locals 2
    .parameter "uid"

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1594
    return-void
.end method

.method public compareTo(Lcom/android/stocksettings/DataUsageSummary$AppItem;)I
    .locals 4
    .parameter "another"

    .prologue
    .line 1610
    iget-wide v0, p1, Lcom/android/stocksettings/DataUsageSummary$AppItem;->total:J

    iget-wide v2, p0, Lcom/android/stocksettings/DataUsageSummary$AppItem;->total:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1576
    check-cast p1, Lcom/android/stocksettings/DataUsageSummary$AppItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/stocksettings/DataUsageSummary$AppItem;->compareTo(Lcom/android/stocksettings/DataUsageSummary$AppItem;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1605
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1598
    iget v0, p0, Lcom/android/stocksettings/DataUsageSummary$AppItem;->key:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1599
    iget-object v0, p0, Lcom/android/stocksettings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 1600
    iget-wide v0, p0, Lcom/android/stocksettings/DataUsageSummary$AppItem;->total:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1601
    return-void
.end method
