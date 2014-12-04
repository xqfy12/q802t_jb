.class public Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLimitFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1794
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/stocksettings/DataUsageSummary;)V
    .locals 14
    .parameter "parent"

    .prologue
    const-wide v12, 0x140000000L

    const v11, 0x7f0b06e0

    .line 1800
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->isAdded()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1841
    :cond_0
    :goto_0
    return-void

    .line 1803
    :cond_1
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1806
    .local v8, res:Landroid/content/res/Resources;
    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mPolicyEditor:Lcom/android/stocksettings/net/NetworkPolicyEditor;
    invoke-static {p0}, Lcom/android/stocksettings/DataUsageSummary;->access$3700(Lcom/android/stocksettings/DataUsageSummary;)Lcom/android/stocksettings/net/NetworkPolicyEditor;

    move-result-object v9

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/stocksettings/DataUsageSummary;->access$3600(Lcom/android/stocksettings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/stocksettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1807
    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mPolicyEditor:Lcom/android/stocksettings/net/NetworkPolicyEditor;
    invoke-static {p0}, Lcom/android/stocksettings/DataUsageSummary;->access$3700(Lcom/android/stocksettings/DataUsageSummary;)Lcom/android/stocksettings/net/NetworkPolicyEditor;

    move-result-object v9

    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/stocksettings/DataUsageSummary;->access$3600(Lcom/android/stocksettings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/stocksettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v9

    iget-wide v9, v9, Landroid/net/NetworkPolicy;->warningBytes:J

    long-to-float v9, v9

    const v10, 0x3f99999a

    mul-float/2addr v9, v10

    float-to-long v6, v9

    .line 1814
    .local v6, minLimitBytes:J
    #getter for: Lcom/android/stocksettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/stocksettings/DataUsageSummary;->access$1400(Lcom/android/stocksettings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    .line 1815
    .local v1, currentTab:Ljava/lang/String;
    const-string v9, "3g"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1816
    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1817
    .local v5, message:Ljava/lang/CharSequence;
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 1831
    .local v3, limitBytes:J
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1832
    .local v0, args:Landroid/os/Bundle;
    const-string v9, "message"

    invoke-virtual {v0, v9, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1833
    const-string v9, "limitBytes"

    invoke-virtual {v0, v9, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1834
    const-string v9, "tagName"

    invoke-virtual {v0, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    new-instance v2, Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment;

    invoke-direct {v2}, Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment;-><init>()V

    .line 1837
    .local v2, dialog:Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment;
    invoke-virtual {v2, v0}, Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1838
    const/4 v9, 0x0

    invoke-virtual {v2, p0, v9}, Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1839
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    const-string v10, "confirmLimit"

    invoke-virtual {v2, v9, v10}, Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1818
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #dialog:Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment;
    .end local v3           #limitBytes:J
    .end local v5           #message:Ljava/lang/CharSequence;
    :cond_2
    const-string v9, "4g"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1819
    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1820
    .restart local v5       #message:Ljava/lang/CharSequence;
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .restart local v3       #limitBytes:J
    goto :goto_1

    .line 1821
    .end local v3           #limitBytes:J
    .end local v5           #message:Ljava/lang/CharSequence;
    :cond_3
    const-string v9, "mobile"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1822
    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1823
    .restart local v5       #message:Ljava/lang/CharSequence;
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .restart local v3       #limitBytes:J
    goto :goto_1

    .line 1824
    .end local v3           #limitBytes:J
    .end local v5           #message:Ljava/lang/CharSequence;
    :cond_4
    const-string v9, "SIM"

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1825
    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1826
    .restart local v5       #message:Ljava/lang/CharSequence;
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .restart local v3       #limitBytes:J
    goto :goto_1

    .line 1828
    .end local v3           #limitBytes:J
    .end local v5           #message:Ljava/lang/CharSequence;
    :cond_5
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unknown current tab: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 1845
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1847
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "message"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1848
    .local v4, message:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "limitBytes"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1849
    .local v2, limitBytes:J
    invoke-virtual {p0}, Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "tagName"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1851
    .local v5, tabName:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1852
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0b06df

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1853
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1855
    const v6, 0x104000a

    new-instance v7, Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment$1;

    invoke-direct {v7, p0, v5, v2, v3}, Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment$1;-><init>(Lcom/android/stocksettings/DataUsageSummary$ConfirmLimitFragment;Ljava/lang/String;J)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1865
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6
.end method
