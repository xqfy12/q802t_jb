.class public Lcom/android/stocksettings/DataUsageSummary$ConfirmDataDisableFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmDataDisableFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2056
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/stocksettings/DataUsageSummary;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 2058
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2063
    :goto_0
    return-void

    .line 2060
    :cond_0
    new-instance v0, Lcom/android/stocksettings/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-direct {v0}, Lcom/android/stocksettings/DataUsageSummary$ConfirmDataDisableFragment;-><init>()V

    .line 2061
    .local v0, dialog:Lcom/android/stocksettings/DataUsageSummary$ConfirmDataDisableFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/stocksettings/DataUsageSummary$ConfirmDataDisableFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2062
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmDataDisable"

    invoke-virtual {v0, v1, v2}, Lcom/android/stocksettings/DataUsageSummary$ConfirmDataDisableFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 2067
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary$ConfirmDataDisableFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2069
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2070
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b06bf

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2072
    const v2, 0x104000a

    new-instance v3, Lcom/android/stocksettings/DataUsageSummary$ConfirmDataDisableFragment$1;

    invoke-direct {v3, p0}, Lcom/android/stocksettings/DataUsageSummary$ConfirmDataDisableFragment$1;-><init>(Lcom/android/stocksettings/DataUsageSummary$ConfirmDataDisableFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2082
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2084
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
