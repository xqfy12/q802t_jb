.class Lcom/android/stocksettings/MediaFormat$1;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/MediaFormat;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/MediaFormat;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/stocksettings/MediaFormat$1;->this$0:Lcom/android/stocksettings/MediaFormat;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 60
    invoke-static {}, Lcom/android/stocksettings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 68
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/stocksettings/MediaFormat$1;->this$0:Lcom/android/stocksettings/MediaFormat;

    #getter for: Lcom/android/stocksettings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v2}, Lcom/android/stocksettings/MediaFormat;->access$000(Lcom/android/stocksettings/MediaFormat;)Landroid/os/storage/StorageVolume;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 69
    iget-object v1, p0, Lcom/android/stocksettings/MediaFormat$1;->this$0:Lcom/android/stocksettings/MediaFormat;

    invoke-virtual {v1, v0}, Lcom/android/stocksettings/MediaFormat;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 70
    iget-object v1, p0, Lcom/android/stocksettings/MediaFormat$1;->this$0:Lcom/android/stocksettings/MediaFormat;

    invoke-virtual {v1}, Lcom/android/stocksettings/MediaFormat;->finish()V

    goto :goto_0
.end method
