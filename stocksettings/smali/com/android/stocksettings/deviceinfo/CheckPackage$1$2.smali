.class Lcom/android/stocksettings/deviceinfo/CheckPackage$1$2;
.super Ljava/lang/Object;
.source "CheckPackage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/deviceinfo/CheckPackage$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/stocksettings/deviceinfo/CheckPackage$1;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/deviceinfo/CheckPackage$1;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage$1$2;->this$1:Lcom/android/stocksettings/deviceinfo/CheckPackage$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialoginterface"
    .parameter "i"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage$1$2;->this$1:Lcom/android/stocksettings/deviceinfo/CheckPackage$1;

    iget-object v0, v0, Lcom/android/stocksettings/deviceinfo/CheckPackage$1;->this$0:Lcom/android/stocksettings/deviceinfo/CheckPackage;

    invoke-virtual {v0}, Lcom/android/stocksettings/deviceinfo/CheckPackage;->finish()V

    .line 82
    return-void
.end method
