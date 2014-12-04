.class Lcom/android/stocksettings/StorageDefaultPathDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "StorageDefaultPathDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/StorageDefaultPathDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/StorageDefaultPathDialog;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/StorageDefaultPathDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/stocksettings/StorageDefaultPathDialog$1;->this$0:Lcom/android/stocksettings/StorageDefaultPathDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/stocksettings/StorageDefaultPathDialog$1;->this$0:Lcom/android/stocksettings/StorageDefaultPathDialog;

    invoke-virtual {v1}, Lcom/android/stocksettings/StorageDefaultPathDialog;->finish()V

    .line 114
    :cond_0
    return-void
.end method
