.class Lcom/android/stocksettings/CryptKeeper$1;
.super Landroid/os/Handler;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/CryptKeeper;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/stocksettings/CryptKeeper$1;->this$0:Lcom/android/stocksettings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 216
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 229
    :goto_0
    return-void

    .line 218
    :pswitch_0
    iget-object v0, p0, Lcom/android/stocksettings/CryptKeeper$1;->this$0:Lcom/android/stocksettings/CryptKeeper;

    #calls: Lcom/android/stocksettings/CryptKeeper;->updateProgress()V
    invoke-static {v0}, Lcom/android/stocksettings/CryptKeeper;->access$700(Lcom/android/stocksettings/CryptKeeper;)V

    goto :goto_0

    .line 222
    :pswitch_1
    iget-object v0, p0, Lcom/android/stocksettings/CryptKeeper$1;->this$0:Lcom/android/stocksettings/CryptKeeper;

    #calls: Lcom/android/stocksettings/CryptKeeper;->cooldown()V
    invoke-static {v0}, Lcom/android/stocksettings/CryptKeeper;->access$200(Lcom/android/stocksettings/CryptKeeper;)V

    goto :goto_0

    .line 226
    :pswitch_2
    iget-object v0, p0, Lcom/android/stocksettings/CryptKeeper$1;->this$0:Lcom/android/stocksettings/CryptKeeper;

    #calls: Lcom/android/stocksettings/CryptKeeper;->notifyUser()V
    invoke-static {v0}, Lcom/android/stocksettings/CryptKeeper;->access$800(Lcom/android/stocksettings/CryptKeeper;)V

    goto :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
