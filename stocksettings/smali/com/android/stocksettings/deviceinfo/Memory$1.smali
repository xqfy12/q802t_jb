.class Lcom/android/stocksettings/deviceinfo/Memory$1;
.super Landroid/os/storage/StorageEventListener;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/deviceinfo/Memory;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/stocksettings/deviceinfo/Memory$1;->this$0:Lcom/android/stocksettings/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 220
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received storage state changed notification that "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changed state from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory$1;->this$0:Lcom/android/stocksettings/deviceinfo/Memory;

    #getter for: Lcom/android/stocksettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v3}, Lcom/android/stocksettings/deviceinfo/Memory;->access$000(Lcom/android/stocksettings/deviceinfo/Memory;)Landroid/os/storage/StorageManager;

    invoke-static {}, Landroid/os/storage/StorageManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/storage/sdcard1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory$1;->this$0:Lcom/android/stocksettings/deviceinfo/Memory;

    #getter for: Lcom/android/stocksettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v3}, Lcom/android/stocksettings/deviceinfo/Memory;->access$000(Lcom/android/stocksettings/deviceinfo/Memory;)Landroid/os/storage/StorageManager;

    move-result-object v3

    const-string v4, "/storage/sdcard1"

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 225
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory$1;->this$0:Lcom/android/stocksettings/deviceinfo/Memory;

    #getter for: Lcom/android/stocksettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v3}, Lcom/android/stocksettings/deviceinfo/Memory;->access$000(Lcom/android/stocksettings/deviceinfo/Memory;)Landroid/os/storage/StorageManager;

    const-string v3, "/storage/sdcard0"

    invoke-static {v3}, Landroid/os/storage/StorageManager;->setDefaultPath(Ljava/lang/String;)V

    .line 227
    :cond_0
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory$1;->this$0:Lcom/android/stocksettings/deviceinfo/Memory;

    #getter for: Lcom/android/stocksettings/deviceinfo/Memory;->mUiHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/stocksettings/deviceinfo/Memory;->access$200(Lcom/android/stocksettings/deviceinfo/Memory;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/Memory$1;->this$0:Lcom/android/stocksettings/deviceinfo/Memory;

    #getter for: Lcom/android/stocksettings/deviceinfo/Memory;->mUpdateRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/stocksettings/deviceinfo/Memory;->access$100(Lcom/android/stocksettings/deviceinfo/Memory;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 228
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory$1;->this$0:Lcom/android/stocksettings/deviceinfo/Memory;

    #getter for: Lcom/android/stocksettings/deviceinfo/Memory;->mUiHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/stocksettings/deviceinfo/Memory;->access$200(Lcom/android/stocksettings/deviceinfo/Memory;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/Memory$1;->this$0:Lcom/android/stocksettings/deviceinfo/Memory;

    #getter for: Lcom/android/stocksettings/deviceinfo/Memory;->mUpdateRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/stocksettings/deviceinfo/Memory;->access$100(Lcom/android/stocksettings/deviceinfo/Memory;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 230
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/Memory$1;->this$0:Lcom/android/stocksettings/deviceinfo/Memory;

    #getter for: Lcom/android/stocksettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/stocksettings/deviceinfo/Memory;->access$300(Lcom/android/stocksettings/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 231
    .local v0, category:Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 232
    .local v2, volume:Landroid/os/storage/StorageVolume;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    invoke-virtual {v0}, Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;->onStorageStateChanged()V

    .line 237
    .end local v0           #category:Lcom/android/stocksettings/deviceinfo/StorageVolumePreferenceCategory;
    .end local v2           #volume:Landroid/os/storage/StorageVolume;
    :cond_2
    return-void
.end method
