.class Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference$3;
.super Ljava/lang/Object;
.source "MultiSimEnablerPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference$3;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 547
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference$3;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    #setter for: Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mShowAlertDialog:Z
    invoke-static {v0, v3}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->access$602(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;Z)Z

    .line 549
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference$3;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    #getter for: Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->access$400(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 550
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference$3;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference$3;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    #getter for: Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mRequest:Z
    invoke-static {v1}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->access$1200(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;)Z

    move-result v1

    #calls: Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->sendCommand(Z)V
    invoke-static {v0, v1}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->access$1300(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;Z)V

    .line 557
    :cond_0
    :goto_0
    invoke-static {v6}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->access$1602(Z)Z

    .line 558
    return-void

    .line 551
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference$3;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    #calls: Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->setChecked(Z)V
    invoke-static {v0, v3}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->access$1400(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;Z)V

    .line 553
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference$3;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    #getter for: Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubSummary:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->access$1500(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference$3;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    #getter for: Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->access$1000(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b07ad

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference$3;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    #getter for: Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->access$1000(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b07ae

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
