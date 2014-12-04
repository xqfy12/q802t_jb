.class Lcom/android/stocksettings/DreamSettings$2;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/DreamSettings;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
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
    .line 145
    iput-object p1, p0, Lcom/android/stocksettings/DreamSettings$2;->this$0:Lcom/android/stocksettings/DreamSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/stocksettings/DreamSettings$2;->this$0:Lcom/android/stocksettings/DreamSettings;

    #getter for: Lcom/android/stocksettings/DreamSettings;->mBackend:Lcom/android/stocksettings/DreamBackend;
    invoke-static {v0}, Lcom/android/stocksettings/DreamSettings;->access$200(Lcom/android/stocksettings/DreamSettings;)Lcom/android/stocksettings/DreamBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/stocksettings/DreamBackend;->startDreaming()V

    .line 149
    return-void
.end method
