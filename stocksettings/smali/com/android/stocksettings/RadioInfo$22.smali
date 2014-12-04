.class Lcom/android/stocksettings/RadioInfo$22;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 1141
    iput-object p1, p0, Lcom/android/stocksettings/RadioInfo$22;->this$0:Lcom/android/stocksettings/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "pos"
    .parameter "id"

    .prologue
    .line 1143
    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo$22;->this$0:Lcom/android/stocksettings/RadioInfo;

    #getter for: Lcom/android/stocksettings/RadioInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/stocksettings/RadioInfo;->access$4500(Lcom/android/stocksettings/RadioInfo;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1144
    .local v0, msg:Landroid/os/Message;
    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo$22;->this$0:Lcom/android/stocksettings/RadioInfo;

    #getter for: Lcom/android/stocksettings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/stocksettings/RadioInfo;->access$1600(Lcom/android/stocksettings/RadioInfo;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    if-gt p3, v1, :cond_0

    .line 1145
    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo$22;->this$0:Lcom/android/stocksettings/RadioInfo;

    #getter for: Lcom/android/stocksettings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/stocksettings/RadioInfo;->access$1800(Lcom/android/stocksettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1147
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 1150
    return-void
.end method
