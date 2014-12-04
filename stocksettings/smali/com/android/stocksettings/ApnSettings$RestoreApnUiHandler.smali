.class Lcom/android/stocksettings/ApnSettings$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/android/stocksettings/ApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/stocksettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/stocksettings/ApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stocksettings/ApnSettings;Lcom/android/stocksettings/ApnSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/android/stocksettings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/stocksettings/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 406
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 419
    :goto_0
    return-void

    .line 408
    :pswitch_0
    iget-object v0, p0, Lcom/android/stocksettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/stocksettings/ApnSettings;

    #calls: Lcom/android/stocksettings/ApnSettings;->fillList()V
    invoke-static {v0}, Lcom/android/stocksettings/ApnSettings;->access$200(Lcom/android/stocksettings/ApnSettings;)V

    .line 409
    iget-object v0, p0, Lcom/android/stocksettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/stocksettings/ApnSettings;

    invoke-virtual {v0}, Lcom/android/stocksettings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 410
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/stocksettings/ApnSettings;->access$102(Z)Z

    .line 411
    iget-object v0, p0, Lcom/android/stocksettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/stocksettings/ApnSettings;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/ApnSettings;->dismissDialog(I)V

    .line 412
    iget-object v0, p0, Lcom/android/stocksettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/stocksettings/ApnSettings;

    iget-object v1, p0, Lcom/android/stocksettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/stocksettings/ApnSettings;

    invoke-virtual {v1}, Lcom/android/stocksettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b039b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
