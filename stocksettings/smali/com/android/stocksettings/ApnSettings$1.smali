.class Lcom/android/stocksettings/ApnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/ApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/stocksettings/ApnSettings$1;->this$0:Lcom/android/stocksettings/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    #calls: Lcom/android/stocksettings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {p2}, Lcom/android/stocksettings/ApnSettings;->access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 112
    .local v0, state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    sget-object v1, Lcom/android/stocksettings/ApnSettings$2;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 122
    .end local v0           #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/android/stocksettings/ApnSettings$1;->this$0:Lcom/android/stocksettings/ApnSettings;

    #calls: Lcom/android/stocksettings/ApnSettings;->setScreenEnabled()V
    invoke-static {v1}, Lcom/android/stocksettings/ApnSettings;->access$300(Lcom/android/stocksettings/ApnSettings;)V

    .line 125
    iget-object v1, p0, Lcom/android/stocksettings/ApnSettings$1;->this$0:Lcom/android/stocksettings/ApnSettings;

    invoke-virtual {v1}, Lcom/android/stocksettings/ApnSettings;->invalidateOptionsMenu()V

    .line 127
    :cond_2
    return-void

    .line 114
    .restart local v0       #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :pswitch_0
    invoke-static {}, Lcom/android/stocksettings/ApnSettings;->access$100()Z

    move-result v1

    if-nez v1, :cond_3

    .line 115
    iget-object v1, p0, Lcom/android/stocksettings/ApnSettings$1;->this$0:Lcom/android/stocksettings/ApnSettings;

    #calls: Lcom/android/stocksettings/ApnSettings;->fillList()V
    invoke-static {v1}, Lcom/android/stocksettings/ApnSettings;->access$200(Lcom/android/stocksettings/ApnSettings;)V

    goto :goto_0

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/android/stocksettings/ApnSettings$1;->this$0:Lcom/android/stocksettings/ApnSettings;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Lcom/android/stocksettings/ApnSettings;->showDialog(I)V

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
