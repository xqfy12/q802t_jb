.class Lcom/android/stocksettings/DreamSettings$DreamInfoAdapter$3;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/DreamSettings$DreamInfoAdapter;->createDreamInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/stocksettings/DreamSettings$DreamInfoAdapter;

.field final synthetic val$row:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/stocksettings/DreamSettings$DreamInfoAdapter$3;->this$1:Lcom/android/stocksettings/DreamSettings$DreamInfoAdapter;

    iput-object p2, p0, Lcom/android/stocksettings/DreamSettings$DreamInfoAdapter$3;->val$row:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 342
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 343
    iget-object v1, p0, Lcom/android/stocksettings/DreamSettings$DreamInfoAdapter$3;->this$1:Lcom/android/stocksettings/DreamSettings$DreamInfoAdapter;

    iget-object v0, p0, Lcom/android/stocksettings/DreamSettings$DreamInfoAdapter$3;->val$row:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/DreamBackend$DreamInfo;

    #calls: Lcom/android/stocksettings/DreamSettings$DreamInfoAdapter;->activate(Lcom/android/stocksettings/DreamBackend$DreamInfo;)V
    invoke-static {v1, v0}, Lcom/android/stocksettings/DreamSettings$DreamInfoAdapter;->access$500(Lcom/android/stocksettings/DreamSettings$DreamInfoAdapter;Lcom/android/stocksettings/DreamBackend$DreamInfo;)V

    .line 344
    return-void
.end method
