.class Lcom/android/stocksettings/wifi/WifiScanModeActivity$AlertDialogFragment$1;
.super Ljava/lang/Object;
.source "WifiScanModeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/wifi/WifiScanModeActivity$AlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/wifi/WifiScanModeActivity$AlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/wifi/WifiScanModeActivity$AlertDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/stocksettings/wifi/WifiScanModeActivity$AlertDialogFragment$1;->this$0:Lcom/android/stocksettings/wifi/WifiScanModeActivity$AlertDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiScanModeActivity$AlertDialogFragment$1;->this$0:Lcom/android/stocksettings/wifi/WifiScanModeActivity$AlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/stocksettings/wifi/WifiScanModeActivity$AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/wifi/WifiScanModeActivity;

    #calls: Lcom/android/stocksettings/wifi/WifiScanModeActivity;->doNegativeClick()V
    invoke-static {v0}, Lcom/android/stocksettings/wifi/WifiScanModeActivity;->access$000(Lcom/android/stocksettings/wifi/WifiScanModeActivity;)V

    .line 132
    return-void
.end method
