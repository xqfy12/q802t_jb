.class Lcom/android/stocksettings/deviceinfo/CheckPackage$3;
.super Ljava/lang/Object;
.source "CheckPackage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/deviceinfo/CheckPackage;->showAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/deviceinfo/CheckPackage;

.field final synthetic val$textEntryView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/deviceinfo/CheckPackage;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage$3;->this$0:Lcom/android/stocksettings/deviceinfo/CheckPackage;

    iput-object p2, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage$3;->val$textEntryView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 191
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage$3;->val$textEntryView:Landroid/view/View;

    const v4, 0x7f080109

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 211
    .local v2, mCheckBox:Landroid/widget/CheckBox;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 212
    .local v1, intent:Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.stocksettings"

    const-string v5, "com.android.stocksettings.deviceinfo.SDRise"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 214
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 215
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "data_type"

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 216
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 217
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage$3;->this$0:Lcom/android/stocksettings/deviceinfo/CheckPackage;

    invoke-virtual {v3, v1}, Lcom/android/stocksettings/deviceinfo/CheckPackage;->startActivity(Landroid/content/Intent;)V

    .line 218
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage$3;->this$0:Lcom/android/stocksettings/deviceinfo/CheckPackage;

    invoke-virtual {v3}, Lcom/android/stocksettings/deviceinfo/CheckPackage;->finish()V

    .line 219
    return-void
.end method
