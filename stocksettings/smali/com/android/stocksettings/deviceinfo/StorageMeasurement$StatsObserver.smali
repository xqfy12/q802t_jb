.class Lcom/android/stocksettings/deviceinfo/StorageMeasurement$StatsObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatsObserver"
.end annotation


# instance fields
.field private final mCurrentUser:I

.field private final mDetails:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;

.field private final mFinished:Landroid/os/Message;

.field private final mIsInternal:Z

.field private mRemaining:I


# direct methods
.method public constructor <init>(ZLcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;ILandroid/os/Message;I)V
    .locals 0
    .parameter "isInternal"
    .parameter "details"
    .parameter "currentUser"
    .parameter "finished"
    .parameter "remaining"

    .prologue
    .line 262
    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    .line 263
    iput-boolean p1, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$StatsObserver;->mIsInternal:Z

    .line 264
    iput-object p2, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .line 265
    iput p3, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$StatsObserver;->mCurrentUser:I

    .line 266
    iput-object p4, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$StatsObserver;->mFinished:Landroid/os/Message;

    .line 267
    iput p5, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$StatsObserver;->mRemaining:I

    .line 268
    return-void
.end method

.method private addStatsLocked(Landroid/content/pm/PackageStats;)V
    .locals 13
    .parameter "stats"

    .prologue
    .line 283
    iget-boolean v6, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$StatsObserver;->mIsInternal:Z

    if-eqz v6, :cond_2

    .line 284
    iget-wide v2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    .line 285
    .local v2, codeSize:J
    iget-wide v4, p1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 286
    .local v4, dataSize:J
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 289
    .local v0, cacheSize:J
    const-string v6, "zhangli"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addStatsLocked Environment.isExternalStorageEmulated()= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 293
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v8, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 294
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v8, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 295
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v6

    .line 300
    :cond_0
    iget v6, p1, Landroid/content/pm/PackageStats;->userHandle:I

    iget v7, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$StatsObserver;->mCurrentUser:I

    if-ne v6, v7, :cond_1

    .line 301
    const-string v6, "zhangli"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCurrentUser codesize= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dataSize"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v6, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v7, v6, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    add-long/2addr v7, v2

    iput-wide v7, v6, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    .line 303
    iget-object v6, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v7, v6, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    add-long/2addr v7, v4

    iput-wide v7, v6, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    .line 307
    :cond_1
    iget-object v6, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-object v6, v6, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v7, p1, Landroid/content/pm/PackageStats;->userHandle:I

    #calls: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V
    invoke-static {v6, v7, v4, v5}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$000(Landroid/util/SparseLongArray;IJ)V

    .line 310
    iget-object v6, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v7, v6, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    add-long/2addr v7, v0

    iput-wide v7, v6, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    .line 318
    .end local v0           #cacheSize:J
    .end local v2           #codeSize:J
    .end local v4           #dataSize:J
    :goto_0
    return-void

    .line 314
    :cond_2
    iget-object v6, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v7, v6, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    iget-wide v9, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v11, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v9, v11

    iget-wide v11, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v9, v11

    iget-wide v11, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v9, v11

    add-long/2addr v7, v9

    iput-wide v7, v6, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    .line 316
    iget-object v6, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v7, v6, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    iget-wide v9, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v7, v9

    iput-wide v7, v6, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    goto :goto_0
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 2
    .parameter "stats"
    .parameter "succeeded"

    .prologue
    .line 272
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    monitor-enter v1

    .line 273
    if-eqz p2, :cond_0

    .line 274
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$StatsObserver;->addStatsLocked(Landroid/content/pm/PackageStats;)V

    .line 276
    :cond_0
    iget v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$StatsObserver;->mRemaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$StatsObserver;->mRemaining:I

    if-nez v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$StatsObserver;->mFinished:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 279
    :cond_1
    monitor-exit v1

    .line 280
    return-void

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method