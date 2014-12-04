.class Lcom/android/stocksettings/deviceinfo/MSimStatus$3;
.super Landroid/telephony/PhoneStateListener;
.source "MSimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/deviceinfo/MSimStatus;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/deviceinfo/MSimStatus;

.field final synthetic val$subscription:I


# direct methods
.method constructor <init>(Lcom/android/stocksettings/deviceinfo/MSimStatus;II)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus$3;->this$0:Lcom/android/stocksettings/deviceinfo/MSimStatus;

    iput p3, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus$3;->val$subscription:I

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus$3;->this$0:Lcom/android/stocksettings/deviceinfo/MSimStatus;

    #getter for: Lcom/android/stocksettings/deviceinfo/MSimStatus;->mDataState:[I
    invoke-static {v0}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->access$700(Lcom/android/stocksettings/deviceinfo/MSimStatus;)[I

    move-result-object v0

    iget v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus$3;->val$subscription:I

    aput p1, v0, v1

    .line 527
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus$3;->this$0:Lcom/android/stocksettings/deviceinfo/MSimStatus;

    iget v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus$3;->val$subscription:I

    #calls: Lcom/android/stocksettings/deviceinfo/MSimStatus;->updateDataState(I)V
    invoke-static {v0, v1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->access$800(Lcom/android/stocksettings/deviceinfo/MSimStatus;I)V

    .line 528
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus$3;->this$0:Lcom/android/stocksettings/deviceinfo/MSimStatus;

    iget v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus$3;->val$subscription:I

    #calls: Lcom/android/stocksettings/deviceinfo/MSimStatus;->updateNetworkType(I)V
    invoke-static {v0, v1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->access$600(Lcom/android/stocksettings/deviceinfo/MSimStatus;I)V

    .line 529
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus$3;->this$0:Lcom/android/stocksettings/deviceinfo/MSimStatus;

    #getter for: Lcom/android/stocksettings/deviceinfo/MSimStatus;->mServiceState:[Landroid/telephony/ServiceState;
    invoke-static {v0}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->access$400(Lcom/android/stocksettings/deviceinfo/MSimStatus;)[Landroid/telephony/ServiceState;

    move-result-object v0

    iget v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus$3;->val$subscription:I

    aput-object p1, v0, v1

    .line 521
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus$3;->this$0:Lcom/android/stocksettings/deviceinfo/MSimStatus;

    iget v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus$3;->val$subscription:I

    #calls: Lcom/android/stocksettings/deviceinfo/MSimStatus;->updateServiceState(I)V
    invoke-static {v0, v1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->access$500(Lcom/android/stocksettings/deviceinfo/MSimStatus;I)V

    .line 522
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus$3;->this$0:Lcom/android/stocksettings/deviceinfo/MSimStatus;

    iget v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus$3;->val$subscription:I

    #calls: Lcom/android/stocksettings/deviceinfo/MSimStatus;->updateNetworkType(I)V
    invoke-static {v0, v1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->access$600(Lcom/android/stocksettings/deviceinfo/MSimStatus;I)V

    .line 523
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .parameter "signalStrength"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus$3;->this$0:Lcom/android/stocksettings/deviceinfo/MSimStatus;

    #getter for: Lcom/android/stocksettings/deviceinfo/MSimStatus;->mSignalStrength:[Landroid/telephony/SignalStrength;
    invoke-static {v0}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->access$300(Lcom/android/stocksettings/deviceinfo/MSimStatus;)[Landroid/telephony/SignalStrength;

    move-result-object v0

    iget v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus$3;->val$subscription:I

    aput-object p1, v0, v1

    .line 515
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus$3;->this$0:Lcom/android/stocksettings/deviceinfo/MSimStatus;

    iget v1, p0, Lcom/android/stocksettings/deviceinfo/MSimStatus$3;->val$subscription:I

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/deviceinfo/MSimStatus;->updateSignalStrength(I)V

    .line 516
    return-void
.end method
