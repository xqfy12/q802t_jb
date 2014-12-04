.class Lcom/android/stocksettings/NotificationStation$1;
.super Ljava/lang/Object;
.source "NotificationStation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/NotificationStation;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/NotificationStation;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/stocksettings/NotificationStation$1;->this$0:Lcom/android/stocksettings/NotificationStation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/stocksettings/NotificationStation$1;->this$0:Lcom/android/stocksettings/NotificationStation;

    #calls: Lcom/android/stocksettings/NotificationStation;->refreshList()V
    invoke-static {v0}, Lcom/android/stocksettings/NotificationStation;->access$100(Lcom/android/stocksettings/NotificationStation;)V

    .line 69
    return-void
.end method
