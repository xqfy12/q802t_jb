.class Lcom/android/stocksettings/DreamSettings$DreamInfoAdapter$1;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/DreamSettings$DreamInfoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    .line 310
    iput-object p1, p0, Lcom/android/stocksettings/DreamSettings$DreamInfoAdapter$1;->this$1:Lcom/android/stocksettings/DreamSettings$DreamInfoAdapter;

    iput-object p2, p0, Lcom/android/stocksettings/DreamSettings$DreamInfoAdapter$1;->val$row:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/stocksettings/DreamSettings$DreamInfoAdapter$1;->val$row:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 314
    const/4 v0, 0x0

    return v0
.end method