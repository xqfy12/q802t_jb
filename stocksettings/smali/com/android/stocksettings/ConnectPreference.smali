.class public Lcom/android/stocksettings/ConnectPreference;
.super Landroid/preference/Preference;
.source "ConnectPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static DBG:Z

.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/stocksettings/ConnectPreference;->DBG:Z

    .line 63
    sput-object v1, Lcom/android/stocksettings/ConnectPreference;->mSelectedKey:Ljava/lang/String;

    .line 64
    sput-object v1, Lcom/android/stocksettings/ConnectPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stocksettings/ConnectPreference;->mProtectFromCheckedChange:Z

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stocksettings/ConnectPreference;->mSelectable:Z

    .line 59
    sget-boolean v0, Lcom/android/stocksettings/ConnectPreference;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConnectPreference"

    const-string v1, "ConnectPreference:context"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/android/stocksettings/ConnectPreference;->init()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stocksettings/ConnectPreference;->mProtectFromCheckedChange:Z

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stocksettings/ConnectPreference;->mSelectable:Z

    .line 49
    sget-boolean v0, Lcom/android/stocksettings/ConnectPreference;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConnectPreference"

    const-string v1, "ConnectPreference:(Context context, AttributeSet attrs)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/android/stocksettings/ConnectPreference;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stocksettings/ConnectPreference;->mProtectFromCheckedChange:Z

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stocksettings/ConnectPreference;->mSelectable:Z

    .line 39
    sget-boolean v0, Lcom/android/stocksettings/ConnectPreference;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConnectPreference"

    const-string v1, "ConnectPreference:(Context context, AttributeSet attrs, int defStyle)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/android/stocksettings/ConnectPreference;->init()V

    .line 41
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 109
    sget-boolean v0, Lcom/android/stocksettings/ConnectPreference;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConnectPreference"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/ConnectPreference;->setLayoutResource(I)V

    .line 112
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 71
    .local v3, view:Landroid/view/View;
    sget-boolean v5, Lcom/android/stocksettings/ConnectPreference;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "ConnectPreference"

    const-string v6, "getView"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    const v5, 0x1010003

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 74
    .local v4, widget:Landroid/view/View;
    if-eqz v4, :cond_4

    instance-of v5, v4, Landroid/widget/RadioButton;

    if-eqz v5, :cond_4

    move-object v1, v4

    .line 75
    check-cast v1, Landroid/widget/RadioButton;

    .line 76
    .local v1, rb:Landroid/widget/RadioButton;
    sget-boolean v5, Lcom/android/stocksettings/ConnectPreference;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "ConnectPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getView:mSelectable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/stocksettings/ConnectPreference;->mSelectable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_1
    iget-boolean v5, p0, Lcom/android/stocksettings/ConnectPreference;->mSelectable:Z

    if-eqz v5, :cond_6

    .line 80
    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    sget-boolean v5, Lcom/android/stocksettings/ConnectPreference;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "ConnectPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getView:getKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/stocksettings/ConnectPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mSelectedKey= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/stocksettings/ConnectPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_2
    invoke-virtual {p0}, Lcom/android/stocksettings/ConnectPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/stocksettings/ConnectPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 84
    .local v0, isChecked:Z
    if-eqz v0, :cond_3

    .line 85
    sput-object v1, Lcom/android/stocksettings/ConnectPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 86
    invoke-virtual {p0}, Lcom/android/stocksettings/ConnectPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/stocksettings/ConnectPreference;->mSelectedKey:Ljava/lang/String;

    .line 87
    sget-boolean v5, Lcom/android/stocksettings/ConnectPreference;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "ConnectPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/stocksettings/ConnectPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mSelectedKey= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/stocksettings/ConnectPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/stocksettings/ConnectPreference;->mProtectFromCheckedChange:Z

    .line 91
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 92
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/stocksettings/ConnectPreference;->mProtectFromCheckedChange:Z

    .line 100
    .end local v0           #isChecked:Z
    .end local v1           #rb:Landroid/widget/RadioButton;
    :cond_4
    :goto_0
    const v5, 0x1010002

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 101
    .local v2, textLayout:Landroid/view/View;
    if-eqz v2, :cond_5

    instance-of v5, v2, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_5

    .line 102
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    :cond_5
    return-object v3

    .line 96
    .end local v2           #textLayout:Landroid/view/View;
    .restart local v1       #rb:Landroid/widget/RadioButton;
    :cond_6
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 129
    sget-boolean v0, Lcom/android/stocksettings/ConnectPreference;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConnectPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged:ID= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/stocksettings/ConnectPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    iget-boolean v0, p0, Lcom/android/stocksettings/ConnectPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_2

    .line 131
    sget-boolean v0, Lcom/android/stocksettings/ConnectPreference;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "ConnectPreference"

    const-string v1, "mProtectFromCheckedChange=true,return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 135
    :cond_2
    if-eqz p2, :cond_5

    .line 136
    sget-object v0, Lcom/android/stocksettings/ConnectPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_3

    .line 137
    sget-object v0, Lcom/android/stocksettings/ConnectPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 139
    :cond_3
    sput-object p1, Lcom/android/stocksettings/ConnectPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 140
    invoke-virtual {p0}, Lcom/android/stocksettings/ConnectPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/stocksettings/ConnectPreference;->mSelectedKey:Ljava/lang/String;

    .line 141
    sget-boolean v0, Lcom/android/stocksettings/ConnectPreference;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "ConnectPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged:getKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/stocksettings/ConnectPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mSelectedKey= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/stocksettings/ConnectPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_4
    sget-object v0, Lcom/android/stocksettings/ConnectPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/ConnectPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_5
    sput-object v3, Lcom/android/stocksettings/ConnectPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 145
    sput-object v3, Lcom/android/stocksettings/ConnectPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 151
    return-void
.end method

.method public setChecked()V
    .locals 3

    .prologue
    .line 121
    sget-boolean v0, Lcom/android/stocksettings/ConnectPreference;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConnectPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked():getKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/stocksettings/ConnectPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    sget-boolean v0, Lcom/android/stocksettings/ConnectPreference;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "ConnectPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked():befor mSelectedKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/stocksettings/ConnectPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/android/stocksettings/ConnectPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/stocksettings/ConnectPreference;->mSelectedKey:Ljava/lang/String;

    .line 125
    sget-boolean v0, Lcom/android/stocksettings/ConnectPreference;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "ConnectPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked():after mSelectedKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/stocksettings/ConnectPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_2
    return-void
.end method
