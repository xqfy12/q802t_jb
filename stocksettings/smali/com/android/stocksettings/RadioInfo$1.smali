.class Lcom/android/stocksettings/RadioInfo$1;
.super Landroid/telephony/PhoneStateListener;
.source "RadioInfo.java"


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
    .line 144
    iput-object p1, p0, Lcom/android/stocksettings/RadioInfo$1;->this$0:Lcom/android/stocksettings/RadioInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 1
    .parameter "cfi"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo$1;->this$0:Lcom/android/stocksettings/RadioInfo;

    #setter for: Lcom/android/stocksettings/RadioInfo;->mCfiValue:Z
    invoke-static {v0, p1}, Lcom/android/stocksettings/RadioInfo;->access$802(Lcom/android/stocksettings/RadioInfo;Z)Z

    .line 172
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo$1;->this$0:Lcom/android/stocksettings/RadioInfo;

    #calls: Lcom/android/stocksettings/RadioInfo;->updateCallRedirect()V
    invoke-static {v0}, Lcom/android/stocksettings/RadioInfo;->access$900(Lcom/android/stocksettings/RadioInfo;)V

    .line 173
    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, arrayCi:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo$1;->this$0:Lcom/android/stocksettings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCellInfoChanged: arrayCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/stocksettings/RadioInfo;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/stocksettings/RadioInfo;->access$1000(Lcom/android/stocksettings/RadioInfo;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo$1;->this$0:Lcom/android/stocksettings/RadioInfo;

    #calls: Lcom/android/stocksettings/RadioInfo;->updateCellInfoTv(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/android/stocksettings/RadioInfo;->access$1100(Lcom/android/stocksettings/RadioInfo;Ljava/util/List;)V

    .line 179
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo$1;->this$0:Lcom/android/stocksettings/RadioInfo;

    #calls: Lcom/android/stocksettings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V
    invoke-static {v0, p1}, Lcom/android/stocksettings/RadioInfo;->access$500(Lcom/android/stocksettings/RadioInfo;Landroid/telephony/CellLocation;)V

    .line 161
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo$1;->this$0:Lcom/android/stocksettings/RadioInfo;

    #calls: Lcom/android/stocksettings/RadioInfo;->updateDataStats2()V
    invoke-static {v0}, Lcom/android/stocksettings/RadioInfo;->access$400(Lcom/android/stocksettings/RadioInfo;)V

    .line 156
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo$1;->this$0:Lcom/android/stocksettings/RadioInfo;

    #calls: Lcom/android/stocksettings/RadioInfo;->updateDataState()V
    invoke-static {v0}, Lcom/android/stocksettings/RadioInfo;->access$000(Lcom/android/stocksettings/RadioInfo;)V

    .line 148
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo$1;->this$0:Lcom/android/stocksettings/RadioInfo;

    #calls: Lcom/android/stocksettings/RadioInfo;->updateDataStats()V
    invoke-static {v0}, Lcom/android/stocksettings/RadioInfo;->access$100(Lcom/android/stocksettings/RadioInfo;)V

    .line 149
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo$1;->this$0:Lcom/android/stocksettings/RadioInfo;

    #calls: Lcom/android/stocksettings/RadioInfo;->updatePdpList()V
    invoke-static {v0}, Lcom/android/stocksettings/RadioInfo;->access$200(Lcom/android/stocksettings/RadioInfo;)V

    .line 150
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo$1;->this$0:Lcom/android/stocksettings/RadioInfo;

    #calls: Lcom/android/stocksettings/RadioInfo;->updateNetworkType()V
    invoke-static {v0}, Lcom/android/stocksettings/RadioInfo;->access$300(Lcom/android/stocksettings/RadioInfo;)V

    .line 151
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 1
    .parameter "mwi"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo$1;->this$0:Lcom/android/stocksettings/RadioInfo;

    #setter for: Lcom/android/stocksettings/RadioInfo;->mMwiValue:Z
    invoke-static {v0, p1}, Lcom/android/stocksettings/RadioInfo;->access$602(Lcom/android/stocksettings/RadioInfo;Z)Z

    .line 166
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo$1;->this$0:Lcom/android/stocksettings/RadioInfo;

    #calls: Lcom/android/stocksettings/RadioInfo;->updateMessageWaiting()V
    invoke-static {v0}, Lcom/android/stocksettings/RadioInfo;->access$700(Lcom/android/stocksettings/RadioInfo;)V

    .line 167
    return-void
.end method
