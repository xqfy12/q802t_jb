.class public Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;
.super Landroid/app/Fragment;
.source "UserDictionaryAddWordFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# instance fields
.field private mContents:Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordContents;

.field private mIsDeleting:Z

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    return-void
.end method

.method private updateSpinner()V
    .locals 5

    .prologue
    .line 105
    iget-object v3, p0, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordContents;->getLocalesList(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v2

    .line 107
    .local v2, localesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;>;"
    iget-object v3, p0, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f080199

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 109
    .local v1, localeSpinner:Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x1090008

    invoke-direct {v0, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 111
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;>;"
    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 112
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 113
    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 114
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->setHasOptionsMenu(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 59
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 73
    const/4 v1, 0x1

    const v2, 0x7f0b0676

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 75
    .local v0, actionItem:Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 77
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 63
    const v0, 0x7f040091

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    .line 65
    iget-object v0, p0, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordContents;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordContents;

    iget-object v1, p0, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordContents;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    .line 132
    .local v0, locale:Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;
    invoke-virtual {v0}, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->isMoreLanguages()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 134
    .local v1, preferenceActivity:Landroid/preference/PreferenceActivity;
    new-instance v2, Lcom/android/stocksettings/inputmethod/UserDictionaryLocalePicker;

    invoke-direct {v2, p0}, Lcom/android/stocksettings/inputmethod/UserDictionaryLocalePicker;-><init>(Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/preference/PreferenceActivity;->startPreferenceFragment(Landroid/app/Fragment;Z)V

    .line 138
    .end local v1           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v0}, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->getLocaleString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 2
    .parameter "locale"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 152
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 144
    .local v0, args:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordContents;

    const-string v2, "locale"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordContents;->delete(Landroid/content/Context;)V

    .line 90
    iput-boolean v0, p0, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    .line 91
    invoke-virtual {p0}, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 120
    iget-boolean v0, p0, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordContents;->apply(Landroid/content/Context;Landroid/os/Bundle;)I

    .line 124
    iget-object v0, p0, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordContents;->updateValues(Landroid/content/Context;)V

    .line 126
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 101
    invoke-direct {p0}, Lcom/android/stocksettings/inputmethod/UserDictionaryAddWordFragment;->updateSpinner()V

    .line 102
    return-void
.end method
