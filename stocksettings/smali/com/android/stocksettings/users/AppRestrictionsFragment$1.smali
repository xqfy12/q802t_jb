.class Lcom/android/stocksettings/users/AppRestrictionsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/users/AppRestrictionsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/stocksettings/users/AppRestrictionsFragment$1;->this$0:Lcom/android/stocksettings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/stocksettings/users/AppRestrictionsFragment$1;->this$0:Lcom/android/stocksettings/users/AppRestrictionsFragment;

    #getter for: Lcom/android/stocksettings/users/AppRestrictionsFragment;->mAppListChanged:Z
    invoke-static {v0}, Lcom/android/stocksettings/users/AppRestrictionsFragment;->access$000(Lcom/android/stocksettings/users/AppRestrictionsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/stocksettings/users/AppRestrictionsFragment$1;->this$0:Lcom/android/stocksettings/users/AppRestrictionsFragment;

    #calls: Lcom/android/stocksettings/users/AppRestrictionsFragment;->updateUserAppList()V
    invoke-static {v0}, Lcom/android/stocksettings/users/AppRestrictionsFragment;->access$100(Lcom/android/stocksettings/users/AppRestrictionsFragment;)V

    .line 159
    :cond_0
    return-void
.end method