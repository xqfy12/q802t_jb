.class Lcom/android/stocksettings/RadioInfo$12;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


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
    .line 971
    iput-object p1, p0, Lcom/android/stocksettings/RadioInfo$12;->this$0:Lcom/android/stocksettings/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 973
    iget-object v2, p0, Lcom/android/stocksettings/RadioInfo$12;->this$0:Lcom/android/stocksettings/RadioInfo;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Lcom/android/stocksettings/RadioInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 975
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    .line 977
    .local v1, state:I
    iget-object v2, p0, Lcom/android/stocksettings/RadioInfo$12;->this$0:Lcom/android/stocksettings/RadioInfo;

    #getter for: Lcom/android/stocksettings/RadioInfo;->mMultiSimFlag:Z
    invoke-static {v2}, Lcom/android/stocksettings/RadioInfo;->access$3200(Lcom/android/stocksettings/RadioInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 978
    iget-object v2, p0, Lcom/android/stocksettings/RadioInfo$12;->this$0:Lcom/android/stocksettings/RadioInfo;

    #getter for: Lcom/android/stocksettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/android/stocksettings/RadioInfo;->access$3300(Lcom/android/stocksettings/RadioInfo;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 982
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 993
    :goto_1
    :pswitch_0
    return v4

    .line 980
    :cond_0
    iget-object v2, p0, Lcom/android/stocksettings/RadioInfo$12;->this$0:Lcom/android/stocksettings/RadioInfo;

    #getter for: Lcom/android/stocksettings/RadioInfo;->mMSimTelephonyManager:Landroid/telephony/MSimTelephonyManager;
    invoke-static {v2}, Lcom/android/stocksettings/RadioInfo;->access$3400(Lcom/android/stocksettings/RadioInfo;)Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getDataState()I

    move-result v1

    goto :goto_0

    .line 984
    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_1

    .line 987
    :pswitch_2
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_1

    .line 982
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
