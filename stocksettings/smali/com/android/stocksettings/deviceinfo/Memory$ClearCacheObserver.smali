.class Lcom/android/stocksettings/deviceinfo/Memory$ClearCacheObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClearCacheObserver"
.end annotation


# instance fields
.field private mRemaining:I

.field private final mTarget:Lcom/android/stocksettings/deviceinfo/Memory;


# direct methods
.method public constructor <init>(Lcom/android/stocksettings/deviceinfo/Memory;I)V
    .locals 0
    .parameter "target"
    .parameter "remaining"

    .prologue
    .line 461
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 462
    iput-object p1, p0, Lcom/android/stocksettings/deviceinfo/Memory$ClearCacheObserver;->mTarget:Lcom/android/stocksettings/deviceinfo/Memory;

    .line 463
    iput p2, p0, Lcom/android/stocksettings/deviceinfo/Memory$ClearCacheObserver;->mRemaining:I

    .line 464
    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1
    .parameter "packageName"
    .parameter "succeeded"

    .prologue
    .line 468
    monitor-enter p0

    .line 469
    :try_start_0
    iget v0, p0, Lcom/android/stocksettings/deviceinfo/Memory$ClearCacheObserver;->mRemaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/stocksettings/deviceinfo/Memory$ClearCacheObserver;->mRemaining:I

    if-nez v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/Memory$ClearCacheObserver;->mTarget:Lcom/android/stocksettings/deviceinfo/Memory;

    #calls: Lcom/android/stocksettings/deviceinfo/Memory;->onCacheCleared()V
    invoke-static {v0}, Lcom/android/stocksettings/deviceinfo/Memory;->access$600(Lcom/android/stocksettings/deviceinfo/Memory;)V

    .line 472
    :cond_0
    monitor-exit p0

    .line 473
    return-void

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
