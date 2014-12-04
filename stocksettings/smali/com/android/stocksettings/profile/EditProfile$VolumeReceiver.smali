.class Lcom/android/stocksettings/profile/EditProfile$VolumeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EditProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/profile/EditProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/profile/EditProfile;


# direct methods
.method private constructor <init>(Lcom/android/stocksettings/profile/EditProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 810
    iput-object p1, p0, Lcom/android/stocksettings/profile/EditProfile$VolumeReceiver;->this$0:Lcom/android/stocksettings/profile/EditProfile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stocksettings/profile/EditProfile;Lcom/android/stocksettings/profile/EditProfile$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 810
    invoke-direct {p0, p1}, Lcom/android/stocksettings/profile/EditProfile$VolumeReceiver;-><init>(Lcom/android/stocksettings/profile/EditProfile;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 814
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 816
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 817
    .local v1, streamType:I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 842
    .end local v1           #streamType:I
    :cond_0
    :goto_0
    return-void

    .line 818
    .restart local v1       #streamType:I
    :cond_1
    const-string v2, "EditProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Profile onReceive"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile$VolumeReceiver;->this$0:Lcom/android/stocksettings/profile/EditProfile;

    iget-boolean v4, v4, Lcom/android/stocksettings/profile/EditProfile;->mEditCurrentProfile:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v2, p0, Lcom/android/stocksettings/profile/EditProfile$VolumeReceiver;->this$0:Lcom/android/stocksettings/profile/EditProfile;

    iget-boolean v2, v2, Lcom/android/stocksettings/profile/EditProfile;->mEditCurrentProfile:Z

    if-eqz v2, :cond_0

    goto :goto_0
.end method
