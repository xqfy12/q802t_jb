.class Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment$3;
.super Ljava/lang/Object;
.source "BluetoothNameDialogFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment;->createDialogView(Ljava/lang/String;)Landroid/view/View;
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
    .line 132
    iput-object p1, p0, Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 135
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment;->setDeviceName(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment;->access$000(Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment;

    #getter for: Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment;->access$100(Lcom/android/stocksettings/bluetooth/BluetoothNameDialogFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 138
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
