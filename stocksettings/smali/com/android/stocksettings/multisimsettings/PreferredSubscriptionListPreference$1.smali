.class Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference$1;
.super Landroid/os/Handler;
.source "PreferredSubscriptionListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference$1;->this$0:Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const v9, 0x7f0b0734

    const/4 v8, 0x1

    .line 175
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 176
    .local v0, ar:Landroid/os/AsyncResult;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 216
    :goto_0
    return-void

    .line 178
    :pswitch_0
    const-string v5, "PreferredSubscriptionListPreference"

    const-string v6, "EVENT_SET_DATA_SUBSCRIPTION_DONE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v5, p0, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference$1;->this$0:Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    #getter for: Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->mMultiSimHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->access$000(Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 181
    iget-object v5, p0, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference$1;->this$0:Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    invoke-virtual {v5, v8}, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->setEnabled(Z)V

    .line 182
    iget-object v5, p0, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference$1;->this$0:Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    #calls: Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->handlePreferredSubscriptionChanged()V
    invoke-static {v5}, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->access$100(Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;)V

    .line 184
    iget-object v5, p0, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference$1;->this$0:Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    #getter for: Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->mMultiSimHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->access$000(Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 185
    .local v1, message:Landroid/os/Message;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    .line 187
    iget-object v5, p0, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference$1;->this$0:Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    #getter for: Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->access$200(Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, status:Ljava/lang/String;
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 189
    iget-object v5, p0, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference$1;->this$0:Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    #getter for: Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->mMultiSimHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->access$000(Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 196
    .end local v3           #status:Ljava/lang/String;
    :cond_0
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 198
    .local v2, result:Z
    const-string v5, "PreferredSubscriptionListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SET_DATA_SUBSCRIPTION_DONE: result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    if-ne v2, v8, :cond_1

    .line 201
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->setDataSubscription(I)V

    .line 202
    iget-object v5, p0, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference$1;->this$0:Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    iget-object v6, p0, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference$1;->this$0:Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    iget v7, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->getMultiSimName(I)Ljava/lang/CharSequence;
    invoke-static {v6, v7}, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->access$300(Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v5, p0, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference$1;->this$0:Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->setValue(Ljava/lang/String;)V

    .line 204
    iget-object v5, p0, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference$1;->this$0:Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    #getter for: Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->access$200(Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0733

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 205
    .restart local v3       #status:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference$1;->this$0:Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    #getter for: Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->access$200(Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 206
    .local v4, toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 208
    .end local v3           #status:Ljava/lang/String;
    .end local v4           #toast:Landroid/widget/Toast;
    :cond_1
    iget-object v5, p0, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference$1;->this$0:Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    #getter for: Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->access$200(Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 209
    .restart local v3       #status:Ljava/lang/String;
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 210
    iget-object v5, p0, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference$1;->this$0:Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;

    #getter for: Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->mMultiSimHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;->access$000(Lcom/android/stocksettings/multisimsettings/PreferredSubscriptionListPreference;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
