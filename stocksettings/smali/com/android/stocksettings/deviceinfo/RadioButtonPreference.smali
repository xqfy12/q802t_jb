.class public Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;
.super Landroid/preference/Preference;
.source "RadioButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mChecked:Z

.field private mMountPath:Ljava/lang/String;

.field private mPreferenceButton:Landroid/widget/RadioButton;

.field private mPreferenceTitle:Landroid/widget/TextView;

.field private mTitleValue:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 18
    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->mChecked:Z

    .line 23
    const-string v0, "RadioButtonPreference"

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->TAG:Ljava/lang/String;

    .line 26
    const v0, 0x7f040067

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->setLayoutResource(I)V

    .line 27
    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->mMountPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->mTitleValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 33
    .local v0, view:Landroid/view/View;
    const v1, 0x7f080110

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 34
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    const v1, 0x7f08010f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    .line 36
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    iget-boolean v2, p0, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->mChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 38
    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->mChecked:Z

    return v0
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 81
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 83
    .local v0, newValue:Z
    :goto_0
    if-nez v0, :cond_2

    .line 92
    :cond_0
    :goto_1
    return-void

    .line 81
    .end local v0           #newValue:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    .restart local v0       #newValue:Z
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 65
    .local v0, newValue:Z
    :goto_0
    if-nez v0, :cond_2

    .line 74
    :cond_0
    :goto_1
    return-void

    .line 63
    .end local v0           #newValue:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    .restart local v0       #newValue:Z
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public setChecked(Z)Z
    .locals 2
    .parameter "checked"

    .prologue
    const/4 v0, 0x0

    .line 95
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    if-nez v1, :cond_1

    .line 97
    iput-boolean p1, p0, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->mChecked:Z

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    iget-boolean v1, p0, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->mChecked:Z

    if-eq v1, p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 103
    iput-boolean p1, p0, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->mChecked:Z

    .line 104
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->mMountPath:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->mPreferenceTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 44
    iput-object p1, p0, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    iput-object p1, p0, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 48
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/RadioButtonPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_1
    return-void
.end method
