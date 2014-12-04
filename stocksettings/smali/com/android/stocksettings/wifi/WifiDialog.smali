.class Lcom/android/stocksettings/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/stocksettings/wifi/WifiConfigUiBase;


# instance fields
.field private final mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

.field private mController:Lcom/android/stocksettings/wifi/WifiConfigController;

.field private final mEdit:Z

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/stocksettings/wifi/AccessPoint;Z)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 41
    const v0, 0x7f0f001f

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 42
    iput-boolean p4, p0, Lcom/android/stocksettings/wifi/WifiDialog;->mEdit:Z

    .line 43
    iput-object p2, p0, Lcom/android/stocksettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 44
    iput-object p3, p0, Lcom/android/stocksettings/wifi/WifiDialog;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    .line 45
    return-void
.end method


# virtual methods
.method public getController()Lcom/android/stocksettings/wifi/WifiConfigController;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiDialog;->mController:Lcom/android/stocksettings/wifi/WifiConfigController;

    return-object v0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 71
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04009d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiDialog;->mView:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/wifi/WifiDialog;->setView(Landroid/view/View;)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    .line 57
    new-instance v0, Lcom/android/stocksettings/wifi/WifiConfigController;

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiDialog;->mAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget-boolean v3, p0, Lcom/android/stocksettings/wifi/WifiDialog;->mEdit:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/stocksettings/wifi/WifiConfigController;-><init>(Lcom/android/stocksettings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/stocksettings/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiDialog;->mController:Lcom/android/stocksettings/wifi/WifiConfigController;

    .line 58
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 61
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiDialog;->mController:Lcom/android/stocksettings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/stocksettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 62
    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 96
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/stocksettings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 97
    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 91
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/stocksettings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 92
    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 86
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/stocksettings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 87
    return-void
.end method
