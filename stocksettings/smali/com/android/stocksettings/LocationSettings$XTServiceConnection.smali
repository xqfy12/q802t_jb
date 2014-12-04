.class Lcom/android/stocksettings/LocationSettings$XTServiceConnection;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XTServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/LocationSettings;


# direct methods
.method private constructor <init>(Lcom/android/stocksettings/LocationSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/stocksettings/LocationSettings$XTServiceConnection;->this$0:Lcom/android/stocksettings/LocationSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stocksettings/LocationSettings;Lcom/android/stocksettings/LocationSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/stocksettings/LocationSettings$XTServiceConnection;-><init>(Lcom/android/stocksettings/LocationSettings;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 149
    iget-object v2, p0, Lcom/android/stocksettings/LocationSettings$XTServiceConnection;->this$0:Lcom/android/stocksettings/LocationSettings;

    invoke-static {p2}, Lcom/android/location/XT/IXTSrv$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/location/XT/IXTSrv;

    move-result-object v3

    #setter for: Lcom/android/stocksettings/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v2, v3}, Lcom/android/stocksettings/LocationSettings;->access$302(Lcom/android/stocksettings/LocationSettings;Lcom/android/location/XT/IXTSrv;)Lcom/android/location/XT/IXTSrv;

    .line 150
    const-string v2, "LocationSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected, service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stocksettings/LocationSettings$XTServiceConnection;->this$0:Lcom/android/stocksettings/LocationSettings;

    #getter for: Lcom/android/stocksettings/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v4}, Lcom/android/stocksettings/LocationSettings;->access$300(Lcom/android/stocksettings/LocationSettings;)Lcom/android/location/XT/IXTSrv;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :try_start_0
    iget-object v2, p0, Lcom/android/stocksettings/LocationSettings$XTServiceConnection;->this$0:Lcom/android/stocksettings/LocationSettings;

    #getter for: Lcom/android/stocksettings/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v2}, Lcom/android/stocksettings/LocationSettings;->access$300(Lcom/android/stocksettings/LocationSettings;)Lcom/android/location/XT/IXTSrv;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 153
    iget-object v2, p0, Lcom/android/stocksettings/LocationSettings$XTServiceConnection;->this$0:Lcom/android/stocksettings/LocationSettings;

    #getter for: Lcom/android/stocksettings/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v2}, Lcom/android/stocksettings/LocationSettings;->access$300(Lcom/android/stocksettings/LocationSettings;)Lcom/android/location/XT/IXTSrv;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/location/XT/IXTSrv;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, izatMenuTitle:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/stocksettings/LocationSettings$XTServiceConnection;->this$0:Lcom/android/stocksettings/LocationSettings;

    #getter for: Lcom/android/stocksettings/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v2}, Lcom/android/stocksettings/LocationSettings;->access$300(Lcom/android/stocksettings/LocationSettings;)Lcom/android/location/XT/IXTSrv;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/location/XT/IXTSrv;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, izatSubtitle:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/stocksettings/LocationSettings$XTServiceConnection;->this$0:Lcom/android/stocksettings/LocationSettings;

    #getter for: Lcom/android/stocksettings/LocationSettings;->mIZat:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/stocksettings/LocationSettings;->access$000(Lcom/android/stocksettings/LocationSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/android/stocksettings/LocationSettings$XTServiceConnection;->this$0:Lcom/android/stocksettings/LocationSettings;

    #getter for: Lcom/android/stocksettings/LocationSettings;->mIZat:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/stocksettings/LocationSettings;->access$000(Lcom/android/stocksettings/LocationSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v2, p0, Lcom/android/stocksettings/LocationSettings$XTServiceConnection;->this$0:Lcom/android/stocksettings/LocationSettings;

    #getter for: Lcom/android/stocksettings/LocationSettings;->mIZat:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/stocksettings/LocationSettings;->access$000(Lcom/android/stocksettings/LocationSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/android/stocksettings/LocationSettings$XTServiceConnection;->this$0:Lcom/android/stocksettings/LocationSettings;

    #calls: Lcom/android/stocksettings/LocationSettings;->updateLocationToggles()V
    invoke-static {v2}, Lcom/android/stocksettings/LocationSettings;->access$400(Lcom/android/stocksettings/LocationSettings;)V

    .line 160
    iget-object v2, p0, Lcom/android/stocksettings/LocationSettings$XTServiceConnection;->this$0:Lcom/android/stocksettings/LocationSettings;

    #getter for: Lcom/android/stocksettings/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v2}, Lcom/android/stocksettings/LocationSettings;->access$300(Lcom/android/stocksettings/LocationSettings;)Lcom/android/location/XT/IXTSrv;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stocksettings/LocationSettings$XTServiceConnection;->this$0:Lcom/android/stocksettings/LocationSettings;

    #getter for: Lcom/android/stocksettings/LocationSettings;->mCallback:Lcom/android/location/XT/IXTSrvCb;
    invoke-static {v3}, Lcom/android/stocksettings/LocationSettings;->access$500(Lcom/android/stocksettings/LocationSettings;)Lcom/android/location/XT/IXTSrvCb;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/location/XT/IXTSrv;->registerCallback(Lcom/android/location/XT/IXTSrvCb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v0           #izatMenuTitle:Ljava/lang/String;
    .end local v1           #izatSubtitle:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/stocksettings/LocationSettings$XTServiceConnection;->this$0:Lcom/android/stocksettings/LocationSettings;

    #getter for: Lcom/android/stocksettings/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v0}, Lcom/android/stocksettings/LocationSettings;->access$300(Lcom/android/stocksettings/LocationSettings;)Lcom/android/location/XT/IXTSrv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/android/stocksettings/LocationSettings$XTServiceConnection;->this$0:Lcom/android/stocksettings/LocationSettings;

    #getter for: Lcom/android/stocksettings/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v0}, Lcom/android/stocksettings/LocationSettings;->access$300(Lcom/android/stocksettings/LocationSettings;)Lcom/android/location/XT/IXTSrv;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/LocationSettings$XTServiceConnection;->this$0:Lcom/android/stocksettings/LocationSettings;

    #getter for: Lcom/android/stocksettings/LocationSettings;->mCallback:Lcom/android/location/XT/IXTSrvCb;
    invoke-static {v1}, Lcom/android/stocksettings/LocationSettings;->access$500(Lcom/android/stocksettings/LocationSettings;)Lcom/android/location/XT/IXTSrvCb;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/location/XT/IXTSrv;->unregisterCallback(Lcom/android/location/XT/IXTSrvCb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/android/stocksettings/LocationSettings$XTServiceConnection;->this$0:Lcom/android/stocksettings/LocationSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/stocksettings/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;
    invoke-static {v0, v1}, Lcom/android/stocksettings/LocationSettings;->access$302(Lcom/android/stocksettings/LocationSettings;Lcom/android/location/XT/IXTSrv;)Lcom/android/location/XT/IXTSrv;

    .line 181
    :cond_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    goto :goto_0
.end method
