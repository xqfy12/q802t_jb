.class final Lcom/android/stocksettings/bluetooth/DunServerProfile$DunServiceListener;
.super Ljava/lang/Object;
.source "DunServerProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/bluetooth/DunServerProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DunServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/bluetooth/DunServerProfile;


# direct methods
.method private constructor <init>(Lcom/android/stocksettings/bluetooth/DunServerProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/stocksettings/bluetooth/DunServerProfile$DunServiceListener;->this$0:Lcom/android/stocksettings/bluetooth/DunServerProfile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stocksettings/bluetooth/DunServerProfile;Lcom/android/stocksettings/bluetooth/DunServerProfile$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/stocksettings/bluetooth/DunServerProfile$DunServiceListener;-><init>(Lcom/android/stocksettings/bluetooth/DunServerProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 64
    invoke-static {}, Lcom/android/stocksettings/bluetooth/DunServerProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DunServerProfile"

    const-string v1, "Bluetooth service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/DunServerProfile$DunServiceListener;->this$0:Lcom/android/stocksettings/bluetooth/DunServerProfile;

    check-cast p2, Landroid/bluetooth/BluetoothDun;

    .end local p2
    #setter for: Lcom/android/stocksettings/bluetooth/DunServerProfile;->mService:Landroid/bluetooth/BluetoothDun;
    invoke-static {v0, p2}, Lcom/android/stocksettings/bluetooth/DunServerProfile;->access$102(Lcom/android/stocksettings/bluetooth/DunServerProfile;Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothDun;

    .line 66
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/DunServerProfile$DunServiceListener;->this$0:Lcom/android/stocksettings/bluetooth/DunServerProfile;

    const/4 v1, 0x1

    #setter for: Lcom/android/stocksettings/bluetooth/DunServerProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lcom/android/stocksettings/bluetooth/DunServerProfile;->access$202(Lcom/android/stocksettings/bluetooth/DunServerProfile;Z)Z

    .line 67
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 70
    invoke-static {}, Lcom/android/stocksettings/bluetooth/DunServerProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DunServerProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/DunServerProfile$DunServiceListener;->this$0:Lcom/android/stocksettings/bluetooth/DunServerProfile;

    const/4 v1, 0x0

    #setter for: Lcom/android/stocksettings/bluetooth/DunServerProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lcom/android/stocksettings/bluetooth/DunServerProfile;->access$202(Lcom/android/stocksettings/bluetooth/DunServerProfile;Z)Z

    .line 72
    return-void
.end method