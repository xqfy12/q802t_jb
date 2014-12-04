.class public Lcom/android/stocksettings/LocationSettings;
.super Lcom/android/stocksettings/SettingsPreferenceFragment;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stocksettings/LocationSettings$XTServiceConnection;
    }
.end annotation


# instance fields
.field private izatConnResult:Z

.field private mAGpsParas:Landroid/preference/Preference;

.field private mAssistedGps:Landroid/preference/CheckBoxPreference;

.field private mCallback:Lcom/android/location/XT/IXTSrvCb;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mGps:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mIZat:Landroid/preference/CheckBoxPreference;

.field private mLocationAccess:Landroid/preference/SwitchPreference;

.field private mNetwork:Landroid/preference/CheckBoxPreference;

.field private mServiceConn:Lcom/android/stocksettings/LocationSettings$XTServiceConnection;

.field private mSettingsObserver:Ljava/util/Observer;

.field private mXTService:Lcom/android/location/XT/IXTSrv;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;-><init>()V

    .line 99
    iput-object v0, p0, Lcom/android/stocksettings/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;

    .line 100
    iput-object v0, p0, Lcom/android/stocksettings/LocationSettings;->mServiceConn:Lcom/android/stocksettings/LocationSettings$XTServiceConnection;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stocksettings/LocationSettings;->izatConnResult:Z

    .line 106
    new-instance v0, Lcom/android/stocksettings/LocationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/LocationSettings$1;-><init>(Lcom/android/stocksettings/LocationSettings;)V

    iput-object v0, p0, Lcom/android/stocksettings/LocationSettings;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v0, Lcom/android/stocksettings/LocationSettings$2;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/LocationSettings$2;-><init>(Lcom/android/stocksettings/LocationSettings;)V

    iput-object v0, p0, Lcom/android/stocksettings/LocationSettings;->mCallback:Lcom/android/location/XT/IXTSrvCb;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/android/stocksettings/LocationSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/stocksettings/LocationSettings;->mIZat:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/stocksettings/LocationSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/stocksettings/LocationSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/stocksettings/LocationSettings;)Lcom/android/location/XT/IXTSrv;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/stocksettings/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/stocksettings/LocationSettings;Lcom/android/location/XT/IXTSrv;)Lcom/android/location/XT/IXTSrv;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/stocksettings/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/stocksettings/LocationSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/stocksettings/LocationSettings;->updateLocationToggles()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/stocksettings/LocationSettings;)Lcom/android/location/XT/IXTSrvCb;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/stocksettings/LocationSettings;->mCallback:Lcom/android/location/XT/IXTSrvCb;

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 5

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/stocksettings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 208
    .local v1, root:Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 211
    :cond_0
    const v3, 0x7f05001b

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/LocationSettings;->addPreferencesFromResource(I)V

    .line 212
    invoke-virtual {p0}, Lcom/android/stocksettings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 214
    const-string v3, "location_toggle"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/stocksettings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    .line 215
    const-string v3, "location_network"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/stocksettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    .line 216
    const-string v3, "location_izat"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/stocksettings/LocationSettings;->mIZat:Landroid/preference/CheckBoxPreference;

    .line 217
    const-string v3, "location_gps"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/stocksettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    .line 218
    const-string v3, "assisted_gps"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/stocksettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    .line 221
    iget-object v3, p0, Lcom/android/stocksettings/LocationSettings;->mIZat:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 226
    const-string v3, "assisted_gps_params"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stocksettings/LocationSettings;->mAGpsParas:Landroid/preference/Preference;

    .line 227
    iget-object v3, p0, Lcom/android/stocksettings/LocationSettings;->mAGpsParas:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 231
    invoke-virtual {p0}, Lcom/android/stocksettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 232
    .local v2, um:Landroid/os/UserManager;
    const-string v3, "no_share_location"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v0, 0x1

    .line 233
    .local v0, isToggleAllowed:Z
    :goto_0
    iget-object v3, p0, Lcom/android/stocksettings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/stocksettings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 234
    :cond_1
    iget-object v3, p0, Lcom/android/stocksettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/stocksettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 235
    :cond_2
    iget-object v3, p0, Lcom/android/stocksettings/LocationSettings;->mIZat:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/stocksettings/LocationSettings;->mIZat:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 236
    :cond_3
    iget-object v3, p0, Lcom/android/stocksettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/stocksettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 237
    :cond_4
    iget-object v3, p0, Lcom/android/stocksettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/stocksettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 239
    :cond_5
    iget-object v3, p0, Lcom/android/stocksettings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 240
    return-object v1

    .line 232
    .end local v0           #isToggleAllowed:Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initUserPrefService()V
    .locals 4

    .prologue
    .line 138
    new-instance v0, Lcom/android/stocksettings/LocationSettings$XTServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/stocksettings/LocationSettings$XTServiceConnection;-><init>(Lcom/android/stocksettings/LocationSettings;Lcom/android/stocksettings/LocationSettings$1;)V

    iput-object v0, p0, Lcom/android/stocksettings/LocationSettings;->mServiceConn:Lcom/android/stocksettings/LocationSettings$XTServiceConnection;

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/location/XT/IXTSrv;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/stocksettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/LocationSettings;->mServiceConn:Lcom/android/stocksettings/LocationSettings$XTServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/stocksettings/LocationSettings;->izatConnResult:Z

    .line 141
    return-void
.end method

.method private onToggleLocationAccess(Z)V
    .locals 4
    .parameter "checked"

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/android/stocksettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 400
    .local v1, um:Landroid/os/UserManager;
    const-string v2, "no_share_location"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    :goto_0
    return-void

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 404
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "gps"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 406
    const-string v2, "network"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 426
    invoke-direct {p0}, Lcom/android/stocksettings/LocationSettings;->updateLocationToggles()V

    goto :goto_0
.end method

.method private updateGoogleServiceAccess(Z)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/android/stocksettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 455
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "network"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 457
    iget-object v1, p0, Lcom/android/stocksettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 458
    return-void
.end method

.method private updateLocationToggles()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 362
    invoke-virtual {p0}, Lcom/android/stocksettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 363
    .local v3, res:Landroid/content/ContentResolver;
    const-string v6, "gps"

    invoke-static {v3, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 365
    .local v0, gpsEnabled:Z
    const-string v6, "network"

    invoke-static {v3, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 367
    .local v2, networkEnabled:Z
    iget-object v6, p0, Lcom/android/stocksettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 368
    iget-object v6, p0, Lcom/android/stocksettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 370
    :try_start_0
    iget-object v6, p0, Lcom/android/stocksettings/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;

    if-eqz v6, :cond_3

    .line 371
    iget-object v6, p0, Lcom/android/stocksettings/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;

    invoke-interface {v6}, Lcom/android/location/XT/IXTSrv;->getStatus()Z

    move-result v1

    .line 372
    .local v1, izatEnabled:Z
    iget-object v6, p0, Lcom/android/stocksettings/LocationSettings;->mIZat:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 373
    iget-object v7, p0, Lcom/android/stocksettings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    move v6, v4

    :goto_0
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .end local v1           #izatEnabled:Z
    :goto_1
    iget-object v6, p0, Lcom/android/stocksettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_1

    .line 382
    iget-object v6, p0, Lcom/android/stocksettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    const-string v7, "assisted_gps_enabled"

    const/4 v8, 0x2

    invoke-static {v3, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v4, :cond_6

    :goto_2
    invoke-virtual {v6, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 384
    iget-object v4, p0, Lcom/android/stocksettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 386
    :cond_1
    return-void

    .restart local v1       #izatEnabled:Z
    :cond_2
    move v6, v5

    .line 373
    goto :goto_0

    .line 375
    .end local v1           #izatEnabled:Z
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/android/stocksettings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    if-nez v0, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    move v6, v4

    :goto_3
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 378
    :catch_0
    move-exception v6

    goto :goto_1

    :cond_5
    move v6, v5

    .line 375
    goto :goto_3

    :cond_6
    move v4, v5

    .line 382
    goto :goto_2
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 447
    const v0, 0x7f0b0780

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 393
    invoke-super {p0, p1, p2, p3}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 394
    invoke-direct {p0}, Lcom/android/stocksettings/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 395
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 435
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 436
    .local v0, chooseValue:Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "location_toggle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    if-nez v0, :cond_0

    .line 438
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/stocksettings/LocationSettings;->updateGoogleServiceAccess(Z)V

    .line 440
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/stocksettings/LocationSettings;->onToggleLocationAccess(Z)V

    .line 442
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/android/stocksettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 279
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/stocksettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "user"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 280
    .local v7, um:Landroid/os/UserManager;
    iget-object v10, p0, Lcom/android/stocksettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-ne p2, v10, :cond_1

    .line 281
    const-string v8, "no_share_location"

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 282
    const-string v8, "network"

    iget-object v10, p0, Lcom/android/stocksettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-static {v0, v8, v10}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 355
    :cond_0
    :goto_0
    return v9

    .line 285
    :cond_1
    iget-object v10, p0, Lcom/android/stocksettings/LocationSettings;->mIZat:Landroid/preference/CheckBoxPreference;

    if-ne p2, v10, :cond_3

    .line 286
    const-string v8, "no_share_location"

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 287
    iget-object v8, p0, Lcom/android/stocksettings/LocationSettings;->mIZat:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 289
    :try_start_0
    iget-object v8, p0, Lcom/android/stocksettings/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;

    if-eqz v8, :cond_0

    .line 290
    iget-object v8, p0, Lcom/android/stocksettings/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;

    invoke-interface {v8}, Lcom/android/location/XT/IXTSrv;->showDialog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v8

    goto :goto_0

    .line 299
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/stocksettings/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;

    invoke-interface {v8}, Lcom/android/location/XT/IXTSrv;->disable()Z

    .line 300
    iget-object v8, p0, Lcom/android/stocksettings/LocationSettings;->mIZat:Landroid/preference/CheckBoxPreference;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 301
    invoke-direct {p0}, Lcom/android/stocksettings/LocationSettings;->updateLocationToggles()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 303
    :catch_1
    move-exception v8

    goto :goto_0

    .line 311
    :cond_3
    iget-object v10, p0, Lcom/android/stocksettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v10, :cond_4

    .line 312
    iget-object v8, p0, Lcom/android/stocksettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 313
    .local v2, enabled:Z
    const-string v8, "no_share_location"

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 314
    const-string v8, "gps"

    invoke-static {v0, v8, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 316
    iget-object v8, p0, Lcom/android/stocksettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_0

    .line 317
    iget-object v8, p0, Lcom/android/stocksettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 320
    .end local v2           #enabled:Z
    :cond_4
    iget-object v10, p0, Lcom/android/stocksettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v10, :cond_9

    .line 321
    iget-object v10, p0, Lcom/android/stocksettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 322
    const-string v10, "assisted_gps_supl_host"

    invoke-static {v0, v10}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    const-string v10, "assisted_gps_supl_port"

    invoke-static {v0, v10}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_6

    .line 325
    :cond_5
    const/4 v5, 0x0

    .line 327
    .local v5, stream:Ljava/io/FileInputStream;
    :try_start_2
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 328
    .local v4, properties:Ljava/util/Properties;
    new-instance v3, Ljava/io/File;

    const-string v10, "/etc/gps.conf"

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    .local v3, file:Ljava/io/File;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 330
    .end local v5           #stream:Ljava/io/FileInputStream;
    .local v6, stream:Ljava/io/FileInputStream;
    :try_start_3
    invoke-virtual {v4, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 331
    const-string v10, "assisted_gps_supl_host"

    const-string v11, "SUPL_HOST"

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v10, v11}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 333
    const-string v10, "assisted_gps_supl_port"

    const-string v11, "SUPL_PORT"

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v10, v11}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 339
    if-eqz v6, :cond_6

    .line 341
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 348
    .end local v3           #file:Ljava/io/File;
    .end local v4           #properties:Ljava/util/Properties;
    .end local v6           #stream:Ljava/io/FileInputStream;
    :cond_6
    :goto_1
    const-string v10, "assisted_gps_enabled"

    iget-object v11, p0, Lcom/android/stocksettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_7

    move v8, v9

    :cond_7
    invoke-static {v0, v10, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 335
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 336
    .local v1, e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v10, "LocationSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not open GPS configuration file /etc/gps.conf, e="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 339
    if-eqz v5, :cond_6

    .line 341
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 342
    :catch_3
    move-exception v10

    goto :goto_1

    .line 339
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v5, :cond_8

    .line 341
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 343
    :cond_8
    :goto_4
    throw v8

    .line 352
    .end local v5           #stream:Ljava/io/FileInputStream;
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v9

    goto/16 :goto_0

    .line 342
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #properties:Ljava/util/Properties;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_4
    move-exception v10

    goto :goto_1

    .end local v3           #file:Ljava/io/File;
    .end local v4           #properties:Ljava/util/Properties;
    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catch_5
    move-exception v9

    goto :goto_4

    .line 339
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #properties:Ljava/util/Properties;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_3

    .line 335
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 245
    invoke-super {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onResume()V

    .line 249
    invoke-direct {p0}, Lcom/android/stocksettings/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 251
    :try_start_0
    iget-object v2, p0, Lcom/android/stocksettings/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;

    if-eqz v2, :cond_1

    .line 252
    iget-object v2, p0, Lcom/android/stocksettings/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/location/XT/IXTSrv;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, izatMenuTitle:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/stocksettings/LocationSettings;->mXTService:Lcom/android/location/XT/IXTSrv;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/location/XT/IXTSrv;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, izatSubtitle:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/stocksettings/LocationSettings;->mIZat:Landroid/preference/CheckBoxPreference;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v2, p0, Lcom/android/stocksettings/LocationSettings;->mIZat:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 256
    invoke-direct {p0}, Lcom/android/stocksettings/LocationSettings;->updateLocationToggles()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v0           #izatMenuTitle:Ljava/lang/String;
    .end local v1           #izatSubtitle:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/stocksettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-nez v2, :cond_0

    .line 265
    new-instance v2, Lcom/android/stocksettings/LocationSettings$3;

    invoke-direct {v2, p0}, Lcom/android/stocksettings/LocationSettings$3;-><init>(Lcom/android/stocksettings/LocationSettings;)V

    iput-object v2, p0, Lcom/android/stocksettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    .line 273
    :cond_0
    iget-object v2, p0, Lcom/android/stocksettings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v3, p0, Lcom/android/stocksettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v2, v3}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 274
    return-void

    .line 258
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/stocksettings/LocationSettings;->updateLocationToggles()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 186
    invoke-super {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onStart()V

    .line 187
    invoke-direct {p0}, Lcom/android/stocksettings/LocationSettings;->initUserPrefService()V

    .line 189
    invoke-virtual {p0}, Lcom/android/stocksettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "location_providers_allowed"

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 193
    .local v6, settingsCursor:Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v8, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/stocksettings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 194
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onStop()V

    .line 199
    iget-object v0, p0, Lcom/android/stocksettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/stocksettings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/stocksettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->close()V

    .line 203
    invoke-virtual {p0}, Lcom/android/stocksettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/LocationSettings;->mServiceConn:Lcom/android/stocksettings/LocationSettings$XTServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 204
    return-void
.end method
