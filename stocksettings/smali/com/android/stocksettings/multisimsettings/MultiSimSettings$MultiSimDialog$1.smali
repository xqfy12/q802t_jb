.class Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog$1;
.super Ljava/lang/Object;
.source "MultiSimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog$1;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog$1;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    #calls: Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->resumeEnabler()V
    invoke-static {v0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->access$500(Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;)V

    .line 453
    return-void
.end method
