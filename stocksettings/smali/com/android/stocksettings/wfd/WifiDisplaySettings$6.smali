.class Lcom/android/stocksettings/wfd/WifiDisplaySettings$6;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/wfd/WifiDisplaySettings;->showSwitchPromptDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/wfd/WifiDisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/stocksettings/wfd/WifiDisplaySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "paramAnonymousDialogInterface"
    .parameter "paramAnonymousInt"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/stocksettings/wfd/WifiDisplaySettings;

    #calls: Lcom/android/stocksettings/wfd/WifiDisplaySettings;->openAliveShowNoDialog()V
    invoke-static {v0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->access$700(Lcom/android/stocksettings/wfd/WifiDisplaySettings;)V

    .line 456
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 457
    return-void
.end method
