.class Lcom/android/stocksettings/bluetooth/DeviceProfilesSettings$1;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/bluetooth/DeviceProfilesSettings;

.field final synthetic val$device:Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;

.field final synthetic val$profile:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/bluetooth/DeviceProfilesSettings;Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/stocksettings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/stocksettings/bluetooth/DeviceProfilesSettings;

    iput-object p2, p0, Lcom/android/stocksettings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;

    iput-object p3, p0, Lcom/android/stocksettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/stocksettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;)V

    .line 307
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;

    iget-object v1, p0, Lcom/android/stocksettings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/stocksettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/stocksettings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 308
    return-void
.end method
