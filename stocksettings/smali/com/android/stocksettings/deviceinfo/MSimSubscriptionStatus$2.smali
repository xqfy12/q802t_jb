.class Lcom/android/stocksettings/deviceinfo/MSimSubscriptionStatus$2;
.super Landroid/telephony/PhoneStateListener;
.source "MSimSubscriptionStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/deviceinfo/MSimSubscriptionStatus;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/deviceinfo/MSimSubscriptionStatus;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/deviceinfo/MSimSubscriptionStatus;I)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/stocksettings/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/stocksettings/deviceinfo/MSimSubscriptionStatus;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/stocksettings/deviceinfo/MSimSubscriptionStatus;

    iput-object p1, v0, Lcom/android/stocksettings/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    .line 277
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/stocksettings/deviceinfo/MSimSubscriptionStatus;

    #calls: Lcom/android/stocksettings/deviceinfo/MSimSubscriptionStatus;->updateServiceState()V
    invoke-static {v0}, Lcom/android/stocksettings/deviceinfo/MSimSubscriptionStatus;->access$100(Lcom/android/stocksettings/deviceinfo/MSimSubscriptionStatus;)V

    .line 278
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "signalStrength"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/stocksettings/deviceinfo/MSimSubscriptionStatus;

    iput-object p1, v0, Lcom/android/stocksettings/deviceinfo/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 272
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/stocksettings/deviceinfo/MSimSubscriptionStatus;

    invoke-virtual {v0}, Lcom/android/stocksettings/deviceinfo/MSimSubscriptionStatus;->updateSignalStrength()V

    .line 273
    return-void
.end method
