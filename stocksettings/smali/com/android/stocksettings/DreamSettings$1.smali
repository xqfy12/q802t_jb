.class Lcom/android/stocksettings/DreamSettings$1;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/DreamSettings;->onCreate(Landroid/os/Bundle;)V
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
    .line 90
    iput-object p1, p0, Lcom/android/stocksettings/DreamSettings$1;->this$0:Lcom/android/stocksettings/DreamSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/stocksettings/DreamSettings$1;->this$0:Lcom/android/stocksettings/DreamSettings;

    #getter for: Lcom/android/stocksettings/DreamSettings;->mRefreshing:Z
    invoke-static {v0}, Lcom/android/stocksettings/DreamSettings;->access$100(Lcom/android/stocksettings/DreamSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/stocksettings/DreamSettings$1;->this$0:Lcom/android/stocksettings/DreamSettings;

    #getter for: Lcom/android/stocksettings/DreamSettings;->mBackend:Lcom/android/stocksettings/DreamBackend;
    invoke-static {v0}, Lcom/android/stocksettings/DreamSettings;->access$200(Lcom/android/stocksettings/DreamSettings;)Lcom/android/stocksettings/DreamBackend;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/stocksettings/DreamBackend;->setEnabled(Z)V

    .line 95
    iget-object v0, p0, Lcom/android/stocksettings/DreamSettings$1;->this$0:Lcom/android/stocksettings/DreamSettings;

    #calls: Lcom/android/stocksettings/DreamSettings;->refreshFromBackend()V
    invoke-static {v0}, Lcom/android/stocksettings/DreamSettings;->access$300(Lcom/android/stocksettings/DreamSettings;)V

    .line 97
    :cond_0
    return-void
.end method
