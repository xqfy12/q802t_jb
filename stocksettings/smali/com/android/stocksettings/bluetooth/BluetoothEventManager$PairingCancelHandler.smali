.class Lcom/android/stocksettings/bluetooth/BluetoothEventManager$PairingCancelHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/stocksettings/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PairingCancelHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/stocksettings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/stocksettings/bluetooth/BluetoothEventManager$PairingCancelHandler;->this$0:Lcom/android/stocksettings/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stocksettings/bluetooth/BluetoothEventManager;Lcom/android/stocksettings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/android/stocksettings/bluetooth/BluetoothEventManager$PairingCancelHandler;-><init>(Lcom/android/stocksettings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    .line 355
    if-nez p3, :cond_1

    .line 356
    const-string v2, "BluetoothEventManager"

    const-string v3, "ACTION_PAIRING_CANCEL with no EXTRA_DEVICE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    const v1, 0x7f0b0181

    .line 360
    .local v1, errorMsg:I
    iget-object v2, p0, Lcom/android/stocksettings/bluetooth/BluetoothEventManager$PairingCancelHandler;->this$0:Lcom/android/stocksettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/stocksettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/stocksettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v2}, Lcom/android/stocksettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/stocksettings/bluetooth/BluetoothEventManager;)Lcom/android/stocksettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 361
    .local v0, cachedDevice:Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lcom/android/stocksettings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
