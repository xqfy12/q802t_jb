.class public Lcom/android/stocksettings/deviceinfo/SDRise;
.super Landroid/app/Activity;
.source "SDRise.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v2, 0x7f05003f

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/deviceinfo/SDRise;->setContentView(I)V

    .line 17
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/SDRise;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 19
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UPDATE_FROM_SD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "data_type"

    const-string v3, "data_type"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 21
    const-string v2, "updatefile"

    const-string v3, "updateFile"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    const-string v2, "HWY"

    const-string v3, "SDRise,oncreat()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/SDRise;->sendBroadcast(Landroid/content/Intent;)V

    .line 24
    return-void
.end method
