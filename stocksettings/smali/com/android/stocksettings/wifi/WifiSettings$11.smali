.class Lcom/android/stocksettings/wifi/WifiSettings$11;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/wifi/WifiSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 783
    iput-object p1, p0, Lcom/android/stocksettings/wifi/WifiSettings$11;->this$0:Lcom/android/stocksettings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings$11;->this$0:Lcom/android/stocksettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 787
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings$11;->this$0:Lcom/android/stocksettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 788
    return-void
.end method
