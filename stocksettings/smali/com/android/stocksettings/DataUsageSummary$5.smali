.class Lcom/android/stocksettings/DataUsageSummary$5;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/android/stocksettings/DataUsageSummary$5;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 1178
    iget-object v2, p0, Lcom/android/stocksettings/DataUsageSummary$5;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mBinding:Z
    invoke-static {v2}, Lcom/android/stocksettings/DataUsageSummary;->access$1300(Lcom/android/stocksettings/DataUsageSummary;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1193
    :goto_0
    return-void

    .line 1180
    :cond_0
    move v1, p2

    .line 1181
    .local v1, dataEnabled:Z
    iget-object v2, p0, Lcom/android/stocksettings/DataUsageSummary$5;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/stocksettings/DataUsageSummary;->access$1400(Lcom/android/stocksettings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v0

    .line 1182
    .local v0, currentTab:Ljava/lang/String;
    const-string v2, "mobile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "SIM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1183
    :cond_1
    if-eqz v1, :cond_3

    .line 1184
    iget-object v2, p0, Lcom/android/stocksettings/DataUsageSummary$5;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    const/4 v3, 0x1

    #calls: Lcom/android/stocksettings/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v2, v3}, Lcom/android/stocksettings/DataUsageSummary;->access$1500(Lcom/android/stocksettings/DataUsageSummary;Z)V

    .line 1192
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/stocksettings/DataUsageSummary$5;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    const/4 v3, 0x0

    #calls: Lcom/android/stocksettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v2, v3}, Lcom/android/stocksettings/DataUsageSummary;->access$1600(Lcom/android/stocksettings/DataUsageSummary;Z)V

    goto :goto_0

    .line 1188
    :cond_3
    iget-object v2, p0, Lcom/android/stocksettings/DataUsageSummary$5;->this$0:Lcom/android/stocksettings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/stocksettings/DataUsageSummary$ConfirmDataDisableFragment;->show(Lcom/android/stocksettings/DataUsageSummary;)V

    goto :goto_1
.end method
