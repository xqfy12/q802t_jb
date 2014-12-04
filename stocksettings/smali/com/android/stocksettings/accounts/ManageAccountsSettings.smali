.class public Lcom/android/stocksettings/accounts/ManageAccountsSettings;
.super Lcom/android/stocksettings/accounts/AccountPreferenceBase;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mAuthorities:[Ljava/lang/String;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mFirstAccount:Landroid/accounts/Account;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/stocksettings/accounts/AccountPreferenceBase;-><init>()V

    return-void
.end method

.method private addAuthenticatorSettings()V
    .locals 3

    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 376
    .local v0, prefs:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 377
    invoke-direct {p0, v0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V

    .line 379
    :cond_0
    return-void
.end method

.method private checkIsSyncingState(Z)Z
    .locals 5
    .parameter "isSyncActive"

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 183
    .local v1, count:I
    if-eqz p1, :cond_1

    .line 184
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 186
    .local v3, pref:Landroid/preference/Preference;
    instance-of v4, v3, Lcom/android/stocksettings/AccountPreference;

    if-eqz v4, :cond_0

    .line 187
    check-cast v3, Lcom/android/stocksettings/AccountPreference;

    .end local v3           #pref:Landroid/preference/Preference;
    invoke-virtual {v3}, Lcom/android/stocksettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 188
    .local v0, account:Landroid/accounts/Account;
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v4, v0}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    const/4 v4, 0x1

    .line 194
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #i:I
    :goto_1
    return v4

    .line 184
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    .end local v2           #i:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private requestOrCancelSyncForAccounts(Z)V
    .locals 10
    .parameter "sync"

    .prologue
    .line 211
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v7

    .line 212
    .local v7, syncAdapters:[Landroid/content/SyncAdapterType;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 213
    .local v2, extras:Landroid/os/Bundle;
    const-string v8, "force"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 214
    invoke-virtual {p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 216
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 217
    invoke-virtual {p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 218
    .local v5, pref:Landroid/preference/Preference;
    instance-of v8, v5, Lcom/android/stocksettings/AccountPreference;

    if-eqz v8, :cond_2

    .line 219
    check-cast v5, Lcom/android/stocksettings/AccountPreference;

    .end local v5           #pref:Landroid/preference/Preference;
    invoke-virtual {v5}, Lcom/android/stocksettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 221
    .local v0, account:Landroid/accounts/Account;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    array-length v8, v7

    if-ge v4, v8, :cond_2

    .line 222
    aget-object v6, v7, v4

    .line 223
    .local v6, sa:Landroid/content/SyncAdapterType;
    aget-object v8, v7, v4

    iget-object v8, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v8}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 225
    if-eqz p1, :cond_1

    .line 226
    iget-object v8, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v8, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 221
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 228
    :cond_1
    iget-object v8, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v8}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_2

    .line 216
    .end local v0           #account:Landroid/accounts/Account;
    .end local v4           #j:I
    .end local v6           #sa:Landroid/content/SyncAdapterType;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 234
    :cond_3
    return-void
.end method

.method private startAccountSettings(Lcom/android/stocksettings/AccountPreference;)V
    .locals 7
    .parameter

    .prologue
    .line 150
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 151
    const-string v0, "account"

    invoke-virtual {p1}, Lcom/android/stocksettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/stocksettings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b064d

    invoke-virtual {p1}, Lcom/android/stocksettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 156
    return-void
.end method

.method private updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V
    .locals 6
    .parameter "prefs"

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 383
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 384
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 385
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 386
    const/high16 v4, 0x1

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 387
    .local v3, ri:Landroid/content/pm/ResolveInfo;
    if-nez v3, :cond_0

    .line 388
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 391
    :cond_0
    const-string v4, "account"

    iget-object v5, p0, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 392
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x1000

    or-int/2addr v4, v5

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 395
    .end local v3           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 396
    goto :goto_0

    .line 397
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/android/stocksettings/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/stocksettings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 14
    .parameter "accounts"

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 372
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 329
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    .line 330
    const v1, 0x7f05001c

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 331
    const/4 v7, 0x0

    .local v7, i:I
    array-length v10, p1

    .local v10, n:I
    :goto_1
    if-ge v7, v10, :cond_7

    .line 332
    aget-object v2, p1, v7

    .line 334
    .local v2, account:Landroid/accounts/Account;
    iget-object v1, p0, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 331
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 335
    :cond_2
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 337
    .local v4, auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x1

    .line 338
    .local v13, showAccount:Z
    iget-object v1, p0, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    .line 339
    const/4 v13, 0x0

    .line 340
    iget-object v6, p0, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .local v6, arr$:[Ljava/lang/String;
    array-length v9, v6

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_3
    if-ge v8, v9, :cond_3

    aget-object v11, v6, v8

    .line 341
    .local v11, requestedAuthority:Ljava/lang/String;
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 342
    const/4 v13, 0x1

    .line 347
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v11           #requestedAuthority:Ljava/lang/String;
    :cond_3
    const-string v1, "com.android.localphone"

    iget-object v5, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.android.sim"

    iget-object v5, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 349
    :cond_4
    const/4 v13, 0x0

    .line 352
    :cond_5
    if-eqz v13, :cond_1

    .line 353
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 354
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/stocksettings/AccountPreference;

    invoke-virtual {p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/stocksettings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V

    .line 356
    .local v0, preference:Lcom/android/stocksettings/AccountPreference;
    invoke-virtual {p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 357
    iget-object v1, p0, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-nez v1, :cond_1

    .line 358
    iput-object v2, p0, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    .line 359
    invoke-virtual {p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_2

    .line 340
    .end local v0           #preference:Lcom/android/stocksettings/AccountPreference;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .restart local v6       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v9       #len$:I
    .restart local v11       #requestedAuthority:Ljava/lang/String;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 363
    .end local v2           #account:Landroid/accounts/Account;
    .end local v4           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v11           #requestedAuthority:Ljava/lang/String;
    .end local v13           #showAccount:Z
    :cond_7
    iget-object v1, p0, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_8

    .line 364
    invoke-direct {p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->addAuthenticatorSettings()V

    .line 371
    :goto_4
    invoke-virtual {p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    goto/16 :goto_0

    .line 367
    :cond_8
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    .local v12, settingsTop:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 369
    invoke-virtual {p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/android/stocksettings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 116
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getView()Landroid/view/View;

    move-result-object v2

    .line 118
    .local v2, view:Landroid/view/View;
    const v3, 0x7f080003

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 119
    iget-object v3, p0, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "authorities"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 124
    .local v1, args:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v3, "account_label"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "account_label"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->updateAuthDescriptions()V

    .line 128
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 4

    .prologue
    .line 402
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 403
    invoke-virtual {p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 404
    .local v2, pref:Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/stocksettings/AccountPreference;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 405
    check-cast v0, Lcom/android/stocksettings/AccountPreference;

    .line 406
    .local v0, accPref:Lcom/android/stocksettings/AccountPreference;
    invoke-virtual {v0}, Lcom/android/stocksettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/stocksettings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 402
    .end local v0           #accPref:Lcom/android/stocksettings/AccountPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 409
    .end local v2           #pref:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/stocksettings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 88
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    .line 91
    :cond_0
    const v1, 0x7f05001c

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 92
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->setHasOptionsMenu(Z)V

    .line 93
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v4, 0x0

    .line 160
    const/4 v2, 0x1

    const v3, 0x7f0b065c

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02005e

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 163
    .local v1, syncNow:Landroid/view/MenuItem;
    const/4 v2, 0x2

    const v3, 0x7f0b065d

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x1080038

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 166
    .local v0, syncCancel:Landroid/view/MenuItem;
    invoke-super {p0, p1, p2}, Lcom/android/stocksettings/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 167
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 105
    const v2, 0x7f040042

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 106
    .local v1, view:Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 107
    .local v0, list:Landroid/widget/ListView;
    invoke-static {p2, v1, v0, v3}, Lcom/android/stocksettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 108
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 199
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 207
    invoke-super {p0, p1}, Lcom/android/stocksettings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 201
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->requestOrCancelSyncForAccounts(Z)V

    goto :goto_0

    .line 204
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->requestOrCancelSyncForAccounts(Z)V

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/stocksettings/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferences"
    .parameter "preference"

    .prologue
    .line 141
    instance-of v0, p2, Lcom/android/stocksettings/AccountPreference;

    if-eqz v0, :cond_0

    .line 142
    check-cast p2, Lcom/android/stocksettings/AccountPreference;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->startAccountSettings(Lcom/android/stocksettings/AccountPreference;)V

    .line 146
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 144
    .restart local p2
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 171
    invoke-super {p0, p1}, Lcom/android/stocksettings/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 172
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 173
    .local v1, syncActive:Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->checkIsSyncingState(Z)Z

    move-result v0

    .line 175
    .local v0, isSyncing:Z
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-eqz v4, :cond_1

    move v4, v2

    :goto_1
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 176
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-eqz v4, :cond_2

    move v4, v2

    :goto_2
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 177
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v1, :cond_3

    :goto_3
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 178
    return-void

    .end local v0           #isSyncing:Z
    .end local v1           #syncActive:Z
    :cond_0
    move v1, v3

    .line 172
    goto :goto_0

    .restart local v0       #isSyncing:Z
    .restart local v1       #syncActive:Z
    :cond_1
    move v4, v3

    .line 175
    goto :goto_1

    :cond_2
    move v4, v3

    .line 176
    goto :goto_2

    :cond_3
    move v2, v3

    .line 177
    goto :goto_3
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/stocksettings/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/stocksettings/accounts/AccountPreferenceBase;->onStart()V

    .line 98
    invoke-virtual {p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 99
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 100
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/stocksettings/accounts/AccountPreferenceBase;->onStop()V

    .line 133
    invoke-virtual {p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 134
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 135
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 136
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 137
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 33

    .prologue
    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v29

    if-nez v29, :cond_0

    .line 323
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v10

    .line 244
    .local v10, currentSync:Landroid/content/SyncInfo;
    const/4 v5, 0x0

    .line 245
    .local v5, anySyncFailed:Z
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 248
    .local v11, date:Ljava/util/Date;
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v22

    .line 249
    .local v22, syncAdapters:[Landroid/content/SyncAdapterType;
    new-instance v28, Ljava/util/HashSet;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashSet;-><init>()V

    .line 250
    .local v28, userFacing:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, k:I
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v18, v0

    .local v18, n:I
    :goto_1
    move/from16 v0, v18

    if-ge v14, v0, :cond_2

    .line 251
    aget-object v20, v22, v14

    .line 252
    .local v20, sa:Landroid/content/SyncAdapterType;
    invoke-virtual/range {v20 .. v20}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v29

    if-eqz v29, :cond_1

    .line 253
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 256
    .end local v20           #sa:Landroid/content/SyncAdapterType;
    :cond_2
    const/4 v12, 0x0

    .local v12, i:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v9

    .local v9, count:I
    :goto_2
    if-ge v12, v9, :cond_11

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v19

    .line 258
    .local v19, pref:Landroid/preference/Preference;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/stocksettings/AccountPreference;

    move/from16 v29, v0

    if-nez v29, :cond_4

    .line 256
    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v3, v19

    .line 262
    check-cast v3, Lcom/android/stocksettings/AccountPreference;

    .line 263
    .local v3, accountPref:Lcom/android/stocksettings/AccountPreference;
    invoke-virtual {v3}, Lcom/android/stocksettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 264
    .local v2, account:Landroid/accounts/Account;
    const/16 v23, 0x0

    .line 265
    .local v23, syncCount:I
    const-wide/16 v15, 0x0

    .line 266
    .local v15, lastSuccessTime:J
    const/16 v25, 0x0

    .line 267
    .local v25, syncIsFailing:Z
    invoke-virtual {v3}, Lcom/android/stocksettings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v6

    .line 268
    .local v6, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v26, 0x0

    .line 269
    .local v26, syncingNow:Z
    if-eqz v6, :cond_b

    .line 270
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 271
    .local v7, authority:Ljava/lang/String;
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v21

    .line 272
    .local v21, status:Landroid/content/SyncStatusInfo;
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_7

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v29

    if-eqz v29, :cond_7

    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v29

    if-lez v29, :cond_7

    const/16 v24, 0x1

    .line 275
    .local v24, syncEnabled:Z
    :goto_5
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v8

    .line 276
    .local v8, authorityIsPending:Z
    if-eqz v10, :cond_8

    iget-object v0, v10, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    new-instance v29, Landroid/accounts/Account;

    iget-object v0, v10, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    iget-object v0, v10, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-direct/range {v29 .. v31}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    const/4 v4, 0x1

    .line 280
    .local v4, activelySyncing:Z
    :goto_6
    if-eqz v21, :cond_9

    if-eqz v24, :cond_9

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v29, v0

    const-wide/16 v31, 0x0

    cmp-long v29, v29, v31

    if-eqz v29, :cond_9

    const/16 v29, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_9

    const/16 v17, 0x1

    .line 285
    .local v17, lastSyncFailed:Z
    :goto_7
    if-eqz v17, :cond_5

    if-nez v4, :cond_5

    if-nez v8, :cond_5

    .line 286
    const/16 v25, 0x1

    .line 287
    const/4 v5, 0x1

    .line 289
    :cond_5
    or-int v26, v26, v4

    .line 290
    if-eqz v21, :cond_6

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v29, v0

    cmp-long v29, v15, v29

    if-gez v29, :cond_6

    .line 291
    move-object/from16 v0, v21

    iget-wide v15, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 293
    :cond_6
    if-eqz v24, :cond_a

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    const/16 v29, 0x1

    :goto_8
    add-int v23, v23, v29

    .line 294
    goto/16 :goto_4

    .line 272
    .end local v4           #activelySyncing:Z
    .end local v8           #authorityIsPending:Z
    .end local v17           #lastSyncFailed:Z
    .end local v24           #syncEnabled:Z
    :cond_7
    const/16 v24, 0x0

    goto/16 :goto_5

    .line 276
    .restart local v8       #authorityIsPending:Z
    .restart local v24       #syncEnabled:Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    .line 280
    .restart local v4       #activelySyncing:Z
    :cond_9
    const/16 v17, 0x0

    goto :goto_7

    .line 293
    .restart local v17       #lastSyncFailed:Z
    :cond_a
    const/16 v29, 0x0

    goto :goto_8

    .line 296
    .end local v4           #activelySyncing:Z
    .end local v7           #authority:Ljava/lang/String;
    .end local v8           #authorityIsPending:Z
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v17           #lastSyncFailed:Z
    .end local v21           #status:Landroid/content/SyncStatusInfo;
    .end local v24           #syncEnabled:Z
    :cond_b
    const-string v29, "AccountSettings"

    const/16 v30, 0x2

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 297
    const-string v29, "AccountSettings"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "no syncadapters found for "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_c
    if-eqz v25, :cond_d

    .line 301
    const/16 v29, 0x2

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Lcom/android/stocksettings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_3

    .line 302
    :cond_d
    if-nez v23, :cond_e

    .line 303
    const/16 v29, 0x1

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Lcom/android/stocksettings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_3

    .line 304
    :cond_e
    if-lez v23, :cond_10

    .line 305
    if-eqz v26, :cond_f

    .line 306
    const/16 v29, 0x3

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Lcom/android/stocksettings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_3

    .line 308
    :cond_f
    const/16 v29, 0x0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Lcom/android/stocksettings/AccountPreference;->setSyncStatus(IZ)V

    .line 309
    const-wide/16 v29, 0x0

    cmp-long v29, v15, v29

    if-lez v29, :cond_3

    .line 310
    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Lcom/android/stocksettings/AccountPreference;->setSyncStatus(IZ)V

    .line 311
    move-wide v0, v15

    invoke-virtual {v11, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 312
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->formatSyncDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v27

    .line 313
    .local v27, timeString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0b0658

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v27, v31, v32

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/android/stocksettings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 318
    .end local v27           #timeString:Ljava/lang/String;
    :cond_10
    const/16 v29, 0x1

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Lcom/android/stocksettings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_3

    .line 322
    .end local v2           #account:Landroid/accounts/Account;
    .end local v3           #accountPref:Lcom/android/stocksettings/AccountPreference;
    .end local v6           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15           #lastSuccessTime:J
    .end local v19           #pref:Landroid/preference/Preference;
    .end local v23           #syncCount:I
    .end local v25           #syncIsFailing:Z
    .end local v26           #syncingNow:Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v30, v0

    if-eqz v5, :cond_12

    const/16 v29, 0x0

    :goto_9
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_12
    const/16 v29, 0x8

    goto :goto_9
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/stocksettings/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
