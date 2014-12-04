.class Lcom/android/stocksettings/wfd/WifiDisplaySettings$5;
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
    .line 463
    iput-object p1, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings$5;->this$0:Lcom/android/stocksettings/wfd/WifiDisplaySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "paramAnonymousDialogInterface"
    .parameter "paramAnonymousInt"

    .prologue
    const/4 v2, 0x0

    .line 468
    iget-object v0, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings$5;->this$0:Lcom/android/stocksettings/wfd/WifiDisplaySettings;

    #calls: Lcom/android/stocksettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->access$500(Lcom/android/stocksettings/wfd/WifiDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 469
    iget-object v0, p0, Lcom/android/stocksettings/wfd/WifiDisplaySettings$5;->this$0:Lcom/android/stocksettings/wfd/WifiDisplaySettings;

    #calls: Lcom/android/stocksettings/wfd/WifiDisplaySettings;->setCheckButton(Z)V
    invoke-static {v0, v2}, Lcom/android/stocksettings/wfd/WifiDisplaySettings;->access$600(Lcom/android/stocksettings/wfd/WifiDisplaySettings;Z)V

    .line 470
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 471
    return-void
.end method
