.class Lcom/caf/fmradio/FMRadio$9;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/caf/fmradio/FMRadio;->createProgressDialog(I)Landroid/app/Dialog;
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
    .line 1257
    iput-object p1, p0, Lcom/caf/fmradio/FMRadio$9;->this$0:Lcom/caf/fmradio/FMRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/caf/fmradio/FMRadio$9;->this$0:Lcom/caf/fmradio/FMRadio;

    #calls: Lcom/caf/fmradio/FMRadio;->cancelSearch()V
    invoke-static {v0}, Lcom/caf/fmradio/FMRadio;->access$1500(Lcom/caf/fmradio/FMRadio;)V

    .line 1260
    return-void
.end method
