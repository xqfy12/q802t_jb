.class Lcom/android/stocksettings/wifi/p2p/WifiP2pSettings$4$1;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/wifi/p2p/WifiP2pSettings$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/stocksettings/wifi/p2p/WifiP2pSettings$4;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/wifi/p2p/WifiP2pSettings$4;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/stocksettings/wifi/p2p/WifiP2pSettings$4$1;->this$1:Lcom/android/stocksettings/wifi/p2p/WifiP2pSettings$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 254
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method
