.class Lcom/android/stocksettings/Settings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stocksettings/Settings$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private mAuthHelper:Lcom/android/stocksettings/accounts/AuthenticatorHelper;

.field private final mBluetoothEnabler:Lcom/android/stocksettings/bluetooth/BluetoothEnabler;

.field private final mDataEnabler:Lcom/android/stocksettings/DataEnabler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mWifiEnabler:Lcom/android/stocksettings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/stocksettings/accounts/AuthenticatorHelper;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "authenticatorHelper"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/stocksettings/accounts/AuthenticatorHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 657
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 659
    iput-object p3, p0, Lcom/android/stocksettings/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/stocksettings/accounts/AuthenticatorHelper;

    .line 660
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/stocksettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 664
    new-instance v0, Lcom/android/stocksettings/wifi/WifiEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/stocksettings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/stocksettings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/stocksettings/wifi/WifiEnabler;

    .line 665
    new-instance v0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/stocksettings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/stocksettings/bluetooth/BluetoothEnabler;

    .line 666
    new-instance v0, Lcom/android/stocksettings/DataEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/stocksettings/DataEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/stocksettings/Settings$HeaderAdapter;->mDataEnabler:Lcom/android/stocksettings/DataEnabler;

    .line 667
    return-void
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 4
    .parameter "header"

    .prologue
    .line 619
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 620
    const/4 v0, 0x0

    .line 625
    :goto_0
    return v0

    .line 621
    :cond_0
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f080227

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f080229

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f080228

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 623
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 625
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 637
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 631
    invoke-virtual {p0, p1}, Lcom/android/stocksettings/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 632
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/stocksettings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 672
    invoke-virtual {p0, p1}, Lcom/android/stocksettings/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 673
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/stocksettings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v2

    .line 674
    .local v2, headerType:I
    const/4 v7, 0x0

    .line 676
    .local v7, view:Landroid/view/View;
    if-nez p2, :cond_0

    .line 677
    new-instance v3, Lcom/android/stocksettings/Settings$HeaderAdapter$HeaderViewHolder;

    const/4 v8, 0x0

    invoke-direct {v3, v8}, Lcom/android/stocksettings/Settings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/stocksettings/Settings$1;)V

    .line 678
    .local v3, holder:Lcom/android/stocksettings/Settings$HeaderAdapter$HeaderViewHolder;
    packed-switch v2, :pswitch_data_0

    .line 707
    :goto_0
    invoke-virtual {v7, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 714
    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 765
    :goto_2
    return-object v7

    .line 680
    :pswitch_0
    new-instance v7, Landroid/widget/TextView;

    .end local v7           #view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/stocksettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const v10, 0x1010208

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v7       #view:Landroid/view/View;
    move-object v8, v7

    .line 682
    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/stocksettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 686
    :pswitch_1
    iget-object v8, p0, Lcom/android/stocksettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040061

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 688
    const v8, 0x7f080024

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v3, Lcom/android/stocksettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 689
    const v8, 0x1020016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/stocksettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 691
    const v8, 0x1020010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/stocksettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 693
    const v8, 0x7f08010a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Switch;

    iput-object v8, v3, Lcom/android/stocksettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto :goto_0

    .line 697
    :pswitch_2
    iget-object v8, p0, Lcom/android/stocksettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040060

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 700
    const v8, 0x7f080024

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v3, Lcom/android/stocksettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 701
    const v8, 0x1020016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/stocksettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 703
    const v8, 0x1020010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/stocksettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto :goto_0

    .line 709
    .end local v3           #holder:Lcom/android/stocksettings/Settings$HeaderAdapter$HeaderViewHolder;
    :cond_0
    move-object v7, p2

    .line 710
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/stocksettings/Settings$HeaderAdapter$HeaderViewHolder;

    .restart local v3       #holder:Lcom/android/stocksettings/Settings$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_1

    .line 716
    :pswitch_3
    iget-object v8, v3, Lcom/android/stocksettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/stocksettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 721
    :pswitch_4
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f080227

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 722
    iget-object v8, p0, Lcom/android/stocksettings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/stocksettings/wifi/WifiEnabler;

    iget-object v9, v3, Lcom/android/stocksettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/stocksettings/wifi/WifiEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 740
    :cond_1
    :goto_3
    :pswitch_5
    iget-object v8, v1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v8, :cond_4

    iget-object v8, v1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 742
    iget-object v8, v1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, accType:Ljava/lang/String;
    iget-object v8, v3, Lcom/android/stocksettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 745
    .local v5, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/stocksettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0019

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 747
    iget v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 748
    iget-object v8, v3, Lcom/android/stocksettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 749
    iget-object v8, p0, Lcom/android/stocksettings/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/stocksettings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/stocksettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Lcom/android/stocksettings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 750
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    iget-object v8, v3, Lcom/android/stocksettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 754
    .end local v0           #accType:Ljava/lang/String;
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #lp:Landroid/view/ViewGroup$LayoutParams;
    :goto_4
    iget-object v8, v3, Lcom/android/stocksettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/stocksettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 755
    invoke-virtual {p0}, Lcom/android/stocksettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 756
    .local v6, summary:Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 757
    iget-object v8, v3, Lcom/android/stocksettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 758
    iget-object v8, v3, Lcom/android/stocksettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 723
    .end local v6           #summary:Ljava/lang/CharSequence;
    :cond_2
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f080229

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 724
    iget-object v8, p0, Lcom/android/stocksettings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/stocksettings/bluetooth/BluetoothEnabler;

    iget-object v9, v3, Lcom/android/stocksettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_3

    .line 725
    :cond_3
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f080228

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 726
    iget-object v8, p0, Lcom/android/stocksettings/Settings$HeaderAdapter;->mDataEnabler:Lcom/android/stocksettings/DataEnabler;

    iget-object v9, v3, Lcom/android/stocksettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/stocksettings/DataEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 727
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 728
    iget-object v8, v1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    const-string v9, "com.android.stocksettings"

    const-string v10, "com.android.stocksettings.SelectSubscription"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    iget-object v8, v1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    const-string v9, "PACKAGE"

    const-string v10, "com.android.phone"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    iget-object v8, v1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    const-string v9, "TARGET_CLASS"

    const-string v10, "com.android.phone.MSimMobileNetworkSubSettings"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 752
    :cond_4
    iget-object v8, v3, Lcom/android/stocksettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v9, v1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 760
    .restart local v6       #summary:Ljava/lang/CharSequence;
    :cond_5
    iget-object v8, v3, Lcom/android/stocksettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 678
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 714
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 647
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 652
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 642
    invoke-virtual {p0, p1}, Lcom/android/stocksettings/Settings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/stocksettings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/stocksettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/stocksettings/wifi/WifiEnabler;->pause()V

    .line 776
    iget-object v0, p0, Lcom/android/stocksettings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/stocksettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->pause()V

    .line 777
    iget-object v0, p0, Lcom/android/stocksettings/Settings$HeaderAdapter;->mDataEnabler:Lcom/android/stocksettings/DataEnabler;

    invoke-virtual {v0}, Lcom/android/stocksettings/DataEnabler;->pause()V

    .line 778
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/stocksettings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/stocksettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/stocksettings/wifi/WifiEnabler;->resume()V

    .line 770
    iget-object v0, p0, Lcom/android/stocksettings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/stocksettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->resume()V

    .line 771
    iget-object v0, p0, Lcom/android/stocksettings/Settings$HeaderAdapter;->mDataEnabler:Lcom/android/stocksettings/DataEnabler;

    invoke-virtual {v0}, Lcom/android/stocksettings/DataEnabler;->resume()V

    .line 772
    return-void
.end method
