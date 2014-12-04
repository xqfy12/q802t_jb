.class final Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;
.super Ljava/lang/Object;
.source "CachedBluetoothDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;",
        ">;"
    }
.end annotation


# instance fields
.field private mBtClass:Landroid/bluetooth/BluetoothClass;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectAfterPairing:Z

.field private mConnectAttempted:J

.field private final mContext:Landroid/content/Context;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceRemove:Z

.field private mIsConnectingErrorPossible:Z

.field private final mLocalAdapter:Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;

.field private mLocalNapRoleConnected:Z

.field private mName:Ljava/lang/String;

.field private mPhonebookPermissionChoice:I

.field private mProfileConnectionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileManager:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;

.field private final mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovedProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mRssi:S

.field private mVisible:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter "context"
    .parameter "adapter"
    .parameter "profileManager"
    .parameter "device"

    .prologue
    .line 153
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    .line 154
    iput-object p1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 155
    iput-object p2, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;

    .line 156
    iput-object p3, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;

    .line 157
    iput-object p4, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    .line 159
    invoke-direct {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->fillData()V

    .line 160
    return-void
.end method

.method private connectAutoConnectableProfiles()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 233
    invoke-direct {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v2

    if-nez v2, :cond_1

    .line 245
    :cond_0
    return-void

    .line 237
    :cond_1
    iput-boolean v3, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 239
    iget-object v2, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;

    .line 240
    .local v1, profile:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;
    invoke-interface {v1}, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 241
    iget-object v2, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2, v3}, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 242
    invoke-virtual {p0, v1}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0
.end method

.method private connectWithoutResettingTimer(Z)V
    .locals 5
    .parameter "connectAllProfiles"

    .prologue
    .line 201
    iget-object v3, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    const-string v3, "CachedBluetoothDevice"

    const-string v4, "No profiles. Maybe we will connect later"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 216
    const/4 v1, 0x0

    .line 217
    .local v1, preferredProfiles:I
    iget-object v3, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;

    .line 218
    .local v2, profile:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;
    if-eqz p1, :cond_3

    invoke-interface {v2}, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 219
    :goto_2
    iget-object v3, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v2, v3}, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 220
    add-int/lit8 v1, v1, 0x1

    .line 221
    invoke-virtual {p0, v2}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1

    .line 218
    :cond_3
    invoke-interface {v2}, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 227
    .end local v2           #profile:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;
    :cond_4
    if-nez v1, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->connectAutoConnectableProfiles()V

    goto :goto_0
.end method

.method private describe(Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;
    .locals 3
    .parameter "profile"

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    if-eqz p1, :cond_0

    .line 113
    const-string v1, " Profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private dispatchAttributesChanged()V
    .locals 4

    .prologue
    .line 598
    iget-object v3, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    .line 599
    :try_start_0
    iget-object v2, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice$Callback;

    .line 600
    .local v0, callback:Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice$Callback;
    invoke-interface {v0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice$Callback;->onDeviceAttributesChanged()V

    goto :goto_0

    .line 602
    .end local v0           #callback:Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice$Callback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    return-void
.end method

.method private ensurePaired()Z
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->startPairing()Z

    .line 277
    const/4 v0, 0x0

    .line 279
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private fetchBtClass()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 480
    return-void
.end method

.method private fetchName()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 404
    :cond_0
    return-void
.end method

.method private fetchPhonebookPermissionChoice()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 669
    iget-object v1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_phonebook_permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 671
    .local v0, preference:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mPhonebookPermissionChoice:I

    .line 673
    return-void
.end method

.method private fillData()V
    .locals 1

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 353
    invoke-direct {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 354
    invoke-direct {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 355
    invoke-direct {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->fetchPhonebookPermissionChoice()V

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 358
    invoke-direct {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 359
    return-void
.end method

.method private updateProfiles()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 483
    iget-object v3, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 484
    .local v1, uuids:[Landroid/os/ParcelUuid;
    if-nez v1, :cond_1

    .line 501
    :cond_0
    :goto_0
    return v0

    .line 486
    :cond_1
    iget-object v3, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    .line 487
    .local v2, localUuids:[Landroid/os/ParcelUuid;
    if-eqz v2, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;

    iget-object v3, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    iget-object v4, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    iget-boolean v5, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;->updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;Z)V

    .line 501
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clearProfileConnectionState()V
    .locals 5

    .prologue
    .line 343
    const-string v2, "CachedBluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Clearing all connection state for dev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;

    .line 346
    .local v1, profile:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;
    iget-object v2, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 348
    .end local v1           #profile:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;
    :cond_0
    return-void
.end method

.method public compareTo(Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;)I
    .locals 6
    .parameter "another"

    .prologue
    const/16 v5, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 628
    invoke-virtual {p1}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    :goto_1
    sub-int v0, v1, v4

    .line 629
    .local v0, comparison:I
    if-eqz v0, :cond_2

    move v1, v0

    .line 645
    :goto_2
    return v1

    .end local v0           #comparison:I
    :cond_0
    move v1, v3

    .line 628
    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    .line 632
    .restart local v0       #comparison:I
    :cond_2
    invoke-virtual {p1}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    if-ne v1, v5, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    if-ne v4, v5, :cond_4

    move v4, v2

    :goto_4
    sub-int v0, v1, v4

    .line 634
    if-eqz v0, :cond_5

    move v1, v0

    goto :goto_2

    :cond_3
    move v1, v3

    .line 632
    goto :goto_3

    :cond_4
    move v4, v3

    goto :goto_4

    .line 637
    :cond_5
    iget-boolean v1, p1, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v1, :cond_6

    move v1, v2

    :goto_5
    iget-boolean v4, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v4, :cond_7

    :goto_6
    sub-int v0, v1, v2

    .line 638
    if-eqz v0, :cond_8

    move v1, v0

    goto :goto_2

    :cond_6
    move v1, v3

    .line 637
    goto :goto_5

    :cond_7
    move v2, v3

    goto :goto_6

    .line 641
    :cond_8
    iget-short v1, p1, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mRssi:S

    iget-short v2, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mRssi:S

    sub-int v0, v1, v2

    .line 642
    if-eqz v0, :cond_9

    move v1, v0

    goto :goto_2

    .line 645
    :cond_9
    iget-object v1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    check-cast p1, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    return v0
.end method

.method connect(Z)V
    .locals 2
    .parameter "connectAllProfiles"

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 190
    invoke-direct {p0, p1}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    goto :goto_0
.end method

.method declared-synchronized connectInt(Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->ensurePaired()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 272
    :goto_0
    monitor-exit p0

    return-void

    .line 265
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:CONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 271
    :cond_1
    :try_start_2
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to connect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method connectProfile(Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 253
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 256
    invoke-virtual {p0, p1}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 259
    return-void
.end method

.method disconnect()V
    .locals 5

    .prologue
    .line 163
    iget-object v3, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;

    .line 164
    .local v2, profile:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v2}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 169
    .end local v2           #profile:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;
    :cond_0
    iget-object v3, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/stocksettings/bluetooth/PbapServerProfile;

    move-result-object v0

    .line 170
    .local v0, PbapProfile:Lcom/android/stocksettings/bluetooth/PbapServerProfile;
    iget-object v3, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/android/stocksettings/bluetooth/PbapServerProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 172
    iget-object v3, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/android/stocksettings/bluetooth/PbapServerProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 174
    :cond_1
    return-void
.end method

.method disconnect(Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:DISCONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 612
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_1

    .line 613
    :cond_0
    const/4 v0, 0x0

    .line 615
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;

    .end local p1
    iget-object v1, p1, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getBondState()I
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method getBtClass()Landroid/bluetooth/BluetoothClass;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    return-object v0
.end method

.method getConnectableProfiles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .local v0, connectableProfiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;>;"
    iget-object v3, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;

    .line 574
    .local v2, profile:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;
    invoke-interface {v2}, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 575
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 578
    .end local v2           #profile:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;
    :cond_1
    return-object v0
.end method

.method getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getPhonebookPermissionChoice()I
    .locals 1

    .prologue
    .line 653
    iget v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mPhonebookPermissionChoice:I

    return v0
.end method

.method getProfileConnectionState(Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;)I
    .locals 3
    .parameter "profile"

    .prologue
    .line 331
    iget-object v1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v1}, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 335
    .local v0, state:I
    iget-object v1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .end local v0           #state:I
    :cond_1
    iget-object v1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method getProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getRemovedProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method isBusy()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 465
    iget-object v4, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;

    .line 466
    .local v1, profile:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v1}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 467
    .local v2, status:I
    if-eq v2, v3, :cond_1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 472
    .end local v1           #profile:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;
    .end local v2           #status:I
    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_1

    const/4 v3, 0x0

    goto :goto_0
.end method

.method isConnected()Z
    .locals 4

    .prologue
    .line 448
    iget-object v3, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;

    .line 449
    .local v1, profile:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v1}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 450
    .local v2, status:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 451
    const/4 v3, 0x1

    .line 455
    .end local v1           #profile:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;
    .end local v2           #status:I
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method isRemovable()Z
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDeviceRemove:Z

    return v0
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    return v0
.end method

.method onBondingDockConnect()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    .line 197
    return-void
.end method

.method onBondingStateChanged(I)V
    .locals 2
    .parameter "bondState"

    .prologue
    const/4 v1, 0x0

    .line 537
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 539
    iput-boolean v1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 540
    invoke-virtual {p0, v1}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 543
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 545
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 547
    invoke-virtual {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->onBondingDockConnect()V

    .line 551
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 553
    :cond_2
    return-void

    .line 548
    :cond_3
    iget-boolean v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    if-eqz v0, :cond_1

    .line 549
    invoke-virtual {p0, v1}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0
.end method

.method onProfileStateChanged(Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;I)V
    .locals 3
    .parameter "profile"
    .parameter "newProfileState"

    .prologue
    .line 121
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProfileStateChanged: profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newProfileState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 126
    const-string v0, "CachedBluetoothDevice"

    const-string v1, " BT Turninig Off...Profile conn state change ignored..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 129
    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    instance-of v0, p1, Lcom/android/stocksettings/bluetooth/PanProfile;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/stocksettings/bluetooth/PanProfile;

    .end local p1
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/android/stocksettings/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    goto :goto_0

    .line 140
    .restart local p1
    :cond_2
    iget-boolean v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/stocksettings/bluetooth/PanProfile;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/stocksettings/bluetooth/PanProfile;

    iget-object v1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 143
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "Removing PanProfile from device after NAP disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    goto :goto_0
.end method

.method onUuidChanged()V
    .locals 4

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 528
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 531
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    .line 533
    :cond_0
    invoke-direct {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 534
    return-void
.end method

.method refresh()V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 408
    return-void
.end method

.method refreshBtClass()V
    .locals 0

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 510
    invoke-direct {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 511
    return-void
.end method

.method refreshName()V
    .locals 0

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 394
    invoke-direct {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 395
    return-void
.end method

.method registerCallback(Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 586
    iget-object v1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 588
    monitor-exit v1

    .line 589
    return-void

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setAliasName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    iput-object p1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 386
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    .line 388
    :cond_0
    invoke-direct {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 390
    :cond_1
    return-void
.end method

.method setBtClass(Landroid/bluetooth/BluetoothClass;)V
    .locals 1
    .parameter "btClass"

    .prologue
    .line 556
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eq v0, p1, :cond_0

    .line 557
    iput-object p1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 558
    invoke-direct {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 560
    :cond_0
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 378
    :goto_0
    invoke-direct {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 380
    :cond_0
    return-void

    .line 375
    :cond_1
    iput-object p1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method setPhonebookPermissionChoice(I)V
    .locals 4
    .parameter "permissionChoice"

    .prologue
    .line 657
    iget-object v1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_phonebook_permission"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 659
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_0

    .line 660
    iget-object v1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 664
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 665
    iput p1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mPhonebookPermissionChoice:I

    .line 666
    return-void

    .line 662
    :cond_0
    iget-object v1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method setRemovable(Z)V
    .locals 0
    .parameter "removable"

    .prologue
    .line 427
    iput-boolean p1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDeviceRemove:Z

    .line 428
    return-void
.end method

.method setRssi(S)V
    .locals 1
    .parameter "rssi"

    .prologue
    .line 436
    iget-short v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mRssi:S

    if-eq v0, p1, :cond_0

    .line 437
    iput-short p1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 438
    invoke-direct {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 440
    :cond_0
    return-void
.end method

.method setVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 421
    iput-boolean p1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 422
    invoke-direct {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 424
    :cond_0
    return-void
.end method

.method startPairing()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 285
    iget-object v1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;->cancelDiscovery()V

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v1

    if-nez v1, :cond_1

    .line 290
    const/4 v0, 0x0

    .line 294
    :goto_0
    return v0

    .line 293
    :cond_1
    iput-boolean v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unpair()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 306
    invoke-virtual {p0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    .line 308
    .local v1, state:I
    const/16 v3, 0xb

    if-ne v1, v3, :cond_0

    .line 309
    iget-object v3, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 312
    :cond_0
    const/16 v3, 0xa

    if-eq v1, v3, :cond_1

    .line 313
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 314
    .local v0, dev:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v2

    .line 316
    .local v2, successful:Z
    if-eqz v2, :cond_1

    .line 318
    iget-object v3, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v6}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    .line 319
    const-string v3, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Command sent successfully:REMOVE_BOND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v6}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->setRemovable(Z)V

    .line 328
    .end local v0           #dev:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #successful:Z
    :cond_1
    return-void
.end method

.method unregisterCallback(Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 592
    iget-object v1, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 594
    monitor-exit v1

    .line 595
    return-void

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
