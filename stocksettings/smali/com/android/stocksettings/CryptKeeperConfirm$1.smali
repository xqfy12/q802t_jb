.class Lcom/android/stocksettings/CryptKeeperConfirm$1;
.super Ljava/lang/Object;
.source "CryptKeeperConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/CryptKeeperConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/CryptKeeperConfirm;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/CryptKeeperConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/stocksettings/CryptKeeperConfirm$1;->this$0:Lcom/android/stocksettings/CryptKeeperConfirm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 88
    invoke-static {}, Lcom/android/stocksettings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/stocksettings/CryptKeeperConfirm$1;->this$0:Lcom/android/stocksettings/CryptKeeperConfirm;

    invoke-virtual {v1}, Lcom/android/stocksettings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/stocksettings/CryptKeeperConfirm$Blank;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/stocksettings/CryptKeeperConfirm$1;->this$0:Lcom/android/stocksettings/CryptKeeperConfirm;

    invoke-virtual {v1}, Lcom/android/stocksettings/CryptKeeperConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lcom/android/stocksettings/CryptKeeperConfirm$1;->this$0:Lcom/android/stocksettings/CryptKeeperConfirm;

    invoke-virtual {v1, v0}, Lcom/android/stocksettings/CryptKeeperConfirm;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method