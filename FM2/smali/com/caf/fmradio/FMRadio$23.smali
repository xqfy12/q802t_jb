.class Lcom/caf/fmradio/FMRadio$23;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caf/fmradio/FMRadio;


# direct methods
.method constructor <init>(Lcom/caf/fmradio/FMRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 1483
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$23;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$23;->this$0:Lcom/caf/fmradio/FMRadio;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/caf/fmradio/FMRadio;->showDialog(I)V

    .line 1486
    const/4 v0, 0x1

    return v0
.end method
