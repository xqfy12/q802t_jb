.class Lcom/android/stocksettings/LocationSettings$1;
.super Landroid/os/Handler;
.source "LocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/LocationSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/stocksettings/LocationSettings$1;->this$0:Lcom/android/stocksettings/LocationSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 117
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 110
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/stocksettings/LocationSettings$1;->this$0:Lcom/android/stocksettings/LocationSettings;

    #getter for: Lcom/android/stocksettings/LocationSettings;->mIZat:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/stocksettings/LocationSettings;->access$000(Lcom/android/stocksettings/LocationSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 112
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/stocksettings/LocationSettings$1;->this$0:Lcom/android/stocksettings/LocationSettings;

    #getter for: Lcom/android/stocksettings/LocationSettings;->mIZat:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/stocksettings/LocationSettings;->access$000(Lcom/android/stocksettings/LocationSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
