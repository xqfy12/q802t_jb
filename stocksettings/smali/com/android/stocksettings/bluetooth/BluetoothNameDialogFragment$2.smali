.class Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment$2;
.super Ljava/lang/Object;
.source "BluetoothNameDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment$2;->this$0:Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment$2;->this$0:Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment;

    iget-object v1, v1, Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, deviceName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment$2;->this$0:Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment;

    #calls: Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment;->setDeviceName(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment;->access$000(Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment;Ljava/lang/String;)V

    .line 101
    return-void
.end method
