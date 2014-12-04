.class Lcom/android/stocksettings/RadioInfo$17;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/android/stocksettings/RadioInfo$17;->this$0:Lcom/android/stocksettings/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo$17;->this$0:Lcom/android/stocksettings/RadioInfo;

    #getter for: Lcom/android/stocksettings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/stocksettings/RadioInfo;->access$1800(Lcom/android/stocksettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo$17;->this$0:Lcom/android/stocksettings/RadioInfo;

    #getter for: Lcom/android/stocksettings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/stocksettings/RadioInfo;->access$1800(Lcom/android/stocksettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 1103
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo$17;->this$0:Lcom/android/stocksettings/RadioInfo;

    #calls: Lcom/android/stocksettings/RadioInfo;->updateDnsCheckState()V
    invoke-static {v0}, Lcom/android/stocksettings/RadioInfo;->access$4300(Lcom/android/stocksettings/RadioInfo;)V

    .line 1104
    return-void

    .line 1102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
