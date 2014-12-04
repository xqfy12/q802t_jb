.class Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiSimConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$1;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$1;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->access$000(Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;Ljava/lang/String;)V

    .line 105
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$1;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;

    #calls: Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->setScreenState()V
    invoke-static {v1}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->access$100(Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;)V

    .line 109
    :cond_1
    return-void
.end method
