.class public Lcom/android/stocksettings/SelectSubscription;
.super Landroid/app/TabActivity;
.source "SelectSubscription.java"


# instance fields
.field private subscriptionPref:Landroid/widget/TabHost$TabSpec;

.field private tabLabel:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SUB 1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SUB 2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SUB 3"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/stocksettings/SelectSubscription;->tabLabel:[Ljava/lang/String;

    return-void
.end method

.method private getMultiSimName(I)Ljava/lang/String;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/stocksettings/SelectSubscription;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->MULTI_SIM_NAME:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 101
    const-string v0, "SelectSubscription"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const-string v6, "Creating activity"

    invoke-static {v6}, Lcom/android/stocksettings/SelectSubscription;->log(Ljava/lang/String;)V

    .line 74
    const v6, 0x7f04007d

    invoke-virtual {p0, v6}, Lcom/android/stocksettings/SelectSubscription;->setContentView(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/stocksettings/SelectSubscription;->getTabHost()Landroid/widget/TabHost;

    move-result-object v4

    .line 78
    .local v4, tabHost:Landroid/widget/TabHost;
    invoke-virtual {p0}, Lcom/android/stocksettings/SelectSubscription;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 79
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "PACKAGE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, pkg:Ljava/lang/String;
    const-string v6, "TARGET_CLASS"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, targetClass:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    .line 84
    .local v2, numPhones:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 85
    iget-object v6, p0, Lcom/android/stocksettings/SelectSubscription;->tabLabel:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    iput-object v6, p0, Lcom/android/stocksettings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    .line 86
    iget-object v6, p0, Lcom/android/stocksettings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-direct {p0, v0}, Lcom/android/stocksettings/SelectSubscription;->getMultiSimName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 88
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v6, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "subscription"

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 90
    iget-object v6, p0, Lcom/android/stocksettings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v6, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 91
    iget-object v6, p0, Lcom/android/stocksettings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v4, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 63
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 98
    return-void
.end method
