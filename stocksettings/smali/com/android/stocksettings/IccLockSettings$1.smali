.class Lcom/android/stocksettings/IccLockSettings$1;
.super Landroid/os/Handler;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/IccLockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/stocksettings/IccLockSettings$1;->this$0:Lcom/android/stocksettings/IccLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 105
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 106
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 108
    :pswitch_0
    iget-object v1, p0, Lcom/android/stocksettings/IccLockSettings$1;->this$0:Lcom/android/stocksettings/IccLockSettings;

    #calls: Lcom/android/stocksettings/IccLockSettings;->iccLockChanged(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/stocksettings/IccLockSettings;->access$000(Lcom/android/stocksettings/IccLockSettings;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v1, p0, Lcom/android/stocksettings/IccLockSettings$1;->this$0:Lcom/android/stocksettings/IccLockSettings;

    #calls: Lcom/android/stocksettings/IccLockSettings;->iccPinChanged(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/stocksettings/IccLockSettings;->access$100(Lcom/android/stocksettings/IccLockSettings;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 114
    :pswitch_2
    iget-object v1, p0, Lcom/android/stocksettings/IccLockSettings$1;->this$0:Lcom/android/stocksettings/IccLockSettings;

    #calls: Lcom/android/stocksettings/IccLockSettings;->updatePreferences()V
    invoke-static {v1}, Lcom/android/stocksettings/IccLockSettings;->access$200(Lcom/android/stocksettings/IccLockSettings;)V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
