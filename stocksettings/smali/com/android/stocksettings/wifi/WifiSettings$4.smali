.class Lcom/android/stocksettings/wifi/WifiSettings$4;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/wifi/WifiSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/stocksettings/wifi/WifiSettings$4;->this$0:Lcom/android/stocksettings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 287
    const/4 v3, 0x0

    .line 288
    .local v3, isConnected:Z
    iget-object v4, p0, Lcom/android/stocksettings/wifi/WifiSettings$4;->this$0:Lcom/android/stocksettings/wifi/WifiSettings;

    invoke-virtual {v4}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 289
    .local v0, activity:Landroid/app/Activity;
    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 291
    .local v1, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 293
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 295
    .end local v2           #info:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    .line 297
    iget-object v4, p0, Lcom/android/stocksettings/wifi/WifiSettings$4;->this$0:Lcom/android/stocksettings/wifi/WifiSettings;

    const/4 v5, 0x4

    #calls: Lcom/android/stocksettings/wifi/WifiSettings;->showDialog(I)V
    invoke-static {v4, v5}, Lcom/android/stocksettings/wifi/WifiSettings;->access$400(Lcom/android/stocksettings/wifi/WifiSettings;I)V

    .line 302
    :goto_1
    return-void

    .line 293
    .restart local v2       #info:Landroid/net/NetworkInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 300
    .end local v2           #info:Landroid/net/NetworkInfo;
    :cond_2
    iget-object v4, p0, Lcom/android/stocksettings/wifi/WifiSettings$4;->this$0:Lcom/android/stocksettings/wifi/WifiSettings;

    const/4 v5, 0x5

    #calls: Lcom/android/stocksettings/wifi/WifiSettings;->showDialog(I)V
    invoke-static {v4, v5}, Lcom/android/stocksettings/wifi/WifiSettings;->access$500(Lcom/android/stocksettings/wifi/WifiSettings;I)V

    goto :goto_1
.end method
