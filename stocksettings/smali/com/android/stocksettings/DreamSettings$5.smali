.class Lcom/android/stocksettings/DreamSettings$5;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/DreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/DreamSettings;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/DreamSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/stocksettings/DreamSettings$5;->this$0:Lcom/android/stocksettings/DreamSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/stocksettings/DreamSettings$5;->this$0:Lcom/android/stocksettings/DreamSettings;

    #getter for: Lcom/android/stocksettings/DreamSettings;->mBackend:Lcom/android/stocksettings/DreamBackend;
    invoke-static {v0}, Lcom/android/stocksettings/DreamSettings;->access$200(Lcom/android/stocksettings/DreamSettings;)Lcom/android/stocksettings/DreamBackend;

    move-result-object v1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/stocksettings/DreamBackend;->setActivatedOnSleep(Z)V

    .line 211
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 212
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
