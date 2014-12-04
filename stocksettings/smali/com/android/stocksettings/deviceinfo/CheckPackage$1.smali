.class Lcom/android/stocksettings/deviceinfo/CheckPackage$1;
.super Landroid/content/BroadcastReceiver;
.source "CheckPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/deviceinfo/CheckPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/deviceinfo/CheckPackage;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/deviceinfo/CheckPackage;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage$1;->this$0:Lcom/android/stocksettings/deviceinfo/CheckPackage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const v10, 0x7f0b0813

    const v9, 0x7f0b0810

    const v8, 0x7f0b047c

    const/4 v7, 0x0

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    const-string v4, "plugged"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 54
    .local v1, plugType:I
    const-string v4, "status"

    const/4 v5, 0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 55
    .local v2, status:I
    const-string v4, "voltage"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 56
    .local v3, voltage:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 57
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage$1;->this$0:Lcom/android/stocksettings/deviceinfo/CheckPackage;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/stocksettings/deviceinfo/CheckPackage$1$1;

    invoke-direct {v5, p0}, Lcom/android/stocksettings/deviceinfo/CheckPackage$1$1;-><init>(Lcom/android/stocksettings/deviceinfo/CheckPackage$1;)V

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 68
    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage$1;->this$0:Lcom/android/stocksettings/deviceinfo/CheckPackage;

    iput-boolean v7, v4, Lcom/android/stocksettings/deviceinfo/CheckPackage;->mBatteryOk:Z

    .line 71
    :cond_0
    const-string v4, "CheckPackage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+++++++++++++++wpz++++"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "voltage"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    div-int/lit8 v4, v3, 0x64

    const/16 v5, 0x25

    if-ge v4, v5, :cond_1

    .line 74
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage$1;->this$0:Lcom/android/stocksettings/deviceinfo/CheckPackage;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/stocksettings/deviceinfo/CheckPackage$1$2;

    invoke-direct {v5, p0}, Lcom/android/stocksettings/deviceinfo/CheckPackage$1$2;-><init>(Lcom/android/stocksettings/deviceinfo/CheckPackage$1;)V

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 85
    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage$1;->this$0:Lcom/android/stocksettings/deviceinfo/CheckPackage;

    iput-boolean v7, v4, Lcom/android/stocksettings/deviceinfo/CheckPackage;->mBatteryOk:Z

    .line 89
    .end local v1           #plugType:I
    .end local v2           #status:I
    .end local v3           #voltage:I
    :cond_1
    return-void
.end method
