.class Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;
.super Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .parameter
    .parameter "profile"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;->this$0:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager;Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;)V

    .line 261
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;

    check-cast v0, Lcom/android/stocksettings/bluetooth/PanProfile;

    .line 266
    .local v0, panProfile:Lcom/android/stocksettings/bluetooth/PanProfile;
    const-string v2, "android.bluetooth.pan.extra.LOCAL_ROLE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 267
    .local v1, role:I
    invoke-virtual {v0, p3, v1}, Lcom/android/stocksettings/bluetooth/PanProfile;->setLocalRole(Landroid/bluetooth/BluetoothDevice;I)V

    .line 268
    invoke-super {p0, p1, p2, p3}, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    .line 269
    return-void
.end method
