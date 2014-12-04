.class Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;
.super Landroid/os/Handler;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeasurementHandler"
.end annotation


# instance fields
.field private volatile mBound:Z

.field private mCached:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefContainerConn:Landroid/content/ServiceConnection;

.field private mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

.field private mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;


# direct methods
.method public constructor <init>(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "looper"

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    .line 356
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 328
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    .line 338
    new-instance v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler$1;-><init>(Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;)V

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    .line 357
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    .line 358
    return-void
.end method

.method static synthetic access$102(Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    return p1
.end method

.method private measureApproximateStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 12
    .parameter "imcs"

    .prologue
    .line 419
    iget-object v7, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v7}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$400(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v7}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$400(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 421
    .local v3, path:Ljava/lang/String;
    :goto_0
    const-string v7, "StorageMeasurement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "measureApproximateStorage, path is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :try_start_0
    invoke-interface {p1, v3}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v4

    .line 424
    .local v4, stats:[J
    iget-object v7, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    const/4 v8, 0x0

    aget-wide v8, v4, v8

    #setter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v7, v8, v9}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$502(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;J)J

    .line 425
    iget-object v7, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    const/4 v8, 0x1

    aget-wide v8, v4, v8

    #setter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mAvailSize:J
    invoke-static {v7, v8, v9}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$602(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;J)J

    .line 427
    iget-object v7, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mIsTotalMemory:Z
    invoke-static {v7}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$700(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 428
    iget-object v7, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    const-wide v8, 0x100000000L

    #setter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mInterTotalSize:J
    invoke-static {v7, v8, v9}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$802(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;J)J

    .line 429
    const-string v7, "StorageMeasurement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "zhangli, mInterTotalSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mInterTotalSize:J
    invoke-static {v9}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$800(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "path"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v7, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    move-object v0, v7

    .line 433
    .local v0, context:Landroid/content/Context;
    :goto_1
    const-string v7, "storage"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 434
    .local v5, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, internalsdpath:Ljava/lang/String;
    const-string v7, "StorageMeasurement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "zhangli, internalsdpath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-interface {p1, v2}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v6

    .line 437
    .local v6, vsdcardstat:[J
    iget-object v7, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    const/4 v8, 0x0

    aget-wide v8, v6, v8

    #setter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mVirtualSdTotalSize:J
    invoke-static {v7, v8, v9}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$902(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;J)J

    .line 438
    iget-object v7, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    const/4 v8, 0x1

    aget-wide v8, v6, v8

    #setter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mVirtualSdAvailSize:J
    invoke-static {v7, v8, v9}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$1002(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;J)J

    .line 439
    const-string v7, "StorageMeasurement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "zhangli, mVirtualSdTotalSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mVirtualSdTotalSize:J
    invoke-static {v9}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$900(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mVirtualSdAvailSize"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mVirtualSdAvailSize:J
    invoke-static {v9}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$1000(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v7, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mVirtualSdTotalSize:J
    invoke-static {v7}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$900(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v7

    const-wide v9, 0xc0000000L

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 441
    iget-object v7, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    const-wide v8, 0x200000000L

    #setter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mInterTotalSize:J
    invoke-static {v7, v8, v9}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$802(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;J)J

    .line 444
    :cond_0
    iget-object v7, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v8}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$500(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v8

    #setter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mUserTotalSize:J
    invoke-static {v7, v8, v9}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$1102(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;J)J

    .line 445
    iget-object v7, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mAvailSize:J
    invoke-static {v8}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$600(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v8

    #setter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mUserAvailSize:J
    invoke-static {v7, v8, v9}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$1202(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;J)J

    .line 446
    const-string v7, "StorageMeasurement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "zhangli, mUserTotalSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mUserTotalSize:J
    invoke-static {v9}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$1100(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v7, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mInterTotalSize:J
    invoke-static {v8}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$800(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mVirtualSdTotalSize:J
    invoke-static {v10}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$900(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    iget-object v10, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mUserTotalSize:J
    invoke-static {v10}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$1100(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    #setter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mFirmwareTotalSize:J
    invoke-static {v7, v8, v9}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$1302(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;J)J

    .line 450
    iget-object v7, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    const-wide/16 v8, 0x0

    #setter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mFirmwareAvailSize:J
    invoke-static {v7, v8, v9}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$1402(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;J)J

    .line 451
    const-string v7, "StorageMeasurement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "zhangli, mFirmwareTotalSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mFirmwareTotalSize:J
    invoke-static {v9}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$1300(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #internalsdpath:Ljava/lang/String;
    .end local v4           #stats:[J
    .end local v5           #storageManager:Landroid/os/storage/StorageManager;
    .end local v6           #vsdcardstat:[J
    :cond_1
    :goto_2
    iget-object v7, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    #calls: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->sendInternalApproximateUpdate()V
    invoke-static {v7}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$1500(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)V

    .line 459
    return-void

    .line 419
    .end local v3           #path:Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 432
    .restart local v3       #path:Ljava/lang/String;
    .restart local v4       #stats:[J
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 454
    .end local v4           #stats:[J
    :catch_0
    move-exception v1

    .line 455
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "StorageMeasurement"

    const-string v8, "Problem in container service"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 27
    .parameter "imcs"

    .prologue
    .line 462
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    move-object v11, v4

    .line 463
    .local v11, context:Landroid/content/Context;
    :goto_0
    if-nez v11, :cond_2

    .line 530
    :cond_0
    :goto_1
    return-void

    .line 462
    .end local v11           #context:Landroid/content/Context;
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 467
    .restart local v11       #context:Landroid/content/Context;
    :cond_2
    new-instance v5, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-direct {v5}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;-><init>()V

    .line 468
    .local v5, details:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;
    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 470
    .local v7, finished:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v4}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$500(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v25

    move-wide/from16 v0, v25

    iput-wide v0, v5, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    .line 471
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mAvailSize:J
    invoke-static {v4}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$600(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)J

    move-result-wide v25

    move-wide/from16 v0, v25

    iput-wide v0, v5, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    .line 473
    const-string v4, "user"

    invoke-virtual {v11, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/UserManager;

    .line 475
    .local v23, userManager:Landroid/os/UserManager;
    invoke-virtual/range {v23 .. v23}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v24

    .line 477
    .local v24, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 478
    .local v6, currentUser:I
    new-instance v12, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v12, v6}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 482
    .local v12, currentEnv:Landroid/os/Environment$UserEnvironment;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v4}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$1600(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static {v4}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$1700(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const/4 v15, 0x1

    .line 484
    .local v15, measureMedia:Z
    :goto_2
    const-string v4, "StorageMeasurement"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "measureMedia is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "mIsInternal is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    move-object/from16 v26, v0

    #getter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static/range {v26 .. v26}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$1600(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " isEmulated: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " mIsPrimary is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    move-object/from16 v26, v0

    #getter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static/range {v26 .. v26}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$1700(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    if-eqz v15, :cond_6

    .line 487
    invoke-static {}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$1800()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 488
    .local v20, type:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/os/Environment$UserEnvironment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    .line 489
    .local v16, path:Ljava/io/File;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    #calls: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    invoke-static {v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$1900(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v18

    .line 490
    .local v18, size:J
    iget-object v4, v5, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 482
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #measureMedia:Z
    .end local v16           #path:Ljava/io/File;
    .end local v18           #size:J
    .end local v20           #type:Ljava/lang/String;
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 495
    .restart local v15       #measureMedia:Z
    :cond_6
    if-eqz v15, :cond_7

    .line 496
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v4}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$1600(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v12}, Landroid/os/Environment$UserEnvironment;->getMediaStorageDirectory()Ljava/io/File;

    move-result-object v16

    .line 498
    .restart local v16       #path:Ljava/io/File;
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    #calls: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->measureMisc(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    invoke-static {v4, v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$2000(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v25

    move-wide/from16 v0, v25

    iput-wide v0, v5, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    .line 503
    .end local v16           #path:Ljava/io/File;
    :cond_7
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/UserInfo;

    .line 504
    .local v21, user:Landroid/content/pm/UserInfo;
    new-instance v22, Landroid/os/Environment$UserEnvironment;

    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 505
    .local v22, userEnv:Landroid/os/Environment$UserEnvironment;
    invoke-virtual/range {v22 .. v22}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, p1

    #calls: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    invoke-static {v0, v4}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$1900(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v18

    .line 506
    .restart local v18       #size:J
    iget-object v4, v5, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-wide/from16 v1, v18

    #calls: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V
    invoke-static {v4, v0, v1, v2}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$000(Landroid/util/SparseLongArray;IJ)V

    goto :goto_5

    .line 496
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v18           #size:J
    .end local v21           #user:Landroid/content/pm/UserInfo;
    .end local v22           #userEnv:Landroid/os/Environment$UserEnvironment;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v4}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$400(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v16

    goto :goto_4

    .line 510
    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_9
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 511
    .local v17, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v4}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$1600(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static {v4}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$1700(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 512
    :cond_a
    const/16 v4, 0x2200

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v10

    .line 515
    .local v10, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const-string v4, "zhangli"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "StorageMeasurement -count packagemanager app.size="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "user.size="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v25

    mul-int v8, v4, v25

    .line 517
    .local v8, count:I
    const-string v4, "zhangli"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "count"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v3, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$StatsObserver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v4}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$1600(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)Z

    move-result v4

    invoke-direct/range {v3 .. v8}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$StatsObserver;-><init>(ZLcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;ILandroid/os/Message;I)V

    .line 521
    .local v3, observer:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$StatsObserver;
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v13           #i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/UserInfo;

    .line 522
    .restart local v21       #user:Landroid/content/pm/UserInfo;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 523
    .local v9, app:Landroid/content/pm/ApplicationInfo;
    iget-object v4, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    goto :goto_6

    .line 528
    .end local v3           #observer:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$StatsObserver;
    .end local v8           #count:I
    .end local v9           #app:Landroid/content/pm/ApplicationInfo;
    .end local v10           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v21           #user:Landroid/content/pm/UserInfo;
    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_c
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .line 362
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 364
    :pswitch_0
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    if-eqz v3, :cond_1

    .line 365
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    #calls: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->sendExactUpdate(Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    invoke-static {v3, v4}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$300(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto :goto_0

    .line 369
    :cond_1
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v0, v3

    .line 370
    .local v0, context:Landroid/content/Context;
    :cond_2
    if-eqz v0, :cond_0

    .line 374
    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 375
    :try_start_0
    iget-boolean v3, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v3, :cond_3

    .line 376
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 377
    const/4 v3, 0x2

    iget-object v5, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    invoke-virtual {p0, v3, v5}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 383
    :goto_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 379
    :cond_3
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v5, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 380
    .local v2, service:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 387
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #service:Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/IMediaContainerService;

    .line 388
    .local v1, imcs:Lcom/android/internal/app/IMediaContainerService;
    invoke-direct {p0, v1}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->measureApproximateStorage(Lcom/android/internal/app/IMediaContainerService;)V

    .line 389
    invoke-direct {p0, v1}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V

    goto :goto_0

    .line 393
    .end local v1           #imcs:Lcom/android/internal/app/IMediaContainerService;
    :pswitch_2
    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 394
    :try_start_2
    iget-boolean v3, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v3, :cond_6

    .line 395
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v0, v3

    .line 396
    .restart local v0       #context:Landroid/content/Context;
    :cond_4
    if-nez v0, :cond_5

    .line 397
    monitor-exit v4

    goto :goto_0

    .line 403
    .end local v0           #context:Landroid/content/Context;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 400
    .restart local v0       #context:Landroid/content/Context;
    :cond_5
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    .line 401
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 403
    .end local v0           #context:Landroid/content/Context;
    :cond_6
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 407
    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iput-object v3, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .line 408
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    #calls: Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->sendExactUpdate(Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    invoke-static {v3, v4}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->access$300(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto/16 :goto_0

    .line 412
    :pswitch_4
    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    goto/16 :goto_0

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
