.class Lcom/android/stocksettings/MediaFormat$2;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/MediaFormat;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/MediaFormat;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/stocksettings/MediaFormat$2;->this$0:Lcom/android/stocksettings/MediaFormat;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/stocksettings/MediaFormat$2;->this$0:Lcom/android/stocksettings/MediaFormat;

    const/16 v1, 0x37

    #calls: Lcom/android/stocksettings/MediaFormat;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/stocksettings/MediaFormat;->access$100(Lcom/android/stocksettings/MediaFormat;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/stocksettings/MediaFormat$2;->this$0:Lcom/android/stocksettings/MediaFormat;

    #calls: Lcom/android/stocksettings/MediaFormat;->establishFinalConfirmationState()V
    invoke-static {v0}, Lcom/android/stocksettings/MediaFormat;->access$200(Lcom/android/stocksettings/MediaFormat;)V

    .line 114
    :cond_0
    return-void
.end method
