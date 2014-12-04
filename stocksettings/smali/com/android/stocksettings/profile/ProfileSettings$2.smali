.class final Lcom/android/stocksettings/profile/ProfileSettings$2;
.super Landroid/os/Handler;
.source "ProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/profile/ProfileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 78
    invoke-static {}, Lcom/android/stocksettings/profile/ProfileSettings;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ProfileSettings"

    const-string v1, "handleMessage == ProfileChange = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/stocksettings/profile/ProfileSettings;->ProfileChange:Z

    .line 81
    :cond_1
    return-void
.end method
