.class Lcom/android/stocksettings/bluetooth/DockService$3;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/bluetooth/DockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/bluetooth/DockService;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/bluetooth/DockService;)V
    .locals 0
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/stocksettings/bluetooth/DockService$3;->this$0:Lcom/android/stocksettings/bluetooth/DockService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/DockService$3;->this$0:Lcom/android/stocksettings/bluetooth/DockService;

    #getter for: Lcom/android/stocksettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/stocksettings/bluetooth/DockService;->access$400(Lcom/android/stocksettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/DockService$3;->this$0:Lcom/android/stocksettings/bluetooth/DockService;

    iget-object v1, p0, Lcom/android/stocksettings/bluetooth/DockService$3;->this$0:Lcom/android/stocksettings/bluetooth/DockService;

    #getter for: Lcom/android/stocksettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/stocksettings/bluetooth/DockService;->access$400(Lcom/android/stocksettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/stocksettings/bluetooth/LocalBluetoothPreferences;->saveDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 586
    :goto_0
    return-void

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/DockService$3;->this$0:Lcom/android/stocksettings/bluetooth/DockService;

    invoke-virtual {v0}, Lcom/android/stocksettings/bluetooth/DockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dock_audio_media_enabled"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
