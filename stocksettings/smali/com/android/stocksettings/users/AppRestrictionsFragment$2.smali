.class Lcom/android/stocksettings/users/AppRestrictionsFragment$2;
.super Ljava/lang/Thread;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/users/AppRestrictionsFragment;->onPause()V
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
    .line 339
    iput-object p1, p0, Lcom/android/stocksettings/users/AppRestrictionsFragment$2;->this$0:Lcom/android/stocksettings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/stocksettings/users/AppRestrictionsFragment$2;->this$0:Lcom/android/stocksettings/users/AppRestrictionsFragment;

    #calls: Lcom/android/stocksettings/users/AppRestrictionsFragment;->updateUserAppList()V
    invoke-static {v0}, Lcom/android/stocksettings/users/AppRestrictionsFragment;->access$100(Lcom/android/stocksettings/users/AppRestrictionsFragment;)V

    .line 342
    return-void
.end method