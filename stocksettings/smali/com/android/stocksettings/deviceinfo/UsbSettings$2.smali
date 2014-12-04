.class Lcom/android/stocksettings/deviceinfo/UsbSettings$2;
.super Landroid/os/storage/StorageEventListener;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/deviceinfo/UsbSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/stocksettings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    const/4 v4, 0x0

    .line 138
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStorageStateChanged path= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " oldState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newState= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 142
    .local v0, isExternalPath:Z
    const-string v1, "shared"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    if-eqz v0, :cond_1

    .line 144
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/stocksettings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Lcom/android/stocksettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b07da

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 160
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/stocksettings/deviceinfo/UsbSettings;

    #calls: Lcom/android/stocksettings/deviceinfo/UsbSettings;->updateUsbFunctionState()V
    invoke-static {v1}, Lcom/android/stocksettings/deviceinfo/UsbSettings;->access$200(Lcom/android/stocksettings/deviceinfo/UsbSettings;)V

    .line 161
    return-void

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/stocksettings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Lcom/android/stocksettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b07d8

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 150
    :cond_2
    const-string v1, "shared"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "unmounted"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    if-eqz v0, :cond_3

    .line 153
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/stocksettings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Lcom/android/stocksettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b07db

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 156
    :cond_3
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/stocksettings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Lcom/android/stocksettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b07d9

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
