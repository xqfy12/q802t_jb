.class Lcom/android/stocksettings/wifi/WifiConfigController$1;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/wifi/WifiConfigController;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/wifi/WifiConfigController;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/wifi/WifiConfigController;)V
    .locals 0
    .parameter

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/android/stocksettings/wifi/WifiConfigController$1;->this$0:Lcom/android/stocksettings/wifi/WifiConfigController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiConfigController$1;->this$0:Lcom/android/stocksettings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/stocksettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1067
    return-void
.end method
