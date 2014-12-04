.class public Lcom/android/stocksettings/deviceinfo/StorageMeasurement;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stocksettings/deviceinfo/StorageMeasurement$FileInfo;,
        Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;,
        Lcom/android/stocksettings/deviceinfo/StorageMeasurement$StatsObserver;,
        Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementReceiver;,
        Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field static final LOGV:Z

.field private static sInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/storage/StorageVolume;",
            "Lcom/android/stocksettings/deviceinfo/StorageMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMeasureMediaTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAvailSize:J

.field mFileInfoForMisc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/stocksettings/deviceinfo/StorageMeasurement$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFirmwareAvailSize:J

.field private mFirmwareTotalSize:J

.field private final mHandler:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;

.field private mInterTotalSize:J

.field private final mIsInternal:Z

.field private final mIsPrimary:Z

.field private mIsTotalMemory:Z

.field private volatile mReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalSize:J

.field private mUserAvailSize:J

.field private mUserTotalSize:J

.field private mVirtualSdAvailSize:J

.field private mVirtualSdTotalSize:J

.field private final mVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 67
    const-string v0, "StorageMeasurement"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->LOGV:Z

    .line 71
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 75
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v2, v0, v1

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v1, 0x3

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/os/Environment;->DIRECTORY_ANDROID:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    .line 83
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V
    .locals 4
    .parameter "context"
    .parameter "volume"
    .parameter "totalmemory"

    .prologue
    const/4 v2, 0x0

    .line 185
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p2, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;

    .line 187
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mIsInternal:Z

    .line 188
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v2

    :cond_0
    iput-boolean v2, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    .line 189
    iput-boolean p3, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mIsTotalMemory:Z

    .line 190
    const-string v1, "StorageMeasurement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is Devicememory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MemoryMeasurement"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 194
    new-instance v1, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;-><init>(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;

    .line 195
    return-void

    .end local v0           #handlerThread:Landroid/os/HandlerThread;
    :cond_1
    move v1, v2

    .line 187
    goto :goto_0
.end method

.method static synthetic access$000(Landroid/util/SparseLongArray;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-static {p0, p1, p2, p3}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mVirtualSdAvailSize:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mVirtualSdAvailSize:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mUserTotalSize:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mUserTotalSize:J

    return-wide p1
.end method

.method static synthetic access$1202(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mUserAvailSize:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mFirmwareTotalSize:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mFirmwareTotalSize:J

    return-wide p1
.end method

.method static synthetic access$1402(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mFirmwareAvailSize:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->sendInternalApproximateUpdate()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mIsInternal:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    return v0
.end method

.method static synthetic access$1800()Ljava/util/Set;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-static {p0, p1}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->measureMisc(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->sendExactUpdate(Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mTotalSize:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mTotalSize:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mAvailSize:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mAvailSize:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mIsTotalMemory:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mInterTotalSize:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mInterTotalSize:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mVirtualSdTotalSize:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mVirtualSdTotalSize:J

    return-wide p1
.end method

.method private static addValue(Landroid/util/SparseLongArray;IJ)V
    .locals 2
    .parameter "array"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 604
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 605
    return-void
.end method

.method private static getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 6
    .parameter "imcs"
    .parameter "path"

    .prologue
    .line 535
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v1

    .line 536
    .local v1, size:J
    const-string v3, "StorageMeasurement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDirectorySize("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    .end local v1           #size:J
    :goto_0
    return-wide v1

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "StorageMeasurement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read memory from default container service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)Lcom/android/stocksettings/deviceinfo/StorageMeasurement;
    .locals 2
    .parameter "context"
    .parameter "volume"
    .parameter "totalmemory"

    .prologue
    .line 96
    new-instance v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V

    .line 99
    .local v0, value:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;
    return-object v0
.end method

.method private measureMisc(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 24
    .parameter "imcs"
    .parameter "dir"

    .prologue
    .line 545
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    .line 547
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v18

    .line 548
    .local v18, files:[Ljava/io/File;
    if-nez v18, :cond_0

    const-wide/16 v21, 0x0

    .line 577
    :goto_0
    return-wide v21

    .line 551
    :cond_0
    const-wide/16 v6, 0x0

    .line 552
    .local v6, counter:J
    const-wide/16 v21, 0x0

    .line 554
    .local v21, miscSize:J
    move-object/from16 v14, v18

    .local v14, arr$:[Ljava/io/File;
    array-length v0, v14

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    aget-object v17, v14, v19

    .line 555
    .local v17, file:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 556
    .local v3, path:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    .line 557
    .local v23, name:Ljava/lang/String;
    sget-object v2, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    move-object/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 554
    :cond_1
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 561
    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 562
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 563
    .local v4, fileSize:J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    new-instance v2, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$FileInfo;

    const-wide/16 v12, 0x1

    add-long v15, v6, v12

    .end local v6           #counter:J
    .local v15, counter:J
    invoke-direct/range {v2 .. v7}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    add-long v21, v21, v4

    move-wide v6, v15

    .line 565
    .end local v15           #counter:J
    .restart local v6       #counter:J
    goto :goto_2

    .end local v4           #fileSize:J
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 566
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v10

    .line 567
    .local v10, dirSize:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    new-instance v8, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$FileInfo;

    const-wide/16 v12, 0x1

    add-long v15, v6, v12

    .end local v6           #counter:J
    .restart local v15       #counter:J
    move-object v9, v3

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    add-long v21, v21, v10

    move-wide v6, v15

    .end local v15           #counter:J
    .restart local v6       #counter:J
    goto :goto_2

    .line 575
    .end local v3           #path:Ljava/lang/String;
    .end local v10           #dirSize:J
    .end local v17           #file:Ljava/io/File;
    .end local v23           #name:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method private sendExactUpdate(Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 3
    .parameter "details"

    .prologue
    .line 243
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v0, v1

    .line 244
    .local v0, receiver:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :goto_0
    if-nez v0, :cond_2

    .line 245
    sget-boolean v1, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->LOGV:Z

    if-eqz v1, :cond_0

    .line 246
    const-string v1, "StorageMeasurement"

    const-string v2, "measurements dropped because receiver is null! wasted effort"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    :goto_1
    return-void

    .line 243
    .end local v0           #receiver:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 250
    .restart local v0       #receiver:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_2
    invoke-interface {v0, p0, p1}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementReceiver;->updateDetails(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto :goto_1
.end method

.method private sendInternalApproximateUpdate()V
    .locals 22

    .prologue
    .line 229
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v2, v3

    .line 230
    .local v2, receiver:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :goto_0
    if-nez v2, :cond_1

    .line 239
    :goto_1
    return-void

    .line 229
    .end local v2           #receiver:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 234
    .restart local v2       #receiver:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_1
    const-string v3, "StorageMeasurement"

    const-string v4, "sendInternalApproximateUpdate "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mTotalSize:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mAvailSize:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mInterTotalSize:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mFirmwareTotalSize:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mFirmwareAvailSize:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mUserTotalSize:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mUserAvailSize:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mVirtualSdTotalSize:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mVirtualSdAvailSize:J

    move-wide/from16 v20, v0

    move-object/from16 v3, p0

    invoke-interface/range {v2 .. v21}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementReceiver;->updateApproximate(Lcom/android/stocksettings/deviceinfo/StorageMeasurement;JJJJJJJJJ)V

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 211
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 212
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 213
    return-void
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 217
    return-void
.end method

.method public measure()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 204
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 207
    :cond_0
    return-void
.end method

.method public setReceiver(Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 201
    :cond_1
    return-void
.end method
