.class Lcom/android/stocksettings/PhoneInfo$1;
.super Landroid/os/Handler;
.source "PhoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/PhoneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/PhoneInfo;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/PhoneInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/stocksettings/PhoneInfo$1;->this$0:Lcom/android/stocksettings/PhoneInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 171
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 194
    const-string v1, "PhoneInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_0
    return-void

    .line 173
    :pswitch_0
    iget-object v1, p0, Lcom/android/stocksettings/PhoneInfo$1;->this$0:Lcom/android/stocksettings/PhoneInfo;

    #calls: Lcom/android/stocksettings/PhoneInfo;->updateTuneAwayStatus()V
    invoke-static {v1}, Lcom/android/stocksettings/PhoneInfo;->access$000(Lcom/android/stocksettings/PhoneInfo;)V

    goto :goto_0

    .line 177
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 178
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 179
    const-string v1, "PhoneInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SET_TUNE_AWAY_DONE: returned Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, Lcom/android/stocksettings/PhoneInfo$1;->this$0:Lcom/android/stocksettings/PhoneInfo;

    #calls: Lcom/android/stocksettings/PhoneInfo;->updateTuneAwayState()V
    invoke-static {v1}, Lcom/android/stocksettings/PhoneInfo;->access$100(Lcom/android/stocksettings/PhoneInfo;)V

    goto :goto_0

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/android/stocksettings/PhoneInfo$1;->this$0:Lcom/android/stocksettings/PhoneInfo;

    #getter for: Lcom/android/stocksettings/PhoneInfo;->mTuneAway:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/stocksettings/PhoneInfo;->access$300(Lcom/android/stocksettings/PhoneInfo;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/PhoneInfo$1;->this$0:Lcom/android/stocksettings/PhoneInfo;

    #getter for: Lcom/android/stocksettings/PhoneInfo;->mTuneAwayValue:Z
    invoke-static {v2}, Lcom/android/stocksettings/PhoneInfo;->access$200(Lcom/android/stocksettings/PhoneInfo;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 186
    iget-object v1, p0, Lcom/android/stocksettings/PhoneInfo$1;->this$0:Lcom/android/stocksettings/PhoneInfo;

    #getter for: Lcom/android/stocksettings/PhoneInfo;->mTuneAway:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/stocksettings/PhoneInfo;->access$300(Lcom/android/stocksettings/PhoneInfo;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    iget-object v1, p0, Lcom/android/stocksettings/PhoneInfo$1;->this$0:Lcom/android/stocksettings/PhoneInfo;

    #getter for: Lcom/android/stocksettings/PhoneInfo;->mTuneAwayValue:Z
    invoke-static {v1}, Lcom/android/stocksettings/PhoneInfo;->access$200(Lcom/android/stocksettings/PhoneInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0b0458

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 188
    iget-object v1, p0, Lcom/android/stocksettings/PhoneInfo$1;->this$0:Lcom/android/stocksettings/PhoneInfo;

    invoke-virtual {v1}, Lcom/android/stocksettings/PhoneInfo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tune_away"

    iget-object v1, p0, Lcom/android/stocksettings/PhoneInfo$1;->this$0:Lcom/android/stocksettings/PhoneInfo;

    #getter for: Lcom/android/stocksettings/PhoneInfo;->mTuneAwayValue:Z
    invoke-static {v1}, Lcom/android/stocksettings/PhoneInfo;->access$200(Lcom/android/stocksettings/PhoneInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 186
    :cond_1
    const v1, 0x7f0b0457

    goto :goto_1

    .line 188
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 171
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
