.class Lcom/android/stocksettings/bluetooth/BluetoothEventManager$DockEventHandler;
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
    name = "DockEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/stocksettings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/stocksettings/bluetooth/BluetoothEventManager$DockEventHandler;->this$0:Lcom/android/stocksettings/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stocksettings/bluetooth/BluetoothEventManager;Lcom/android/stocksettings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/android/stocksettings/bluetooth/BluetoothEventManager$DockEventHandler;-><init>(Lcom/android/stocksettings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    .line 370
    const/4 v0, 0x1

    .line 371
    .local v0, anythingButUnDocked:I
    const-string v3, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 372
    .local v2, state:I
    if-nez v2, :cond_0

    .line 373
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 374
    iget-object v3, p0, Lcom/android/stocksettings/bluetooth/BluetoothEventManager$DockEventHandler;->this$0:Lcom/android/stocksettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/stocksettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/stocksettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/android/stocksettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/stocksettings/bluetooth/BluetoothEventManager;)Lcom/android/stocksettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 375
    .local v1, cachedDevice:Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;
    if-eqz v1, :cond_0

    .line 376
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 380
    .end local v1           #cachedDevice:Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;
    :cond_0
    return-void
.end method
