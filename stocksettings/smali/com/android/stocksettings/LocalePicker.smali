.class public Lcom/android/stocksettings/LocalePicker;
.super Lcom/android/internal/app/LocalePicker;
.source "LocalePicker.java"

# interfaces
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;
.implements Lcom/android/stocksettings/DialogCreatable;


# instance fields
.field private mDialogFragment:Lcom/android/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mTargetLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    .line 47
    invoke-virtual {p0, p0}, Lcom/android/stocksettings/LocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/stocksettings/LocalePicker;)Ljava/util/Locale;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/stocksettings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    return-object v0
.end method


# virtual methods
.method protected isInDeveloperMode()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/internal/app/LocalePicker;->onCreate(Landroid/os/Bundle;)V

    .line 63
    if-eqz p1, :cond_0

    const-string v0, "locale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/util/Locale;

    const-string v1, "locale"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/stocksettings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    .line 66
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/stocksettings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b076f

    new-instance v2, Lcom/android/stocksettings/LocalePicker$1;

    invoke-direct {v2, p0, p1}, Lcom/android/stocksettings/LocalePicker$1;-><init>(Lcom/android/stocksettings/LocalePicker;I)V

    invoke-static {v0, v1, v2}, Lcom/android/stocksettings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/LocalePicker;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 72
    .local v1, view:Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 73
    .local v0, list:Landroid/widget/ListView;
    const/4 v2, 0x0

    invoke-static {p2, v1, v0, v2}, Lcom/android/stocksettings/Utils;->forcePrepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 74
    return-object v1
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 1
    .parameter "locale"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/stocksettings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/stocksettings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iput-object p1, p0, Lcom/android/stocksettings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/LocalePicker;->showDialog(I)V

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 84
    invoke-static {p1}, Lcom/android/stocksettings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/internal/app/LocalePicker;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 92
    iget-object v0, p0, Lcom/android/stocksettings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "locale"

    iget-object v1, p0, Lcom/android/stocksettings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method

.method protected removeDialog(I)V
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/stocksettings/LocalePicker;->mDialogFragment:Lcom/android/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stocksettings/LocalePicker;->mDialogFragment:Lcom/android/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/stocksettings/LocalePicker;->mDialogFragment:Lcom/android/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 125
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stocksettings/LocalePicker;->mDialogFragment:Lcom/android/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 126
    return-void
.end method

.method protected showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/stocksettings/LocalePicker;->mDialogFragment:Lcom/android/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "LocalePicker"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    new-instance v0, Lcom/android/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/stocksettings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/stocksettings/LocalePicker;->mDialogFragment:Lcom/android/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 102
    iget-object v0, p0, Lcom/android/stocksettings/LocalePicker;->mDialogFragment:Lcom/android/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/stocksettings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/stocksettings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 103
    return-void
.end method
