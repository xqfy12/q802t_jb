.class Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"

# interfaces
.implements Lcom/android/stocksettings/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateChangedHandler"
.end annotation


# instance fields
.field final mProfile:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;

.field final synthetic this$0:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .parameter
    .parameter "profile"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p2, p0, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;

    .line 235
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    const/4 v6, 0x0

    .line 238
    iget-object v3, p0, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;

    #getter for: Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/stocksettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;->access$000(Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/stocksettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 239
    .local v0, cachedDevice:Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    .line 240
    const-string v3, "LocalBluetoothProfileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StateChangedHandler found new device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v3, p0, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;

    #getter for: Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/stocksettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;->access$000(Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/stocksettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;

    #getter for: Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v4}, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;->access$100(Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3, v4, v5, p3}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 244
    :cond_0
    const-string v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 245
    .local v1, newState:I
    const-string v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 246
    .local v2, oldState:I
    if-nez v1, :cond_1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 248
    const-string v3, "LocalBluetoothProfileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to connect "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " device"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_1
    iget-object v3, p0, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0, v3, v1}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;I)V

    .line 252
    invoke-virtual {v0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 253
    return-void
.end method
