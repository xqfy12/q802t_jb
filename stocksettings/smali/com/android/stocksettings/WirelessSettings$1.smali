.class Lcom/android/stocksettings/WirelessSettings$1;
.super Ljava/lang/Object;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/WirelessSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/WirelessSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/stocksettings/WirelessSettings$1;->this$0:Lcom/android/stocksettings/WirelessSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/stocksettings/WirelessSettings$1;->this$0:Lcom/android/stocksettings/WirelessSettings;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MANAGE_MOBILE_PLAN_DIALOG.onClickListener id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/stocksettings/WirelessSettings;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/stocksettings/WirelessSettings;->access$000(Lcom/android/stocksettings/WirelessSettings;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/android/stocksettings/WirelessSettings$1;->this$0:Lcom/android/stocksettings/WirelessSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/stocksettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/stocksettings/WirelessSettings;->access$102(Lcom/android/stocksettings/WirelessSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    return-void
.end method
