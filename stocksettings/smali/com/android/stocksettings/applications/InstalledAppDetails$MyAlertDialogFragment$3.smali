.class Lcom/android/stocksettings/applications/InstalledAppDetails$MyAlertDialogFragment$3;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/applications/InstalledAppDetails$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/applications/InstalledAppDetails$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/applications/InstalledAppDetails$MyAlertDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails$MyAlertDialogFragment$3;->this$0:Lcom/android/stocksettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 1121
    iget-object v0, p0, Lcom/android/stocksettings/applications/InstalledAppDetails$MyAlertDialogFragment$3;->this$0:Lcom/android/stocksettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/stocksettings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/stocksettings/applications/InstalledAppDetails;

    move-result-object v0

    #calls: Lcom/android/stocksettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/android/stocksettings/applications/InstalledAppDetails;->access$700(Lcom/android/stocksettings/applications/InstalledAppDetails;ZZ)V

    .line 1122
    return-void
.end method