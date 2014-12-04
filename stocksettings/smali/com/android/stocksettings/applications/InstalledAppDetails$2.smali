.class Lcom/android/stocksettings/applications/InstalledAppDetails$2;
.super Landroid/content/BroadcastReceiver;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 1248
    iput-object p1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails$2;->this$0:Lcom/android/stocksettings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1251
    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails$2;->this$0:Lcom/android/stocksettings/applications/InstalledAppDetails;

    invoke-virtual {p0}, Lcom/android/stocksettings/applications/InstalledAppDetails$2;->getResultCode()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    #calls: Lcom/android/stocksettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V
    invoke-static {v2, v1}, Lcom/android/stocksettings/applications/InstalledAppDetails;->access$1300(Lcom/android/stocksettings/applications/InstalledAppDetails;Z)V

    .line 1253
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.LEDFlashlight.processKilled"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1254
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.extra.PACKAGES"

    iget-object v2, p0, Lcom/android/stocksettings/applications/InstalledAppDetails$2;->this$0:Lcom/android/stocksettings/applications/InstalledAppDetails;

    #getter for: Lcom/android/stocksettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;
    invoke-static {v2}, Lcom/android/stocksettings/applications/InstalledAppDetails;->access$100(Lcom/android/stocksettings/applications/InstalledAppDetails;)Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1255
    iget-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails$2;->this$0:Lcom/android/stocksettings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1256
    iget-object v1, p0, Lcom/android/stocksettings/applications/InstalledAppDetails$2;->this$0:Lcom/android/stocksettings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Lcom/android/stocksettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1258
    :cond_0
    return-void

    .line 1251
    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
