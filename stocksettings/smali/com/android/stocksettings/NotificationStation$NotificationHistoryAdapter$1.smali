.class Lcom/android/stocksettings/NotificationStation$NotificationHistoryAdapter$1;
.super Ljava/lang/Object;
.source "NotificationStation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/NotificationStation$NotificationHistoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/stocksettings/NotificationStation$NotificationHistoryAdapter;

.field final synthetic val$info:Lcom/android/stocksettings/NotificationStation$HistoricalNotificationInfo;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/NotificationStation$NotificationHistoryAdapter;Lcom/android/stocksettings/NotificationStation$HistoricalNotificationInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/stocksettings/NotificationStation$NotificationHistoryAdapter$1;->this$1:Lcom/android/stocksettings/NotificationStation$NotificationHistoryAdapter;

    iput-object p2, p0, Lcom/android/stocksettings/NotificationStation$NotificationHistoryAdapter$1;->val$info:Lcom/android/stocksettings/NotificationStation$HistoricalNotificationInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 347
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 348
    iget-object v0, p0, Lcom/android/stocksettings/NotificationStation$NotificationHistoryAdapter$1;->this$1:Lcom/android/stocksettings/NotificationStation$NotificationHistoryAdapter;

    iget-object v0, v0, Lcom/android/stocksettings/NotificationStation$NotificationHistoryAdapter;->this$0:Lcom/android/stocksettings/NotificationStation;

    iget-object v1, p0, Lcom/android/stocksettings/NotificationStation$NotificationHistoryAdapter$1;->val$info:Lcom/android/stocksettings/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/stocksettings/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    #calls: Lcom/android/stocksettings/NotificationStation;->startApplicationDetailsActivity(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/stocksettings/NotificationStation;->access$600(Lcom/android/stocksettings/NotificationStation;Ljava/lang/String;)V

    .line 349
    return-void
.end method