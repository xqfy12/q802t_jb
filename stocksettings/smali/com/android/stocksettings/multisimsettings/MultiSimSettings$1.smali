.class Lcom/android/stocksettings/multisimsettings/MultiSimSettings$1;
.super Landroid/os/Handler;
.source "MultiSimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/multisimsettings/MultiSimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/multisimsettings/MultiSimSettings;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/multisimsettings/MultiSimSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$1;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 131
    const-string v6, "MultiSimSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "msg.what = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 134
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 135
    .local v1, bundle:Landroid/os/Bundle;
    const-string v6, "needDismiss"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 136
    .local v4, needDismiss:Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 137
    iget-object v6, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$1;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimSettings;

    #getter for: Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->access$000(Lcom/android/stocksettings/multisimsettings/MultiSimSettings;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 138
    iget-object v6, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$1;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimSettings;

    #getter for: Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->access$000(Lcom/android/stocksettings/multisimsettings/MultiSimSettings;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    :cond_0
    iget-object v6, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$1;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimSettings;

    #calls: Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->dismissProgressDialog(I)V
    invoke-static {v6, v9}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->access$100(Lcom/android/stocksettings/multisimsettings/MultiSimSettings;I)V

    .line 141
    :cond_1
    iget-object v6, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$1;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimSettings;

    #calls: Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->resume()V
    invoke-static {v6}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->access$200(Lcom/android/stocksettings/multisimsettings/MultiSimSettings;)V

    goto :goto_0

    .line 144
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #needDismiss:Ljava/lang/Boolean;
    :pswitch_1
    iget-object v6, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$1;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimSettings;

    const/4 v7, 0x0

    #calls: Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->showProgressDialog(ILandroid/os/Message;)V
    invoke-static {v6, v10, v7}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->access$300(Lcom/android/stocksettings/multisimsettings/MultiSimSettings;ILandroid/os/Message;)V

    goto :goto_0

    .line 147
    :pswitch_2
    iget-object v6, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$1;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimSettings;

    #calls: Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->showProgressDialog(ILandroid/os/Message;)V
    invoke-static {v6, v9, p1}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->access$300(Lcom/android/stocksettings/multisimsettings/MultiSimSettings;ILandroid/os/Message;)V

    goto :goto_0

    .line 150
    :pswitch_3
    iget-object v6, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$1;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimSettings;

    #calls: Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->dismissProgressDialog(I)V
    invoke-static {v6, v10}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->access$100(Lcom/android/stocksettings/multisimsettings/MultiSimSettings;I)V

    goto :goto_0

    .line 153
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 154
    .local v2, dataChangedMessage:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$1;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimSettings;

    const/4 v7, 0x2

    const/4 v8, -0x1

    #calls: Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->showDialog(ILjava/lang/String;I)V
    invoke-static {v6, v7, v2, v8}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->access$400(Lcom/android/stocksettings/multisimsettings/MultiSimSettings;ILjava/lang/String;I)V

    goto :goto_0

    .line 157
    .end local v2           #dataChangedMessage:Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 158
    .local v0, b:Landroid/os/Bundle;
    const-string v6, "message"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, disEnableMessage:Ljava/lang/String;
    const-string v6, "mSubId"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 160
    .local v5, subId:I
    iget-object v6, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$1;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimSettings;

    const/4 v7, 0x3

    #calls: Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->showDialog(ILjava/lang/String;I)V
    invoke-static {v6, v7, v3, v5}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->access$400(Lcom/android/stocksettings/multisimsettings/MultiSimSettings;ILjava/lang/String;I)V

    goto :goto_0

    .line 163
    .end local v0           #b:Landroid/os/Bundle;
    .end local v3           #disEnableMessage:Ljava/lang/String;
    .end local v5           #subId:I
    :pswitch_6
    iget-object v6, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$1;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimSettings;

    #calls: Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->dismissProgressDialog(I)V
    invoke-static {v6, v9}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->access$100(Lcom/android/stocksettings/multisimsettings/MultiSimSettings;I)V

    .line 164
    iget-object v6, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$1;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimSettings;

    #calls: Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->resume()V
    invoke-static {v6}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->access$200(Lcom/android/stocksettings/multisimsettings/MultiSimSettings;)V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method
