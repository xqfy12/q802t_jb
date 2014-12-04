.class public Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;
    }
.end annotation


# instance fields
.field private mFormatPreference:Landroid/preference/Preference;

.field private mIsInternalSD:Z

.field private mIsTotalMemory:Z

.field private mItemApps:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

.field private mItemAvailable:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

.field private mItemCache:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

.field private mItemDcim:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

.field private mItemDownloads:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

.field private mItemFirewaresize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

.field private mItemInternaltotalsize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

.field private mItemMisc:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

.field private mItemMusic:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

.field private mItemTotal:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

.field private mItemUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/stocksettings/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mItemUsersize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

.field private mItemvisualsd:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

.field private final mMeasure:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

.field private mMountTogglePreference:Landroid/preference/Preference;

.field private mReceiver:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private final mResources:Landroid/content/res/Resources;

.field private mStorageLow:Landroid/preference/Preference;

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private mTotalSize:J

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUsageBarPreference:Lcom/android/stocksettings/deviceinfo/UsageBarPreference;

.field private mUsbConnected:Z

.field private mUsbFunction:Ljava/lang/String;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVolume:Landroid/os/storage/StorageVolume;

.field private mVolumeDescription:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V
    .locals 3
    .parameter "context"
    .parameter "volume"
    .parameter "totalmemory"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    .line 103
    new-instance v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory$1;-><init>(Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    .line 672
    new-instance v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory$2;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory$2;-><init>(Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 169
    iput-object p2, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    .line 170
    invoke-static {p1, p2, p3}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    .line 171
    iput-boolean p3, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mIsTotalMemory:Z

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    .line 173
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 174
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    .line 175
    const-string v0, "StorageVolumePreferenceCategory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zhangli 01-mIsTotalMemory= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mIsTotalMemory:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mVolume= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-boolean v0, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mIsTotalMemory:Z

    if-eqz v0, :cond_1

    .line 179
    const v0, 0x7f0b0869

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 188
    :goto_0
    if-eqz p2, :cond_0

    .line 189
    invoke-virtual {p2, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    .line 190
    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mIsInternalSD:Z

    .line 194
    :cond_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_2

    .line 182
    const v0, 0x7f0b0477

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {p2, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 190
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mIsTotalMemory:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static buildForInternal(Landroid/content/Context;)Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 3
    .parameter "context"

    .prologue
    .line 150
    new-instance v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V

    return-object v0
.end method

.method public static buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 2
    .parameter "context"
    .parameter "volume"

    .prologue
    .line 158
    new-instance v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V

    return-object v0
.end method

.method public static buildForTotalMemory(Landroid/content/Context;)Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 3
    .parameter "context"

    .prologue
    .line 163
    new-instance v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V

    return-object v0
.end method

.method private buildItem(II)Lcom/android/stocksettings/deviceinfo/StorageItemPreference;
    .locals 2
    .parameter "titleRes"
    .parameter "colorRes"

    .prologue
    .line 197
    new-instance v0, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .parameter "size"

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;
    .locals 4
    .parameter "excluding"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/UserInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 756
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 757
    .local v1, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 758
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 759
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v3, :cond_0

    .line 760
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 763
    :cond_1
    return-object v1
.end method

.method private getVolumeString(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "stringId"
    .parameter "description"

    .prologue
    .line 768
    if-eqz p2, :cond_0

    iget-boolean v3, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mIsInternalSD:Z

    if-nez v3, :cond_2

    .line 769
    :cond_0
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 795
    :cond_1
    :goto_0
    return-object v1

    .line 772
    :cond_2
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b0039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 773
    .local v0, sdCardString:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 776
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 777
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 779
    const-string v3, "sd"

    const-string v4, "SD"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 780
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 783
    :cond_3
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 784
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SD"

    invoke-virtual {v3, v4, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 786
    const-string v3, "StorageVolumePreferenceCategory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not replace SD card, Replace SD, str is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 790
    .local v2, tr:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 793
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private measure()V
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->invalidate()V

    .line 635
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->measure()V

    .line 636
    return-void
.end method

.method private resetPreferences()V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 322
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/stocksettings/deviceinfo/UsageBarPreference;

    if-eqz v11, :cond_0

    .line 323
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/stocksettings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 325
    :cond_0
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-eqz v11, :cond_1

    .line 326
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 328
    :cond_1
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-eqz v11, :cond_2

    .line 329
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 331
    :cond_2
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-eqz v11, :cond_3

    .line 332
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 334
    :cond_3
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-eqz v11, :cond_4

    .line 335
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 337
    :cond_4
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-eqz v11, :cond_5

    .line 338
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 340
    :cond_5
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-eqz v11, :cond_6

    .line 341
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 343
    :cond_6
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-eqz v11, :cond_7

    .line 344
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 346
    :cond_7
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-eqz v11, :cond_8

    .line 347
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 350
    :cond_8
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemInternaltotalsize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-eqz v11, :cond_9

    .line 351
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemInternaltotalsize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 353
    :cond_9
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemFirewaresize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-eqz v11, :cond_a

    .line 354
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemFirewaresize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 357
    :cond_a
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemvisualsd:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-eqz v11, :cond_b

    .line 358
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemvisualsd:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 360
    :cond_b
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsersize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-eqz v11, :cond_c

    .line 361
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsersize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 364
    :cond_c
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 365
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v11, :cond_d

    .line 366
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 369
    :cond_d
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/stocksettings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 370
    iget-boolean v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mIsTotalMemory:Z

    if-eqz v11, :cond_f

    .line 371
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemInternaltotalsize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v9}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 373
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemFirewaresize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v9}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 375
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemvisualsd:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v9}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 376
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsersize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v9}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 423
    :cond_e
    :goto_0
    return-void

    .line 378
    :cond_f
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 379
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 383
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 388
    .local v1, currentUser:Landroid/content/pm/UserInfo;
    invoke-direct {p0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;

    move-result-object v5

    .line 389
    .local v5, otherUsers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v11, :cond_11

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_11

    move v7, v9

    .line 391
    .local v7, showUsers:Z
    :goto_1
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v11, :cond_10

    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v11

    if-eqz v11, :cond_12

    :cond_10
    move v6, v9

    .line 392
    .local v6, showDetails:Z
    :goto_2
    if-eqz v6, :cond_13

    .line 394
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 395
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 396
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 397
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 398
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 399
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 401
    if-eqz v7, :cond_13

    .line 402
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    .line 403
    .local v8, user:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;
    invoke-virtual {p0, v8}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 384
    .end local v1           #currentUser:Landroid/content/pm/UserInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #otherUsers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v6           #showDetails:Z
    .end local v7           #showUsers:Z
    .end local v8           #user:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;
    :catch_0
    move-exception v2

    .line 385
    .local v2, e:Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Failed to get current user"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v1       #currentUser:Landroid/content/pm/UserInfo;
    .restart local v5       #otherUsers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_11
    move v7, v10

    .line 389
    goto :goto_1

    .restart local v7       #showUsers:Z
    :cond_12
    move v6, v10

    .line 391
    goto :goto_2

    .line 408
    .restart local v6       #showDetails:Z
    :cond_13
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v11, :cond_16

    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    .line 409
    .local v4, isRemovable:Z
    :goto_4
    const-string v11, "zhangli 02"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isremovable = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    if-eqz v4, :cond_14

    .line 411
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 414
    :cond_14
    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v11, :cond_18

    iget-object v11, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v11

    if-nez v11, :cond_17

    move v0, v9

    .line 415
    .local v0, allowFormat:Z
    :goto_5
    if-eqz v0, :cond_15

    .line 416
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v9}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 419
    :cond_15
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v9, :cond_e

    .line 420
    iget-object v9, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    invoke-virtual {p0, v9}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .end local v0           #allowFormat:Z
    .end local v4           #isRemovable:Z
    :cond_16
    move v4, v10

    .line 408
    goto :goto_4

    .restart local v4       #isRemovable:Z
    :cond_17
    move v0, v10

    .line 414
    goto :goto_5

    :cond_18
    move v0, v10

    goto :goto_5
.end method

.method private static varargs totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J
    .locals 8
    .parameter
    .parameter "keys"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 579
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v4, 0x0

    .line 580
    .local v4, total:J
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 581
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 582
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 580
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 585
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    return-wide v4
.end method

.method private updatePreference(Lcom/android/stocksettings/deviceinfo/StorageItemPreference;J)V
    .locals 5
    .parameter "pref"
    .parameter "size"

    .prologue
    .line 624
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    .line 625
    invoke-direct {p0, p2, p3}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 626
    invoke-virtual {p1}, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;->getOrder()I

    move-result v0

    .line 627
    .local v0, order:I
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/stocksettings/deviceinfo/UsageBarPreference;

    long-to-float v2, p2

    iget-wide v3, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p1, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/stocksettings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 631
    .end local v0           #order:I
    :goto_0
    return-void

    .line 629
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updatePreferencesFromState()V
    .locals 8

    .prologue
    const v7, 0x7f0b035d

    const v6, 0x7f0b0357

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 433
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v1, :cond_1

    .line 434
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->resetPreferences()V

    .line 444
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, state:Ljava/lang/String;
    const-string v1, "zhangli 03"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferencesFromState, state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mVolume.getpath"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 450
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    const v2, 0x7f0b034a

    invoke-virtual {v1, v2}, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;->setTitle(I)V

    .line 451
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_2

    .line 452
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 457
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 461
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-eqz v1, :cond_3

    .line 462
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 465
    :cond_3
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 467
    :cond_4
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 468
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v2, 0x7f0b0354

    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v2, 0x7f0b0355

    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 538
    :cond_5
    :goto_2
    iget-boolean v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    if-eqz v1, :cond_18

    const-string v1, "mtp"

    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "ptp"

    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 540
    :cond_6
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 541
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 543
    :cond_7
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 547
    :cond_8
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 549
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 455
    :cond_9
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    const v2, 0x7f0b0349

    invoke-virtual {v1, v2}, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;->setTitle(I)V

    goto/16 :goto_1

    .line 479
    :cond_a
    const-string v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "nofs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "unmountable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 481
    :cond_b
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 482
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v6, v2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v2, 0x7f0b0358

    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-eqz v1, :cond_c

    .line 487
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 489
    :cond_c
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-eqz v1, :cond_d

    .line 490
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 492
    :cond_d
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-eqz v1, :cond_e

    .line 493
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 495
    :cond_e
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-eqz v1, :cond_f

    .line 496
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 498
    :cond_f
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-eqz v1, :cond_10

    .line 499
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 501
    :cond_10
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-eqz v1, :cond_11

    .line 502
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 530
    :cond_11
    :goto_3
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/stocksettings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 531
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 532
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 533
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_5

    .line 534
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 505
    :cond_12
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 506
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v6, v2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v2, 0x7f0b0356

    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-eqz v1, :cond_13

    .line 511
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 513
    :cond_13
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-eqz v1, :cond_14

    .line 514
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 516
    :cond_14
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-eqz v1, :cond_15

    .line 517
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 519
    :cond_15
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-eqz v1, :cond_16

    .line 520
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 522
    :cond_16
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-eqz v1, :cond_17

    .line 523
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 525
    :cond_17
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-eqz v1, :cond_11

    .line 526
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 551
    :cond_18
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 553
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    if-nez v1, :cond_19

    .line 554
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v2, 0x7f0b0834

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 557
    :cond_19
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v2, 0x7f0b035a

    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public init()V
    .locals 22

    .prologue
    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 205
    .local v6, context:Landroid/content/Context;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 210
    .local v9, currentUser:Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;

    move-result-object v14

    .line 211
    .local v14, otherUsers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mIsTotalMemory:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_1

    const/16 v17, 0x1

    .line 213
    .local v17, showUsers:Z
    :goto_0
    new-instance v19, Lcom/android/stocksettings/deviceinfo/UsageBarPreference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lcom/android/stocksettings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/stocksettings/deviceinfo/UsageBarPreference;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/stocksettings/deviceinfo/UsageBarPreference;

    move-object/from16 v19, v0

    const/16 v20, -0x2

    invoke-virtual/range {v19 .. v20}, Lcom/android/stocksettings/deviceinfo/UsageBarPreference;->setOrder(I)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/stocksettings/deviceinfo/UsageBarPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 217
    const v19, 0x7f0b034b

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    .line 218
    const v19, 0x7f0b0349

    const v20, 0x7f0a0003

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    .line 222
    const v19, 0x7f0b034b

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemInternaltotalsize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    .line 223
    const v19, 0x7f0b086a

    const v20, 0x7f0a000c

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemFirewaresize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    .line 224
    const v19, 0x7f0b086b

    const v20, 0x7f0a000e

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsersize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    .line 225
    const v19, 0x7f0b086c

    const v20, 0x7f0a000f

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemvisualsd:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    .line 228
    const v19, 0x7f0b034d

    const v20, 0x7f0a0004

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    .line 229
    const v19, 0x7f0b0350

    const v20, 0x7f0a0006

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    .line 230
    const v19, 0x7f0b0351

    const v20, 0x7f0a0007

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    .line 231
    const v19, 0x7f0b034f

    const v20, 0x7f0a0005

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    .line 232
    const v19, 0x7f0b0353

    const v20, 0x7f0a0008

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    .line 233
    const v19, 0x7f0b0352

    const v20, 0x7f0a0009

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    const-string v20, "cache"

    invoke-virtual/range {v19 .. v20}, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 237
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mIsTotalMemory:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    const/16 v16, 0x1

    .line 238
    .local v16, showDetails:Z
    :goto_1
    const-string v19, "StorageVolumePreferenceCategory"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "zhangli 02-showUsers= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "showDetails= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    if-eqz v16, :cond_4

    .line 240
    if-eqz v17, :cond_0

    .line 241
    new-instance v19, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    iget-object v0, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 243
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 252
    if-eqz v17, :cond_4

    .line 253
    new-instance v19, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    const v20, 0x7f0b036f

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 255
    const/4 v7, 0x0

    .line 256
    .local v7, count:I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    .line 257
    .local v12, info:Landroid/content/pm/UserInfo;
    add-int/lit8 v8, v7, 0x1

    .end local v7           #count:I
    .local v8, count:I
    rem-int/lit8 v19, v7, 0x2

    if-nez v19, :cond_3

    const v5, 0x7f0a000a

    .line 259
    .local v5, colorRes:I
    :goto_3
    new-instance v18, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v19

    iget-object v0, v12, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 261
    .local v18, userPref:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v8

    .line 262
    .end local v8           #count:I
    .restart local v7       #count:I
    goto :goto_2

    .line 206
    .end local v5           #colorRes:I
    .end local v7           #count:I
    .end local v9           #currentUser:Landroid/content/pm/UserInfo;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #info:Landroid/content/pm/UserInfo;
    .end local v14           #otherUsers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v16           #showDetails:Z
    .end local v17           #showUsers:Z
    .end local v18           #userPref:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;
    :catch_0
    move-exception v10

    .line 207
    .local v10, e:Landroid/os/RemoteException;
    new-instance v19, Ljava/lang/RuntimeException;

    const-string v20, "Failed to get current user"

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 211
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v9       #currentUser:Landroid/content/pm/UserInfo;
    .restart local v14       #otherUsers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 237
    .restart local v17       #showUsers:Z
    :cond_2
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 257
    .restart local v8       #count:I
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v12       #info:Landroid/content/pm/UserInfo;
    .restart local v16       #showDetails:Z
    :cond_3
    const v5, 0x7f0a000b

    goto :goto_3

    .line 266
    .end local v8           #count:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #info:Landroid/content/pm/UserInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mIsTotalMemory:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 267
    const-string v19, "StorageVolumePreferenceCategory"

    const-string v20, "initInter"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemInternaltotalsize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemFirewaresize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsersize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemvisualsd:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 273
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v13

    .line 274
    .local v13, isRemovable:Z
    :goto_4
    const-string v19, "zhangli"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "isRemovable = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v19, Landroid/preference/Preference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0b0354

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0b0355

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v19

    if-nez v19, :cond_9

    const/4 v4, 0x1

    .line 288
    .local v4, allowFormat:Z
    :goto_5
    if-eqz v4, :cond_6

    .line 289
    new-instance v19, Landroid/preference/Preference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v19

    if-nez v19, :cond_a

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0b0833

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0b0834

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    .line 304
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    .line 305
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v15

    .line 307
    .local v15, pm:Landroid/content/pm/IPackageManager;
    :try_start_1
    invoke-interface {v15}, Landroid/content/pm/IPackageManager;->isStorageLow()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 308
    new-instance v19, Landroid/preference/Preference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setOrder(I)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0b0365

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0b0366

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 318
    .end local v15           #pm:Landroid/content/pm/IPackageManager;
    :cond_7
    :goto_7
    return-void

    .line 273
    .end local v4           #allowFormat:Z
    .end local v13           #isRemovable:Z
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 287
    .restart local v13       #isRemovable:Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    .line 296
    .restart local v4       #allowFormat:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0b0359

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0b035a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 312
    .restart local v15       #pm:Landroid/content/pm/IPackageManager;
    :cond_b
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 313
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    .line 315
    :catch_1
    move-exception v19

    goto :goto_7
.end method

.method public intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;
    .locals 4
    .parameter

    .prologue
    .line 697
    const/4 v0, 0x0

    .line 702
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    .line 703
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 704
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/stocksettings/MediaFormat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 706
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 732
    :cond_0
    :goto_0
    return-object v0

    .line 707
    :cond_1
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_2

    .line 708
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/stocksettings/Settings$ManageApplicationsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 711
    :cond_2
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_3

    .line 712
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.DownloadManager.extra_sortBySize"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 714
    :cond_3
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_4

    .line 715
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 716
    const-string v1, "audio/mp3"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 717
    :cond_4
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_5

    .line 722
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 723
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.gallery3d"

    const-string v3, "com.android.gallery3d.app.Gallery"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 726
    :cond_5
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_0

    .line 727
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 728
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/stocksettings/deviceinfo/MiscFilesHandler;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 729
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public mountToggleClicked(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCacheCleared()V
    .locals 0

    .prologue
    .line 661
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 662
    return-void
.end method

.method public onMediaScannerFinished()V
    .locals 0

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 658
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->cleanUp()V

    .line 666
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/stocksettings/deviceinfo/StorageMeasurement;

    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 640
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 641
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 642
    return-void
.end method

.method public onStorageStateChanged()V
    .locals 0

    .prologue
    .line 645
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 646
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 647
    return-void
.end method

.method public onUsbStateChanged(ZLjava/lang/String;)V
    .locals 0
    .parameter "isUsbConnected"
    .parameter "usbFunction"

    .prologue
    .line 650
    iput-boolean p1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    .line 651
    iput-object p2, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    .line 652
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 653
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 654
    return-void
.end method

.method public updateApproximate(JJ)V
    .locals 6
    .parameter "totalSize"
    .parameter "availSize"

    .prologue
    .line 564
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1, p2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 565
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p3, p4}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 567
    iput-wide p1, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    .line 569
    sub-long v0, p1, p3

    .line 571
    .local v0, usedSize:J
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/stocksettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/stocksettings/deviceinfo/UsageBarPreference;->clear()V

    .line 572
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/stocksettings/deviceinfo/UsageBarPreference;

    const/4 v3, 0x0

    long-to-float v4, v0

    long-to-float v5, p1

    div-float/2addr v4, v5

    const v5, -0x777778

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/stocksettings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 573
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/stocksettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/stocksettings/deviceinfo/UsageBarPreference;->commit()V

    .line 575
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 576
    return-void
.end method

.method public updateDetails(Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 16
    .parameter "details"

    .prologue
    .line 589
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mIsTotalMemory:Z

    if-nez v12, :cond_1

    const/4 v8, 0x1

    .line 590
    .local v8, showDetails:Z
    :goto_0
    if-nez v8, :cond_2

    .line 621
    :goto_1
    return-void

    .line 589
    .end local v8           #showDetails:Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 593
    .restart local v8       #showDetails:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/stocksettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v12}, Lcom/android/stocksettings/deviceinfo/UsageBarPreference;->clear()V

    .line 598
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/stocksettings/deviceinfo/StorageItemPreference;J)V

    .line 600
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    sget-object v15, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    sget-object v15, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v1

    .line 602
    .local v1, dcimSize:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v1, v2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/stocksettings/deviceinfo/StorageItemPreference;J)V

    .line 604
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    sget-object v15, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    sget-object v15, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x3

    sget-object v15, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x4

    sget-object v15, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v6

    .line 607
    .local v6, musicSize:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6, v7}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/stocksettings/deviceinfo/StorageItemPreference;J)V

    .line 609
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v3

    .line 610
    .local v3, downloadsSize:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3, v4}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/stocksettings/deviceinfo/StorageItemPreference;J)V

    .line 612
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/stocksettings/deviceinfo/StorageItemPreference;J)V

    .line 613
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/stocksettings/deviceinfo/StorageItemPreference;J)V

    .line 615
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    .line 616
    .local v9, userPref:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/stocksettings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v13, v9, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;->userHandle:I

    invoke-virtual {v12, v13}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v10

    .line 617
    .local v10, userSize:J
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v11}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/stocksettings/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 620
    .end local v9           #userPref:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;
    .end local v10           #userSize:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/stocksettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v12}, Lcom/android/stocksettings/deviceinfo/UsageBarPreference;->commit()V

    goto/16 :goto_1
.end method

.method public updateInternalStorage(JJJJJJJ)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 801
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 803
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/stocksettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/stocksettings/deviceinfo/UsageBarPreference;->clear()V

    .line 805
    const-string v2, "StorageVolumePreferenceCategory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateInternalStorage interTotalSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const-string v2, "StorageVolumePreferenceCategory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateInternalStorage fomattotalsize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1, p2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemInternaltotalsize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1, p2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 809
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_0

    .line 810
    sub-long v2, p1, p7

    sub-long v2, v2, p11

    .line 811
    const-wide/16 v4, 0x0

    .line 812
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b086d

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 813
    iget-object v5, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemFirewaresize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {v5, v4}, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 814
    iget-object v5, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/stocksettings/deviceinfo/UsageBarPreference;

    iget-object v6, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemFirewaresize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {v6}, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;->getOrder()I

    move-result v6

    long-to-float v7, v2

    long-to-float v8, p1

    div-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemFirewaresize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    iget v8, v8, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/stocksettings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 815
    const-string v5, "StorageVolumePreferenceCategory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "firmwareTotalSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const-string v5, "StorageVolumePreferenceCategory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FIRMWARE_SIZE="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const-string v4, "StorageVolumePreferenceCategory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FIRMWARE_COLOR="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemFirewaresize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    iget v6, v6, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const-string v4, "StorageVolumePreferenceCategory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FIRMWARE_P="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    long-to-float v2, v2

    long-to-float v3, p1

    div-float/2addr v2, v3

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-lez v2, :cond_1

    .line 838
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b086e

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-wide/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-wide/from16 v0, p9

    invoke-direct {p0, v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 839
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsersize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {v3, v2}, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 840
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/stocksettings/deviceinfo/UsageBarPreference;

    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsersize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {v4}, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;->getOrder()I

    move-result v4

    move-wide/from16 v0, p7

    long-to-float v5, v0

    long-to-float v6, p1

    div-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsersize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    iget v6, v6, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/stocksettings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 841
    const-string v3, "StorageVolumePreferenceCategory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userTotalSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p7

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const-string v3, "StorageVolumePreferenceCategory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USER_SIZE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const-string v2, "StorageVolumePreferenceCategory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USER_COLOR="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsersize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    iget v4, v4, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const-string v2, "StorageVolumePreferenceCategory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USER_P="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p7

    long-to-float v4, v0

    long-to-float v5, p1

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, p11, v2

    if-lez v2, :cond_2

    .line 851
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b086f

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-wide/from16 v0, p11

    invoke-direct {p0, v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-wide/from16 v0, p13

    invoke-direct {p0, v0, v1}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 852
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemvisualsd:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {v3, v2}, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 853
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/stocksettings/deviceinfo/UsageBarPreference;

    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemvisualsd:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {v4}, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;->getOrder()I

    move-result v4

    move-wide/from16 v0, p11

    long-to-float v5, v0

    long-to-float v6, p1

    div-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemvisualsd:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    iget v6, v6, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/stocksettings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 854
    const-string v3, "StorageVolumePreferenceCategory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "virtualSdTotalSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p11

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const-string v3, "StorageVolumePreferenceCategory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VIRTUALSD_SIZE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const-string v2, "StorageVolumePreferenceCategory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VIRTUALSD_COLOR="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemvisualsd:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    iget v4, v4, Lcom/android/stocksettings/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const-string v2, "StorageVolumePreferenceCategory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VIRTUALSD_P="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p11

    long-to-float v4, v0

    long-to-float v5, p1

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :goto_2
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/stocksettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/stocksettings/deviceinfo/UsageBarPreference;->commit()V

    .line 863
    return-void

    .line 820
    :cond_0
    const-string v2, "StorageVolumePreferenceCategory"

    const-string v3, "removePreference=FIRMWARE"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemFirewaresize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 846
    :cond_1
    const-string v2, "StorageVolumePreferenceCategory"

    const-string v3, "removePreference=USER"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsersize:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 859
    :cond_2
    const-string v2, "StorageVolumePreferenceCategory"

    const-string v3, "removePreference=VIRTUALSD"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->mItemvisualsd:Lcom/android/stocksettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method
