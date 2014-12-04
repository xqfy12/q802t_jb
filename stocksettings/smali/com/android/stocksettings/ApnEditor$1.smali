.class Lcom/android/stocksettings/ApnEditor$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/ApnEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/stocksettings/ApnEditor$1;->this$0:Lcom/android/stocksettings/ApnEditor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/stocksettings/ApnEditor$1;->this$0:Lcom/android/stocksettings/ApnEditor;

    #calls: Lcom/android/stocksettings/ApnEditor;->setScreenEnabled()V
    invoke-static {v0}, Lcom/android/stocksettings/ApnEditor;->access$000(Lcom/android/stocksettings/ApnEditor;)V

    .line 178
    iget-object v0, p0, Lcom/android/stocksettings/ApnEditor$1;->this$0:Lcom/android/stocksettings/ApnEditor;

    invoke-virtual {v0}, Lcom/android/stocksettings/ApnEditor;->invalidateOptionsMenu()V

    .line 179
    return-void
.end method
