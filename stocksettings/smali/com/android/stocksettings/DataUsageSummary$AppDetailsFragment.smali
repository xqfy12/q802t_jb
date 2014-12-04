.class public Lcom/android/stocksettings/DataUsageSummary$AppDetailsFragment;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppDetailsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1754
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/stocksettings/DataUsageSummary;Lcom/android/stocksettings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "parent"
    .parameter "app"
    .parameter "label"

    .prologue
    .line 1758
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1771
    :goto_0
    return-void

    .line 1760
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1761
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "app"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1763
    new-instance v1, Lcom/android/stocksettings/DataUsageSummary$AppDetailsFragment;

    invoke-direct {v1}, Lcom/android/stocksettings/DataUsageSummary$AppDetailsFragment;-><init>()V

    .line 1764
    .local v1, fragment:Lcom/android/stocksettings/DataUsageSummary$AppDetailsFragment;
    invoke-virtual {v1, v0}, Lcom/android/stocksettings/DataUsageSummary$AppDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1765
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lcom/android/stocksettings/DataUsageSummary$AppDetailsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1766
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1767
    .local v2, ft:Landroid/app/FragmentTransaction;
    const-string v3, "appDetails"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1768
    const-string v3, "appDetails"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1769
    invoke-virtual {v2, p2}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 1770
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 1775
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1776
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/DataUsageSummary;

    .line 1777
    .local v0, target:Lcom/android/stocksettings/DataUsageSummary;
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary$AppDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/stocksettings/DataUsageSummary$AppItem;

    #setter for: Lcom/android/stocksettings/DataUsageSummary;->mCurrentApp:Lcom/android/stocksettings/DataUsageSummary$AppItem;
    invoke-static {v0, v1}, Lcom/android/stocksettings/DataUsageSummary;->access$3502(Lcom/android/stocksettings/DataUsageSummary;Lcom/android/stocksettings/DataUsageSummary$AppItem;)Lcom/android/stocksettings/DataUsageSummary$AppItem;

    .line 1778
    #calls: Lcom/android/stocksettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/stocksettings/DataUsageSummary;->access$700(Lcom/android/stocksettings/DataUsageSummary;)V

    .line 1779
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1783
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1784
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/DataUsageSummary;

    .line 1785
    .local v0, target:Lcom/android/stocksettings/DataUsageSummary;
    const/4 v1, 0x0

    #setter for: Lcom/android/stocksettings/DataUsageSummary;->mCurrentApp:Lcom/android/stocksettings/DataUsageSummary$AppItem;
    invoke-static {v0, v1}, Lcom/android/stocksettings/DataUsageSummary;->access$3502(Lcom/android/stocksettings/DataUsageSummary;Lcom/android/stocksettings/DataUsageSummary$AppItem;)Lcom/android/stocksettings/DataUsageSummary$AppItem;

    .line 1786
    #calls: Lcom/android/stocksettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/stocksettings/DataUsageSummary;->access$700(Lcom/android/stocksettings/DataUsageSummary;)V

    .line 1787
    return-void
.end method
