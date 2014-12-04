.class Lcom/android/stocksettings/deviceinfo/UpdatingSystem$6;
.super Ljava/lang/Object;
.source "UpdatingSystem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/deviceinfo/UpdatingSystem;->showAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/deviceinfo/UpdatingSystem;

.field final synthetic val$textEntryView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/deviceinfo/UpdatingSystem;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/stocksettings/deviceinfo/UpdatingSystem$6;->this$0:Lcom/android/stocksettings/deviceinfo/UpdatingSystem;

    iput-object p2, p0, Lcom/android/stocksettings/deviceinfo/UpdatingSystem$6;->val$textEntryView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 213
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/UpdatingSystem$6;->val$textEntryView:Landroid/view/View;

    const v4, 0x7f080109

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 215
    .local v2, mCheckBox:Landroid/widget/CheckBox;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 216
    .local v1, intent:Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.stocksettings"

    const-string v5, "com.android.stocksettings.deviceinfo.SDRise"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 218
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "data_type"

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 220
    sget-object v3, Lcom/android/stocksettings/deviceinfo/UpdatingSystem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateFile == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/stocksettings/deviceinfo/UpdatingSystem;->updateFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v3, "updateFile"

    sget-object v4, Lcom/android/stocksettings/deviceinfo/UpdatingSystem;->updateFile:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 223
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/UpdatingSystem$6;->this$0:Lcom/android/stocksettings/deviceinfo/UpdatingSystem;

    invoke-virtual {v3, v1}, Lcom/android/stocksettings/deviceinfo/UpdatingSystem;->startActivity(Landroid/content/Intent;)V

    .line 224
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/UpdatingSystem$6;->this$0:Lcom/android/stocksettings/deviceinfo/UpdatingSystem;

    invoke-virtual {v3}, Lcom/android/stocksettings/deviceinfo/UpdatingSystem;->finish()V

    .line 225
    return-void
.end method
