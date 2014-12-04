.class Lcom/android/stocksettings/MasterClearConfirm$1;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/MasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/MasterClearConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/stocksettings/MasterClearConfirm$1;->this$0:Lcom/android/stocksettings/MasterClearConfirm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 117
    invoke-static {}, Lcom/android/stocksettings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v3, p0, Lcom/android/stocksettings/MasterClearConfirm$1;->this$0:Lcom/android/stocksettings/MasterClearConfirm;

    const-string v4, "/persist/autorun.conf"

    invoke-virtual {v3, v4}, Lcom/android/stocksettings/MasterClearConfirm;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, autorun_check:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 124
    iget-object v3, p0, Lcom/android/stocksettings/MasterClearConfirm$1;->this$0:Lcom/android/stocksettings/MasterClearConfirm;

    invoke-virtual {v3, v0}, Lcom/android/stocksettings/MasterClearConfirm;->writeFile(Ljava/lang/String;)V

    .line 127
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "intent.action.externalSdMode"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v2, intent1:Landroid/content/Intent;
    const-string v3, "mode"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    iget-object v3, p0, Lcom/android/stocksettings/MasterClearConfirm$1;->this$0:Lcom/android/stocksettings/MasterClearConfirm;

    invoke-virtual {v3}, Lcom/android/stocksettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 130
    const-string v3, "MasterClearConfirm"

    const-string v4, "sendBroadcast externalSdMode 0"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v3, "MasterClearConfirm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFinalClickListener mEraseSdCard= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/stocksettings/MasterClearConfirm$1;->this$0:Lcom/android/stocksettings/MasterClearConfirm;

    #getter for: Lcom/android/stocksettings/MasterClearConfirm;->mEraseSdCard:Z
    invoke-static {v5}, Lcom/android/stocksettings/MasterClearConfirm;->access$000(Lcom/android/stocksettings/MasterClearConfirm;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mEraseInternalSdCard "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/stocksettings/MasterClearConfirm$1;->this$0:Lcom/android/stocksettings/MasterClearConfirm;

    #getter for: Lcom/android/stocksettings/MasterClearConfirm;->mEraseInternalSdCard:Z
    invoke-static {v5}, Lcom/android/stocksettings/MasterClearConfirm;->access$100(Lcom/android/stocksettings/MasterClearConfirm;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Lcom/android/stocksettings/Utils;->isStorageEncrypted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    iget-object v3, p0, Lcom/android/stocksettings/MasterClearConfirm$1;->this$0:Lcom/android/stocksettings/MasterClearConfirm;

    invoke-virtual {v3}, Lcom/android/stocksettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 136
    :cond_2
    iget-object v3, p0, Lcom/android/stocksettings/MasterClearConfirm$1;->this$0:Lcom/android/stocksettings/MasterClearConfirm;

    #getter for: Lcom/android/stocksettings/MasterClearConfirm;->mEraseSdCard:Z
    invoke-static {v3}, Lcom/android/stocksettings/MasterClearConfirm;->access$000(Lcom/android/stocksettings/MasterClearConfirm;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/stocksettings/MasterClearConfirm$1;->this$0:Lcom/android/stocksettings/MasterClearConfirm;

    #getter for: Lcom/android/stocksettings/MasterClearConfirm;->mEraseInternalSdCard:Z
    invoke-static {v3}, Lcom/android/stocksettings/MasterClearConfirm;->access$100(Lcom/android/stocksettings/MasterClearConfirm;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 137
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, intent:Landroid/content/Intent;
    sget-object v3, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 139
    const-string v3, "erase_sd"

    iget-object v4, p0, Lcom/android/stocksettings/MasterClearConfirm$1;->this$0:Lcom/android/stocksettings/MasterClearConfirm;

    #getter for: Lcom/android/stocksettings/MasterClearConfirm;->mEraseSdCard:Z
    invoke-static {v4}, Lcom/android/stocksettings/MasterClearConfirm;->access$000(Lcom/android/stocksettings/MasterClearConfirm;)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    const-string v3, "erase_internal_sd"

    iget-object v4, p0, Lcom/android/stocksettings/MasterClearConfirm$1;->this$0:Lcom/android/stocksettings/MasterClearConfirm;

    #getter for: Lcom/android/stocksettings/MasterClearConfirm;->mEraseInternalSdCard:Z
    invoke-static {v4}, Lcom/android/stocksettings/MasterClearConfirm;->access$100(Lcom/android/stocksettings/MasterClearConfirm;)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    iget-object v3, p0, Lcom/android/stocksettings/MasterClearConfirm$1;->this$0:Lcom/android/stocksettings/MasterClearConfirm;

    invoke-virtual {v3}, Lcom/android/stocksettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 143
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v3, p0, Lcom/android/stocksettings/MasterClearConfirm$1;->this$0:Lcom/android/stocksettings/MasterClearConfirm;

    invoke-virtual {v3}, Lcom/android/stocksettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
