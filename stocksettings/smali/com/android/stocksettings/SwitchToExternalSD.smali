.class public Lcom/android/stocksettings/SwitchToExternalSD;
.super Lcom/android/internal/app/AlertActivity;
.source "SwitchToExternalSD.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private chooseFlag:Z

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stocksettings/SwitchToExternalSD;->chooseFlag:Z

    return-void
.end method

.method private createDialog()V
    .locals 4

    .prologue
    const/16 v3, 0xf

    const/4 v2, 0x5

    .line 61
    iget-object v0, p0, Lcom/android/stocksettings/SwitchToExternalSD;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 62
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0b0864

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/SwitchToExternalSD;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 63
    invoke-direct {p0}, Lcom/android/stocksettings/SwitchToExternalSD;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 65
    iput v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingLeft:I

    .line 66
    iput v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingRight:I

    .line 67
    iput v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingTop:I

    .line 68
    iput v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingBottom:I

    .line 69
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/SwitchToExternalSD;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 70
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 71
    const/high16 v1, 0x104

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/SwitchToExternalSD;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 72
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    invoke-virtual {p0}, Lcom/android/stocksettings/SwitchToExternalSD;->setupAlert()V

    .line 74
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, messageView:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030044

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 79
    const v1, 0x7f0b0865

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 80
    return-object v0
.end method

.method private onCancel()V
    .locals 2

    .prologue
    .line 120
    const-string v0, "SwitchToExternalSD"

    const-string v1, "onCancel entry"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0}, Lcom/android/stocksettings/SwitchToExternalSD;->finish()V

    .line 122
    return-void
.end method

.method private onOK()V
    .locals 8

    .prologue
    .line 89
    const-string v5, "SwitchToExternalSD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onOK entry chooseFlag= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/stocksettings/SwitchToExternalSD;->chooseFlag:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v5, "persist.sys.isExternalSdFirst"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v3, Landroid/content/Intent;

    const-string v5, "intent.action.externalSdMode"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "mode"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, v3}, Lcom/android/stocksettings/SwitchToExternalSD;->sendBroadcast(Landroid/content/Intent;)V

    .line 98
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rm -rf "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Environment;->getExternalStorageAndroidDataDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, delPath:Ljava/lang/String;
    const-string v5, "SwitchToExternalSD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delPath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 101
    .local v4, process:Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .line 102
    .local v2, exitValue:I
    const-string v5, "SwitchToExternalSD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exitValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "rm -rf /storage/sdcard1/Android/data"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 104
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .line 105
    const-string v5, "SwitchToExternalSD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exitValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v0           #delPath:Ljava/lang/String;
    .end local v2           #exitValue:I
    .end local v4           #process:Ljava/lang/Process;
    :goto_0
    const-string v5, "SwitchToExternalSD"

    const-string v6, "sendBroadcast externalSdMode 1"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v5, p0, Lcom/android/stocksettings/SwitchToExternalSD;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v5, :cond_0

    .line 112
    iget-object v5, p0, Lcom/android/stocksettings/SwitchToExternalSD;->mPowerManager:Landroid/os/PowerManager;

    const-string v6, "switchExternalSDMode"

    invoke-virtual {v5, v6}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 115
    :goto_1
    return-void

    .line 106
    :catch_0
    move-exception v1

    .line 108
    .local v1, e:Ljava/lang/Throwable;
    const-string v5, "SwitchToExternalSD"

    const-string v6, "error="

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 114
    .end local v1           #e:Ljava/lang/Throwable;
    :cond_0
    const-string v5, "SwitchToExternalSD"

    const-string v6, "onOK entry mPowerManager= null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 125
    const-string v0, "SwitchToExternalSD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(DialogInterface dialog, int which) entry which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    packed-switch p2, :pswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 128
    :pswitch_0
    invoke-direct {p0}, Lcom/android/stocksettings/SwitchToExternalSD;->onOK()V

    goto :goto_0

    .line 131
    :pswitch_1
    invoke-direct {p0}, Lcom/android/stocksettings/SwitchToExternalSD;->onCancel()V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/stocksettings/SwitchToExternalSD;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "chooseFlag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/stocksettings/SwitchToExternalSD;->chooseFlag:Z

    .line 55
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/SwitchToExternalSD;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/stocksettings/SwitchToExternalSD;->mPowerManager:Landroid/os/PowerManager;

    .line 56
    const-string v0, "SwitchToExternalSD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StorageDefaultPathDialog onCreate() chooseFlag= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/stocksettings/SwitchToExternalSD;->chooseFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-direct {p0}, Lcom/android/stocksettings/SwitchToExternalSD;->createDialog()V

    .line 58
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 85
    invoke-virtual {p0}, Lcom/android/stocksettings/SwitchToExternalSD;->finish()V

    .line 86
    return-void
.end method
