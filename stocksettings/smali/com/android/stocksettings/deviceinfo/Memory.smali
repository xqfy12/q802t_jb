.class public Lcom/android/stocksettings/deviceinfo/Memory;
.super Lcom/android/stocksettings/SettingsPreferenceFragment;
.source "Memory.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stocksettings/deviceinfo/Memory$ConfirmClearCacheFragment;,
        Lcom/android/stocksettings/deviceinfo/Memory$ClearCacheObserver;
    }
.end annotation


# static fields
.field private static sClickedMountPoint:Ljava/lang/String;

.field private static sLastClickedMountToggle:Landroid/preference/Preference;


# instance fields
.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mDeafultWritePathPref:Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;

.field private mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

.field private mDefaultWritePath:Ljava/lang/String;

.field private mDefaultWritePathAdded:[Z

.field private mExternalMode:Landroid/preference/Preference;

.field private final mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field private mMountService:Landroid/os/storage/IMountService;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageWritePathGroup:[Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;

.field private mUiHandler:Landroid/os/Handler;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private sdMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;-><init>()V

    .line 105
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    .line 217
    new-instance v0, Lcom/android/stocksettings/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/deviceinfo/Memory$1;-><init>(Lcom/android/stocksettings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 341
    new-instance v0, Lcom/android/stocksettings/deviceinfo/Memory$2;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/deviceinfo/Memory$2;-><init>(Lcom/android/stocksettings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    .line 553
    new-instance v0, Lcom/android/stocksettings/deviceinfo/Memory$4;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/deviceinfo/Memory$4;-><init>(Lcom/android/stocksettings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/stocksettings/deviceinfo/Memory;)Landroid/os/storage/StorageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/stocksettings/deviceinfo/Memory;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/stocksettings/deviceinfo/Memory;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/stocksettings/deviceinfo/Memory;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/stocksettings/deviceinfo/Memory;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/stocksettings/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->doUnmount()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/stocksettings/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->onCacheCleared()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/stocksettings/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->dynamicShowDefaultWriteCategory()V

    return-void
.end method

.method private addCategory(Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 1
    .parameter "category"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 175
    invoke-virtual {p1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 176
    return-void
.end method

.method private doUnmount()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 384
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0362

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 385
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 387
    .local v1, mountService:Landroid/os/storage/IMountService;
    :try_start_0
    sget-object v2, Lcom/android/stocksettings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 388
    sget-object v2, Lcom/android/stocksettings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    const v3, 0x7f0b0363

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/deviceinfo/Memory;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 389
    sget-object v2, Lcom/android/stocksettings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    const v3, 0x7f0b0364

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/deviceinfo/Memory;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 390
    sget-object v2, Lcom/android/stocksettings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 393
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/stocksettings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method

.method private dynamicShowDefaultWriteCategory()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 560
    const-string v3, "MemorySettings"

    const-string v4, "dynamicShowDefaultWriteCategory"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 563
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, writePath:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 565
    .local v1, volumeState:Ljava/lang/String;
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " volume state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const-string v3, "mounted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 568
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mDefaultWritePathAdded:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_0

    .line 569
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 570
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mDefaultWritePathAdded:[Z

    aput-boolean v7, v3, v0

    .line 562
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 573
    :cond_1
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mDefaultWritePathAdded:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    .line 574
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3, v6}, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 575
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 576
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mDefaultWritePathAdded:[Z

    aput-boolean v6, v3, v0

    goto :goto_1

    .line 581
    .end local v1           #volumeState:Ljava/lang/String;
    .end local v2           #writePath:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {}, Landroid/os/storage/StorageManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mDefaultWritePath:Ljava/lang/String;

    .line 582
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mDefaultWritePath:Ljava/lang/String;

    const-string v4, "/storage/sdcard1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string v4, "/storage/sdcard1"

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 583
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string v3, "/storage/sdcard0"

    invoke-static {v3}, Landroid/os/storage/StorageManager;->setDefaultPath(Ljava/lang/String;)V

    .line 584
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {}, Landroid/os/storage/StorageManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mDefaultWritePath:Ljava/lang/String;

    .line 586
    :cond_3
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDefaultWritePath"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mDefaultWritePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mDefaultWritePath:Ljava/lang/String;

    const-string v4, "/storage/sdcard1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 588
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory;->sdMode:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 589
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "save_location"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 610
    :goto_2
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get default path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mDefaultWritePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 v0, 0x0

    :goto_3
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 612
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mDefaultWritePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 613
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3, v7}, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 614
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    iput-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mDeafultWritePathPref:Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;

    .line 611
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 593
    :cond_4
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "save_location"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 598
    :cond_5
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory;->sdMode:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 599
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "save_location"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 604
    :cond_6
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "save_location"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 616
    :cond_7
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3, v6}, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    goto :goto_4

    .line 619
    :cond_8
    return-void
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 296
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 297
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 298
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 303
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 300
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "MemorySettings"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 295
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private hasAppsAccessingStorage()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 403
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 404
    .local v0, mountService:Landroid/os/storage/IMountService;
    sget-object v2, Lcom/android/stocksettings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v1

    .line 405
    .local v1, stUsers:[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 419
    :cond_0
    return v3
.end method

.method private isMassStorageEnabled()Z
    .locals 3

    .prologue
    .line 180
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 181
    .local v1, volumes:[Landroid/os/storage/StorageVolume;
    invoke-static {v1}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 182
    .local v0, primary:Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private mount()V
    .locals 3

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 441
    .local v0, mountService:Landroid/os/storage/IMountService;
    if-eqz v0, :cond_0

    .line 442
    :try_start_0
    sget-object v1, Lcom/android/stocksettings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 449
    :goto_0
    return-void

    .line 444
    :cond_0
    const-string v1, "MemorySettings"

    const-string v2, "Mount service is null, can\'t mount"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 446
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onCacheCleared()V
    .locals 3

    .prologue
    .line 452
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 453
    .local v0, category:Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->onCacheCleared()V

    goto :goto_0

    .line 455
    .end local v0           #category:Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method

.method private showDialogInner(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 398
    invoke-virtual {p0, p1}, Lcom/android/stocksettings/deviceinfo/Memory;->removeDialog(I)V

    .line 399
    invoke-virtual {p0, p1}, Lcom/android/stocksettings/deviceinfo/Memory;->showDialog(I)V

    .line 400
    return-void
.end method

.method private unmount()V
    .locals 3

    .prologue
    .line 425
    :try_start_0
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->hasAppsAccessingStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/stocksettings/deviceinfo/Memory;->showDialogInner(I)V

    .line 436
    :goto_0
    return-void

    .line 429
    :cond_0
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->doUnmount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 433
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MemorySettings"

    const-string v2, "Is MountService running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/stocksettings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .parameter "icicle"

    .prologue
    .line 109
    invoke-super/range {p0 .. p1}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 113
    .local v3, context:Landroid/content/Context;
    const-string v14, "usb"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/stocksettings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/usb/UsbManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stocksettings/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 115
    invoke-static {v3}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 116
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v14, v15}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 118
    const v14, 0x7f050010

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/stocksettings/deviceinfo/Memory;->addPreferencesFromResource(I)V

    .line 121
    invoke-static {v3}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->buildForTotalMemory(Landroid/content/Context;)Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/stocksettings/deviceinfo/Memory;->addCategory(Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;)V

    .line 124
    invoke-static {v3}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->buildForInternal(Landroid/content/Context;)Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/stocksettings/deviceinfo/Memory;->addCategory(Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;)V

    .line 127
    const-string v14, "persist.sys.isExternalSdFirst"

    const-string v15, "0"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stocksettings/deviceinfo/Memory;->sdMode:Ljava/lang/String;

    .line 128
    const-string v14, "external_sd_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/stocksettings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stocksettings/deviceinfo/Memory;->mExternalMode:Landroid/preference/Preference;

    .line 130
    const-string v14, "memory_select"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/stocksettings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stocksettings/deviceinfo/Memory;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/stocksettings/deviceinfo/Memory;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 132
    new-instance v14, Landroid/os/Handler;

    invoke-direct {v14}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stocksettings/deviceinfo/Memory;->mUiHandler:Landroid/os/Handler;

    .line 133
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v14}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v9

    .line 134
    .local v9, mPathList:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v14}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v12

    .line 135
    .local v12, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v8, v12

    .line 136
    .local v8, length:I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v10, mVolumePathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v1, Volumes:Ljava/util/List;,"Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    array-length v6, v9

    .line 140
    .local v6, len:I
    const-string v14, "MemorySettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "len ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "  length ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 142
    const-string v14, "not_present"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    aget-object v16, v9, v4

    invoke-virtual/range {v15 .. v16}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 143
    aget-object v14, v9, v4

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    const-string v14, "MemorySettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "i="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mPathList"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v9, v4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    aget-object v14, v12, v4

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 149
    :cond_1
    new-array v14, v8, [Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;

    .line 150
    new-array v14, v8, [Z

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/stocksettings/deviceinfo/Memory;->mDefaultWritePathAdded:[Z

    .line 151
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v8, :cond_2

    .line 152
    aget-object v11, v12, v4

    .line 153
    .local v11, storageVolume:Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;

    new-instance v15, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    aput-object v15, v14, v4

    .line 154
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;

    aget-object v15, v14, v4

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 155
    const-string v15, "MemorySettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "oncreate i="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "setkey"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;

    aget-object v14, v14, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;

    aget-object v15, v14, v4

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->setPath(Ljava/lang/String;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;

    aget-object v14, v14, v4

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 151
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 163
    .end local v11           #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_2
    move-object v2, v12

    .local v2, arr$:[Landroid/os/storage/StorageVolume;
    array-length v7, v2

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_2
    if-ge v5, v7, :cond_4

    aget-object v13, v2, v5

    .line 164
    .local v13, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v14

    if-nez v14, :cond_3

    .line 165
    invoke-static {v3, v13}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/stocksettings/deviceinfo/Memory;->addCategory(Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;)V

    .line 163
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 169
    .end local v13           #volume:Landroid/os/storage/StorageVolume;
    :cond_4
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/stocksettings/deviceinfo/Memory;->setHasOptionsMenu(Z)V

    .line 170
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const v3, 0x7f0b047c

    const/4 v0, 0x0

    .line 361
    packed-switch p1, :pswitch_data_0

    .line 379
    :goto_0
    return-object v0

    .line 363
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b035e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/stocksettings/deviceinfo/Memory$3;

    invoke-direct {v2, p0}, Lcom/android/stocksettings/deviceinfo/Memory$3;-><init>(Lcom/android/stocksettings/deviceinfo/Memory;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00ea

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b035f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 373
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0360

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0361

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 260
    const v0, 0x7f100003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 261
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 252
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 255
    :cond_0
    invoke-super {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onDestroy()V

    .line 256
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 274
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 291
    invoke-super {p0, p1}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 285
    :pswitch_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.stocksettings"

    const-string v3, "com.android.stocksettings.ConnectSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 288
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/stocksettings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V

    .line 289
    const/4 v1, 0x1

    goto :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x7f080252
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 242
    invoke-super {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onPause()V

    .line 243
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 244
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 245
    .local v0, category:Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->onPause()V

    goto :goto_0

    .line 247
    .end local v0           #category:Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 518
    if-eqz p1, :cond_4

    instance-of v2, p1, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;

    if-eqz v2, :cond_4

    .line 519
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mDeafultWritePathPref:Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;

    if-eqz v2, :cond_0

    .line 520
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mDeafultWritePathPref:Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 522
    :cond_0
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/StorageManager;->setDefaultPath(Ljava/lang/String;)V

    .line 523
    const-string v2, "MemorySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange-preference.getKey"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mStorageManager.setDefaultPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {}, Landroid/os/storage/StorageManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/storage/sdcard1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 525
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/Memory;->sdMode:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 526
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "save_location"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 548
    :goto_0
    check-cast p1, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;

    .end local p1
    iput-object p1, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mDeafultWritePathPref:Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;

    .line 551
    :goto_1
    return v0

    .line 530
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "save_location"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 536
    :cond_2
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/Memory;->sdMode:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 537
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "save_location"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 542
    :cond_3
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "save_location"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    move v0, v1

    .line 551
    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    .line 308
    const-string v6, "cache"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 309
    invoke-static {p0}, Lcom/android/stocksettings/deviceinfo/Memory$ConfirmClearCacheFragment;->show(Lcom/android/stocksettings/deviceinfo/Memory;)V

    .line 338
    :cond_0
    :goto_0
    return v5

    .line 313
    :cond_1
    iget-object v6, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 314
    .local v0, category:Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0, p2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;

    move-result-object v2

    .line 315
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_3

    .line 317
    invoke-static {}, Lcom/android/stocksettings/Utils;->isMonkeyRunning()Z

    move-result v6

    if-nez v6, :cond_0

    .line 318
    invoke-virtual {p0, v2}, Lcom/android/stocksettings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 323
    :cond_3
    invoke-virtual {v0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 324
    .local v4, volume:Landroid/os/storage/StorageVolume;
    if-eqz v4, :cond_2

    invoke-virtual {v0, p2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mountToggleClicked(Landroid/preference/Preference;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 325
    sput-object p2, Lcom/android/stocksettings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    .line 326
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/stocksettings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    .line 327
    iget-object v6, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, state:Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "mounted_ro"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 330
    :cond_4
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->unmount()V

    goto :goto_0

    .line 332
    :cond_5
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->mount()V

    goto :goto_0

    .line 338
    .end local v0           #category:Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #state:Ljava/lang/String;
    .end local v4           #volume:Landroid/os/storage/StorageVolume;
    :cond_6
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    .line 265
    const v3, 0x7f080252

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 266
    .local v1, usb:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 267
    .local v0, um:Landroid/os/UserManager;
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->isMassStorageEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "no_usb_file_transfer"

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 269
    .local v2, usbItemVisible:Z
    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 270
    return-void

    .line 267
    .end local v2           #usbItemVisible:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 187
    invoke-super {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onResume()V

    .line 188
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 189
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v4, "file"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 194
    .restart local v2       #intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 199
    .local v0, category:Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->onResume()V

    goto :goto_0

    .line 202
    .end local v0           #category:Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    const-string v4, "persist.sys.isExternalSdFirst"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 203
    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mExternalMode:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "storage"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 209
    .local v3, mStorageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 210
    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mExternalMode:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 215
    :cond_2
    :goto_1
    return-void

    .line 211
    :cond_3
    const-string v4, "mounted"

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 213
    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/Memory;->mExternalMode:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method
