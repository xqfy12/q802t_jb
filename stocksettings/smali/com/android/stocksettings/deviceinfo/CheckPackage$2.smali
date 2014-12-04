.class Lcom/android/stocksettings/deviceinfo/CheckPackage$2;
.super Ljava/lang/Object;
.source "CheckPackage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/deviceinfo/CheckPackage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/deviceinfo/CheckPackage;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/deviceinfo/CheckPackage;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage$2;->this$0:Lcom/android/stocksettings/deviceinfo/CheckPackage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "arg0"

    .prologue
    const v7, 0x7f0b0810

    const v6, 0x7f0b047c

    .line 126
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 127
    .local v0, SDpath:Ljava/io/File;
    const-string v3, "HWY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " SDpath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/update.zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, m_file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage$2;->this$0:Lcom/android/stocksettings/deviceinfo/CheckPackage;

    #calls: Lcom/android/stocksettings/deviceinfo/CheckPackage;->getVersionInfor(Ljava/lang/String;)Z
    invoke-static {v3, v2}, Lcom/android/stocksettings/deviceinfo/CheckPackage;->access$000(Lcom/android/stocksettings/deviceinfo/CheckPackage;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 137
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage$2;->this$0:Lcom/android/stocksettings/deviceinfo/CheckPackage;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b0813

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/stocksettings/deviceinfo/CheckPackage$2$1;

    invoke-direct {v4, p0}, Lcom/android/stocksettings/deviceinfo/CheckPackage$2$1;-><init>(Lcom/android/stocksettings/deviceinfo/CheckPackage$2;)V

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 171
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v3, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage$2;->this$0:Lcom/android/stocksettings/deviceinfo/CheckPackage;

    #calls: Lcom/android/stocksettings/deviceinfo/CheckPackage;->showAlert()V
    invoke-static {v3}, Lcom/android/stocksettings/deviceinfo/CheckPackage;->access$100(Lcom/android/stocksettings/deviceinfo/CheckPackage;)V

    goto :goto_0

    .line 156
    :cond_1
    const-string v3, "HWY"

    const-string v4, " Update package doesn\'t exist!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage$2;->this$0:Lcom/android/stocksettings/deviceinfo/CheckPackage;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b0814

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/stocksettings/deviceinfo/CheckPackage$2$2;

    invoke-direct {v4, p0}, Lcom/android/stocksettings/deviceinfo/CheckPackage$2$2;-><init>(Lcom/android/stocksettings/deviceinfo/CheckPackage$2;)V

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
