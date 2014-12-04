.class public Lcom/android/stocksettings/AgpsSettings;
.super Landroid/preference/PreferenceActivity;
.source "AgpsSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private mAssistedType:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mFirstTime:Z

.field private mNetworkType:Ljava/lang/String;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mResetType:Ljava/lang/String;

.field private mServer:Landroid/preference/EditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private SetValue(Landroid/os/Bundle;)V
    .locals 7
    .parameter "bundle"

    .prologue
    .line 359
    const-string v5, "host"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, supl_host:Ljava/lang/String;
    const-string v5, "port"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 361
    .local v4, supl_port:Ljava/lang/String;
    const-string v5, "providerid"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, agps_provid:Ljava/lang/String;
    const-string v5, "network"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, agps_network:Ljava/lang/String;
    const-string v5, "resettype"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, agps_reset_type:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 365
    iget-object v5, p0, Lcom/android/stocksettings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "assisted_gps_supl_host"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 368
    :cond_0
    if-eqz v4, :cond_1

    .line 369
    iget-object v5, p0, Lcom/android/stocksettings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "assisted_gps_supl_port"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 372
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 373
    iget-object v5, p0, Lcom/android/stocksettings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "assisted_gps_position_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 376
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 377
    iget-object v5, p0, Lcom/android/stocksettings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "assisted_gps_network"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 380
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 381
    const-string v5, "HOT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    .line 382
    const-string v2, "2"

    .line 388
    :goto_0
    iget-object v5, p0, Lcom/android/stocksettings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "assisted_gps_reset_type"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 391
    :cond_4
    return-void

    .line 383
    :cond_5
    const-string v5, "WARM"

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_6

    .line 384
    const-string v2, "1"

    goto :goto_0

    .line 386
    :cond_6
    const-string v2, "0"

    goto :goto_0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 216
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/stocksettings/AgpsSettings;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    :cond_0
    const-string p1, ""

    .line 219
    .end local p1
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    sget-object p1, Lcom/android/stocksettings/AgpsSettings;->sNotSet:Ljava/lang/String;

    .line 211
    .end local p1
    :cond_0
    return-object p1
.end method

.method private fillUi(Z)V
    .locals 2
    .parameter "restore"

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/stocksettings/AgpsSettings;->mFirstTime:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 188
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stocksettings/AgpsSettings;->mFirstTime:Z

    .line 189
    iget-object v0, p0, Lcom/android/stocksettings/AgpsSettings;->mServer:Landroid/preference/EditTextPreference;

    invoke-direct {p0}, Lcom/android/stocksettings/AgpsSettings;->getSuplServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/stocksettings/AgpsSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-direct {p0}, Lcom/android/stocksettings/AgpsSettings;->getSuplPort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/android/stocksettings/AgpsSettings;->mServer:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/stocksettings/AgpsSettings;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/stocksettings/AgpsSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/android/stocksettings/AgpsSettings;->mPort:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/stocksettings/AgpsSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/stocksettings/AgpsSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 195
    invoke-direct {p0}, Lcom/android/stocksettings/AgpsSettings;->setPrefAgpsType()V

    .line 196
    invoke-direct {p0}, Lcom/android/stocksettings/AgpsSettings;->setPrefAgpsNetwork()V

    .line 197
    invoke-direct {p0}, Lcom/android/stocksettings/AgpsSettings;->setPrefAgpsResetType()V

    .line 198
    return-void
.end method

.method private getPrefAgpsResetType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 245
    iget-object v1, p0, Lcom/android/stocksettings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "assisted_gps_reset_type"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, agps_reset_type:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 248
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 249
    const-string v0, "HOT"

    .line 256
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .end local v0           #agps_reset_type:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 250
    .restart local v0       #agps_reset_type:Ljava/lang/String;
    :cond_1
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 251
    const-string v0, "WARM"

    goto :goto_0

    .line 253
    :cond_2
    const-string v0, "COLD"

    goto :goto_0

    .line 256
    :cond_3
    invoke-virtual {p0}, Lcom/android/stocksettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getPrefAgpsType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/stocksettings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "assisted_gps_position_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, agps_type:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #agps_type:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #agps_type:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPrefNetwork()Ljava/lang/String;
    .locals 3

    .prologue
    .line 238
    iget-object v1, p0, Lcom/android/stocksettings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "assisted_gps_network"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, agps_network:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #agps_network:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #agps_network:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSuplPort()Ljava/lang/String;
    .locals 3

    .prologue
    .line 231
    iget-object v1, p0, Lcom/android/stocksettings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "assisted_gps_supl_port"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, supl_port:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #supl_port:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #supl_port:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSuplServer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 224
    iget-object v1, p0, Lcom/android/stocksettings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "assisted_gps_supl_host"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, supl_host:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #supl_host:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #supl_host:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private restoreAgpsParam()V
    .locals 11

    .prologue
    .line 315
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 316
    .local v1, bundle:Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 318
    .local v6, stream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 319
    .local v5, properties:Ljava/util/Properties;
    new-instance v3, Ljava/io/File;

    const-string v8, "/etc/gps.conf"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    .local v3, file:Ljava/io/File;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 321
    .end local v6           #stream:Ljava/io/FileInputStream;
    .local v7, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 322
    const-string v8, "host"

    const-string v9, "SUPL_HOST"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v8, "port"

    const-string v9, "SUPL_PORT"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 328
    if-eqz v7, :cond_4

    .line 330
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v7

    .line 335
    .end local v3           #file:Ljava/io/File;
    .end local v5           #properties:Ljava/util/Properties;
    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    const-string v8, "MSB"

    iput-object v8, p0, Lcom/android/stocksettings/AgpsSettings;->mAssistedType:Ljava/lang/String;

    .line 336
    const-string v8, "HOME"

    iput-object v8, p0, Lcom/android/stocksettings/AgpsSettings;->mNetworkType:Ljava/lang/String;

    .line 337
    const-string v8, "HOT"

    iput-object v8, p0, Lcom/android/stocksettings/AgpsSettings;->mResetType:Ljava/lang/String;

    .line 338
    const-string v8, "providerid"

    iget-object v9, p0, Lcom/android/stocksettings/AgpsSettings;->mAssistedType:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v8, "network"

    iget-object v9, p0, Lcom/android/stocksettings/AgpsSettings;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v8, "resettype"

    iget-object v9, p0, Lcom/android/stocksettings/AgpsSettings;->mResetType:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-direct {p0, v1}, Lcom/android/stocksettings/AgpsSettings;->SetValue(Landroid/os/Bundle;)V

    .line 342
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/stocksettings/AgpsSettings;->fillUi(Z)V

    .line 343
    const-string v8, "location"

    invoke-virtual {p0, v8}, Lcom/android/stocksettings/AgpsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    .line 345
    .local v4, objLocManager:Landroid/location/LocationManager;
    iget-object v8, p0, Lcom/android/stocksettings/AgpsSettings;->mResetType:Ljava/lang/String;

    const-string v9, "HOT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2

    .line 346
    const-string v8, "resettype"

    const-string v9, "2"

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :goto_1
    const-string v8, "gps"

    const-string v9, "agps_parms_changed"

    invoke-virtual {v4, v8, v9, v1}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    .line 354
    .local v0, bRet:Z
    const-string v8, "AGPSSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendExtraCommand ret="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void

    .line 331
    .end local v0           #bRet:Z
    .end local v4           #objLocManager:Landroid/location/LocationManager;
    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #properties:Ljava/util/Properties;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v8

    move-object v6, v7

    .line 332
    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    goto :goto_0

    .line 325
    .end local v3           #file:Ljava/io/File;
    .end local v5           #properties:Ljava/util/Properties;
    :catch_1
    move-exception v2

    .line 326
    .local v2, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v8, "AGPSSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not open GPS configuration file /etc/gps.conf, e="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 328
    if-eqz v6, :cond_0

    .line 330
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 331
    :catch_2
    move-exception v8

    goto/16 :goto_0

    .line 328
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v6, :cond_1

    .line 330
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 332
    :cond_1
    :goto_4
    throw v8

    .line 347
    .restart local v4       #objLocManager:Landroid/location/LocationManager;
    :cond_2
    iget-object v8, p0, Lcom/android/stocksettings/AgpsSettings;->mResetType:Ljava/lang/String;

    const-string v9, "WARM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    .line 348
    const-string v8, "resettype"

    const-string v9, "1"

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 350
    :cond_3
    const-string v8, "resettype"

    const-string v9, "0"

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 331
    .end local v4           #objLocManager:Landroid/location/LocationManager;
    :catch_3
    move-exception v9

    goto :goto_4

    .line 328
    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #properties:Ljava/util/Properties;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    goto :goto_3

    .line 325
    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    :catch_4
    move-exception v2

    move-object v6, v7

    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    :cond_4
    move-object v6, v7

    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method private saveAgpsParams()V
    .locals 6

    .prologue
    .line 294
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 295
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "host"

    iget-object v4, p0, Lcom/android/stocksettings/AgpsSettings;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/stocksettings/AgpsSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v3, "port"

    iget-object v4, p0, Lcom/android/stocksettings/AgpsSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/stocksettings/AgpsSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v3, "providerid"

    iget-object v4, p0, Lcom/android/stocksettings/AgpsSettings;->mAssistedType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v3, "network"

    iget-object v4, p0, Lcom/android/stocksettings/AgpsSettings;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-direct {p0, v1}, Lcom/android/stocksettings/AgpsSettings;->SetValue(Landroid/os/Bundle;)V

    .line 300
    iget-object v3, p0, Lcom/android/stocksettings/AgpsSettings;->mResetType:Ljava/lang/String;

    const-string v4, "HOT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 301
    const-string v3, "resettype"

    const-string v4, "2"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :goto_0
    const-string v3, "location"

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/AgpsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 309
    .local v2, objLocManager:Landroid/location/LocationManager;
    const-string v3, "gps"

    const-string v4, "agps_parms_changed"

    invoke-virtual {v2, v3, v4, v1}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    .line 311
    .local v0, bRet:Z
    const-string v3, "AGPSSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendExtraCommand ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void

    .line 302
    .end local v0           #bRet:Z
    .end local v2           #objLocManager:Landroid/location/LocationManager;
    :cond_0
    iget-object v3, p0, Lcom/android/stocksettings/AgpsSettings;->mResetType:Ljava/lang/String;

    const-string v4, "WARM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 303
    const-string v3, "resettype"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_1
    const-string v3, "resettype"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPrefAgpsNetwork()V
    .locals 5

    .prologue
    .line 154
    const-string v3, "agps_network"

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/AgpsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 155
    .local v1, pref:Landroid/preference/ListPreference;
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/stocksettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, types:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/stocksettings/AgpsSettings;->getPrefNetwork()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, defPref:Ljava/lang/String;
    iput-object v0, p0, Lcom/android/stocksettings/AgpsSettings;->mNetworkType:Ljava/lang/String;

    .line 159
    const-string v3, "ALL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    const-string v3, "1"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 161
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 166
    :goto_0
    return-void

    .line 163
    :cond_0
    const-string v3, "0"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 164
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setPrefAgpsResetType()V
    .locals 5

    .prologue
    .line 169
    const-string v3, "agps_reset_type"

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/AgpsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 170
    .local v1, pref:Landroid/preference/ListPreference;
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/stocksettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, types:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/stocksettings/AgpsSettings;->getPrefAgpsResetType()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, defPref:Ljava/lang/String;
    iput-object v0, p0, Lcom/android/stocksettings/AgpsSettings;->mResetType:Ljava/lang/String;

    .line 174
    const-string v3, "COLD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    const-string v3, "2"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 176
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 184
    :goto_0
    return-void

    .line 177
    :cond_0
    const-string v3, "WARM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    const-string v3, "1"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 179
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 181
    :cond_1
    const-string v3, "0"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 182
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setPrefAgpsType()V
    .locals 6

    .prologue
    .line 134
    const-string v4, "agps_pref"

    invoke-virtual {p0, v4}, Lcom/android/stocksettings/AgpsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 135
    .local v1, pref:Landroid/preference/ListPreference;
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/stocksettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, types:[Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 139
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-direct {p0}, Lcom/android/stocksettings/AgpsSettings;->getPrefAgpsType()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, defPref:Ljava/lang/String;
    iput-object v0, p0, Lcom/android/stocksettings/AgpsSettings;->mAssistedType:Ljava/lang/String;

    .line 141
    const-string v4, "MSB"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    const-string v4, "0"

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 143
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    :goto_0
    return-void

    .line 144
    :cond_0
    const-string v4, "MSA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    const-string v4, "1"

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 146
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 148
    :cond_1
    const-string v4, "2"

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 149
    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/stocksettings/AgpsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/AgpsSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 111
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/AgpsSettings;->addPreferencesFromResource(I)V

    .line 112
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/stocksettings/AgpsSettings;->mFirstTime:Z

    .line 113
    invoke-virtual {p0}, Lcom/android/stocksettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b03f0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/stocksettings/AgpsSettings;->sNotSet:Ljava/lang/String;

    .line 114
    const-string v0, "server_addr"

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/AgpsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/stocksettings/AgpsSettings;->mServer:Landroid/preference/EditTextPreference;

    .line 115
    const-string v0, "server_port"

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/AgpsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/stocksettings/AgpsSettings;->mPort:Landroid/preference/EditTextPreference;

    .line 116
    invoke-direct {p0, v1}, Lcom/android/stocksettings/AgpsSettings;->fillUi(Z)V

    .line 117
    return-void

    :cond_0
    move v0, v1

    .line 112
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 269
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 270
    invoke-virtual {p0}, Lcom/android/stocksettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0392

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 273
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/stocksettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b039a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 276
    return v4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 281
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 290
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 283
    :pswitch_0
    invoke-direct {p0}, Lcom/android/stocksettings/AgpsSettings;->saveAgpsParams()V

    goto :goto_0

    .line 287
    :pswitch_1
    invoke-direct {p0}, Lcom/android/stocksettings/AgpsSettings;->restoreAgpsParam()V

    goto :goto_0

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 129
    invoke-virtual {p0}, Lcom/android/stocksettings/AgpsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 131
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v7, 0x1

    .line 395
    instance-of v5, p1, Landroid/preference/ListPreference;

    if-eqz v5, :cond_2

    move-object v0, p1

    .line 397
    check-cast v0, Landroid/preference/ListPreference;

    .line 398
    .local v0, pref:Landroid/preference/ListPreference;
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, prefKey:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 401
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 402
    .local v4, value:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 404
    .local v2, type:I
    const-string v5, "agps_network"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    .line 406
    invoke-virtual {p0}, Lcom/android/stocksettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, types:[Ljava/lang/String;
    if-nez v2, :cond_3

    .line 409
    const-string v5, "HOME"

    iput-object v5, p0, Lcom/android/stocksettings/AgpsSettings;->mNetworkType:Ljava/lang/String;

    .line 413
    :cond_0
    :goto_0
    if-ne v2, v7, :cond_1

    .line 414
    const v5, 0x7f0b03ef

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 442
    :cond_1
    :goto_1
    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 443
    aget-object v5, v3, v2

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 446
    .end local v0           #pref:Landroid/preference/ListPreference;
    .end local v1           #prefKey:Ljava/lang/String;
    .end local v2           #type:I
    .end local v3           #types:[Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :cond_2
    return v7

    .line 410
    .restart local v0       #pref:Landroid/preference/ListPreference;
    .restart local v1       #prefKey:Ljava/lang/String;
    .restart local v2       #type:I
    .restart local v3       #types:[Ljava/lang/String;
    .restart local v4       #value:Ljava/lang/String;
    :cond_3
    if-ne v2, v7, :cond_0

    .line 411
    const-string v5, "ALL"

    iput-object v5, p0, Lcom/android/stocksettings/AgpsSettings;->mNetworkType:Ljava/lang/String;

    goto :goto_0

    .line 418
    .end local v3           #types:[Ljava/lang/String;
    :cond_4
    const-string v5, "agps_reset_type"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_7

    .line 420
    invoke-virtual {p0}, Lcom/android/stocksettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070017

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 422
    .restart local v3       #types:[Ljava/lang/String;
    if-nez v2, :cond_5

    .line 423
    const-string v5, "HOT"

    iput-object v5, p0, Lcom/android/stocksettings/AgpsSettings;->mResetType:Ljava/lang/String;

    goto :goto_1

    .line 424
    :cond_5
    if-ne v2, v7, :cond_6

    .line 425
    const-string v5, "WARM"

    iput-object v5, p0, Lcom/android/stocksettings/AgpsSettings;->mResetType:Ljava/lang/String;

    goto :goto_1

    .line 427
    :cond_6
    const-string v5, "COLD"

    iput-object v5, p0, Lcom/android/stocksettings/AgpsSettings;->mResetType:Ljava/lang/String;

    goto :goto_1

    .line 430
    .end local v3           #types:[Ljava/lang/String;
    :cond_7
    const-string v5, "agps_pref"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 432
    invoke-virtual {p0}, Lcom/android/stocksettings/AgpsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 434
    .restart local v3       #types:[Ljava/lang/String;
    if-nez v2, :cond_8

    .line 435
    const-string v5, "MSB"

    iput-object v5, p0, Lcom/android/stocksettings/AgpsSettings;->mAssistedType:Ljava/lang/String;

    goto :goto_1

    .line 436
    :cond_8
    if-ne v2, v7, :cond_1

    .line 437
    const-string v5, "MSA"

    iput-object v5, p0, Lcom/android/stocksettings/AgpsSettings;->mAssistedType:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 122
    invoke-virtual {p0}, Lcom/android/stocksettings/AgpsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 124
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 201
    invoke-virtual {p0, p2}, Lcom/android/stocksettings/AgpsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 202
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 203
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/stocksettings/AgpsSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 205
    :cond_0
    return-void
.end method
