.class Lcom/android/stocksettings/bluetooth/BluetoothEventManager$UuidChangedHandler;
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
    name = "UuidChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/stocksettings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/stocksettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/stocksettings/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stocksettings/bluetooth/BluetoothEventManager;Lcom/android/stocksettings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lcom/android/stocksettings/bluetooth/BluetoothEventManager$UuidChangedHandler;-><init>(Lcom/android/stocksettings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/stocksettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/stocksettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/stocksettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v0}, Lcom/android/stocksettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/stocksettings/bluetooth/BluetoothEventManager;)Lcom/android/stocksettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDeviceManager;->onUuidChanged(Landroid/bluetooth/BluetoothDevice;)V

    .line 350
    return-void
.end method
