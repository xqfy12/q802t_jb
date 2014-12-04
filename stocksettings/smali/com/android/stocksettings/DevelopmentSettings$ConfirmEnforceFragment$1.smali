.class Lcom/android/stocksettings/DevelopmentSettings$ConfirmEnforceFragment$1;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/DevelopmentSettings$ConfirmEnforceFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/DevelopmentSettings$ConfirmEnforceFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/DevelopmentSettings$ConfirmEnforceFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1327
    iput-object p1, p0, Lcom/android/stocksettings/DevelopmentSettings$ConfirmEnforceFragment$1;->this$0:Lcom/android/stocksettings/DevelopmentSettings$ConfirmEnforceFragment;

    iput-object p2, p0, Lcom/android/stocksettings/DevelopmentSettings$ConfirmEnforceFragment$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/android/stocksettings/DevelopmentSettings$ConfirmEnforceFragment$1;->val$context:Landroid/content/Context;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x1

    #calls: Lcom/android/stocksettings/DevelopmentSettings;->setPermissionEnforced(Landroid/content/Context;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/stocksettings/DevelopmentSettings;->access$000(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1331
    iget-object v0, p0, Lcom/android/stocksettings/DevelopmentSettings$ConfirmEnforceFragment$1;->this$0:Lcom/android/stocksettings/DevelopmentSettings$ConfirmEnforceFragment;

    invoke-virtual {v0}, Lcom/android/stocksettings/DevelopmentSettings$ConfirmEnforceFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/DevelopmentSettings;

    #calls: Lcom/android/stocksettings/DevelopmentSettings;->updateAllOptions()V
    invoke-static {v0}, Lcom/android/stocksettings/DevelopmentSettings;->access$100(Lcom/android/stocksettings/DevelopmentSettings;)V

    .line 1332
    return-void
.end method
