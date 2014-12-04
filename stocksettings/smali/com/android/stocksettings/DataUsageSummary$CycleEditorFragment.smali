.class public Lcom/android/stocksettings/DataUsageSummary$CycleEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleEditorFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1872
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/stocksettings/DataUsageSummary;)V
    .locals 4
    .parameter "parent"

    .prologue
    .line 1876
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1885
    :goto_0
    return-void

    .line 1878
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1879
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "template"

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/stocksettings/DataUsageSummary;->access$3600(Lcom/android/stocksettings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1881
    new-instance v1, Lcom/android/stocksettings/DataUsageSummary$CycleEditorFragment;

    invoke-direct {v1}, Lcom/android/stocksettings/DataUsageSummary$CycleEditorFragment;-><init>()V

    .line 1882
    .local v1, dialog:Lcom/android/stocksettings/DataUsageSummary$CycleEditorFragment;
    invoke-virtual {v1, v0}, Lcom/android/stocksettings/DataUsageSummary$CycleEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1883
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/stocksettings/DataUsageSummary$CycleEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1884
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "cycleEditor"

    invoke-virtual {v1, v2, v3}, Lcom/android/stocksettings/DataUsageSummary$CycleEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x1

    .line 1889
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary$CycleEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 1890
    .local v7, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary$CycleEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/stocksettings/DataUsageSummary;

    .line 1891
    .local v5, target:Lcom/android/stocksettings/DataUsageSummary;
    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mPolicyEditor:Lcom/android/stocksettings/net/NetworkPolicyEditor;
    invoke-static {v5}, Lcom/android/stocksettings/DataUsageSummary;->access$3700(Lcom/android/stocksettings/DataUsageSummary;)Lcom/android/stocksettings/net/NetworkPolicyEditor;

    move-result-object v3

    .line 1893
    .local v3, editor:Lcom/android/stocksettings/net/NetworkPolicyEditor;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1894
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 1896
    .local v9, dialogInflater:Landroid/view/LayoutInflater;
    const v0, 0x7f040028

    const/4 v1, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v0, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 1897
    .local v10, view:Landroid/view/View;
    const v0, 0x7f08006b

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    .line 1899
    .local v2, cycleDayPicker:Landroid/widget/NumberPicker;
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary$CycleEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 1900
    .local v4, template:Landroid/net/NetworkTemplate;
    invoke-virtual {v3, v4}, Lcom/android/stocksettings/net/NetworkPolicyEditor;->getPolicyCycleDay(Landroid/net/NetworkTemplate;)I

    move-result v8

    .line 1902
    .local v8, cycleDay:I
    invoke-virtual {v2, v12}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1903
    const/16 v0, 0x1f

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1904
    invoke-virtual {v2, v8}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 1905
    invoke-virtual {v2, v12}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1907
    const v0, 0x7f0b06da

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1908
    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1910
    const v11, 0x7f0b06dc

    new-instance v0, Lcom/android/stocksettings/DataUsageSummary$CycleEditorFragment$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/stocksettings/DataUsageSummary$CycleEditorFragment$1;-><init>(Lcom/android/stocksettings/DataUsageSummary$CycleEditorFragment;Landroid/widget/NumberPicker;Lcom/android/stocksettings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/stocksettings/DataUsageSummary;)V

    invoke-virtual {v6, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1924
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
