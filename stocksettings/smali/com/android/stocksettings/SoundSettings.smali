.class public Lcom/android/stocksettings/SoundSettings;
.super Lcom/android/stocksettings/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final NEED_VOICE_CAPABILITY:[Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

.field private mDockAudioSettings:Landroid/preference/Preference;

.field private mDockIntent:Landroid/content/Intent;

.field private mDockSounds:Landroid/preference/CheckBoxPreference;

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mMultiSimRingtonePreference:Landroid/preference/Preference;

.field private mMusicFx:Landroid/preference/Preference;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mSoundSettings:Landroid/preference/PreferenceGroup;

.field private mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "category_calls_and_notification"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "emergency_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "vibrate_when_ringing"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/stocksettings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;-><init>()V

    .line 112
    new-instance v0, Lcom/android/stocksettings/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/SoundSettings$1;-><init>(Lcom/android/stocksettings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/stocksettings/SoundSettings;->mHandler:Landroid/os/Handler;

    .line 125
    new-instance v0, Lcom/android/stocksettings/SoundSettings$2;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/SoundSettings$2;-><init>(Lcom/android/stocksettings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/stocksettings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/stocksettings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/stocksettings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/stocksettings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/stocksettings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/stocksettings/SoundSettings;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/stocksettings/SoundSettings;->handleDockChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/stocksettings/SoundSettings;ILandroid/preference/Preference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/stocksettings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method private createUndockedMessage()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 516
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 517
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b02df

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 518
    const v1, 0x7f0b02e0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 519
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 520
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private handleDockChange(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 464
    iget-object v3, p0, Lcom/android/stocksettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 465
    const-string v3, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 467
    .local v0, dockState:I
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_1

    move v1, v4

    .line 470
    .local v1, isBluetooth:Z
    :goto_0
    iput-object p1, p0, Lcom/android/stocksettings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    .line 472
    if-eqz v0, :cond_6

    .line 475
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/stocksettings/SoundSettings;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :goto_1
    if-eqz v1, :cond_2

    .line 481
    iget-object v3, p0, Lcom/android/stocksettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 505
    .end local v0           #dockState:I
    .end local v1           #isBluetooth:Z
    :cond_0
    :goto_2
    return-void

    .restart local v0       #dockState:I
    :cond_1
    move v1, v5

    .line 467
    goto :goto_0

    .line 483
    .restart local v1       #isBluetooth:Z
    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    .line 484
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 485
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/stocksettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 486
    const-string v3, "dock_audio_media_enabled"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 488
    const-string v3, "dock_audio_media_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 491
    :cond_3
    const-string v3, "dock_audio_media_enabled"

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/stocksettings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    .line 493
    iget-object v3, p0, Lcom/android/stocksettings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 494
    iget-object v3, p0, Lcom/android/stocksettings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    const-string v6, "dock_audio_media_enabled"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    :goto_3
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_3

    .line 498
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_5
    iget-object v3, p0, Lcom/android/stocksettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 502
    :cond_6
    iget-object v3, p0, Lcom/android/stocksettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 476
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private initDockSettings()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 446
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 448
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-direct {p0}, Lcom/android/stocksettings/SoundSettings;->needsDockSettings()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    const-string v1, "dock_sounds"

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/stocksettings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    .line 450
    iget-object v1, p0, Lcom/android/stocksettings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 451
    iget-object v4, p0, Lcom/android/stocksettings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    const-string v1, "dock_sounds_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 453
    const-string v1, "dock_audio"

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stocksettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    .line 454
    iget-object v1, p0, Lcom/android/stocksettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 461
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 451
    goto :goto_0

    .line 456
    :cond_1
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "dock_category"

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 457
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "dock_audio"

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 458
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "dock_sounds"

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 459
    const-string v1, "dock_audio_media_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private lookupRingtoneNames()V
    .locals 2

    .prologue
    .line 346
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/stocksettings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 347
    return-void
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private resetRingtoneToDefault(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 14
    .parameter "context"

    .prologue
    .line 302
    const/4 v13, 0x0

    .line 303
    .local v13, summary:Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .line 305
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 308
    .local v9, defaultRingtoneFilename:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "title"

    aput-object v5, v3, v4

    const-string v4, "_display_name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v9, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 322
    if-eqz v8, :cond_1

    .line 323
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 325
    .local v12, rowId:I
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 326
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, v12

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 328
    .local v10, defaultRingtoneUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 333
    .end local v10           #defaultRingtoneUri:Landroid/net/Uri;
    .end local v12           #rowId:I
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :cond_1
    if-eqz v8, :cond_2

    .line 339
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 342
    .end local v9           #defaultRingtoneFilename:Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v13

    .line 335
    :catch_0
    move-exception v11

    .line 336
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    if-eqz v8, :cond_2

    .line 339
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 338
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 339
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 12
    .parameter "type"
    .parameter "preference"
    .parameter "msg"

    .prologue
    const v11, 0x104044d

    .line 267
    if-nez p2, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 269
    .local v6, context:Landroid/content/Context;
    if-eqz v6, :cond_0

    .line 270
    invoke-static {v6, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 271
    .local v1, ringtoneUri:Landroid/net/Uri;
    invoke-virtual {v6, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 273
    .local v10, summary:Ljava/lang/CharSequence;
    if-nez v1, :cond_3

    .line 274
    const v0, 0x104044b

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 298
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/stocksettings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/stocksettings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 278
    :cond_3
    :try_start_0
    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 280
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 281
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 282
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 284
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_5
    :goto_2
    invoke-virtual {v6, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 291
    .local v9, ringtoneUnknown:Ljava/lang/CharSequence;
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    invoke-direct {p0, v6}, Lcom/android/stocksettings/SoundSettings;->resetRingtoneToDefault(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 293
    .local v8, defaultRingtone:Ljava/lang/CharSequence;
    if-eqz v8, :cond_2

    .line 294
    move-object v10, v8

    goto :goto_1

    .line 286
    .end local v8           #defaultRingtone:Ljava/lang/CharSequence;
    .end local v9           #ringtoneUnknown:Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 438
    const v0, 0x7f0b0778

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 138
    invoke-super/range {p0 .. p1}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 140
    .local v9, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 142
    .local v0, activePhoneType:I
    const-string v12, "audio"

    invoke-virtual {p0, v12}, Lcom/android/stocksettings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioManager;

    iput-object v12, p0, Lcom/android/stocksettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 144
    const v12, 0x7f050035

    invoke-virtual {p0, v12}, Lcom/android/stocksettings/SoundSettings;->addPreferencesFromResource(I)V

    .line 146
    const/4 v12, 0x2

    if-eq v12, v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    const-string v13, "emergency_tone"

    invoke-virtual {p0, v13}, Lcom/android/stocksettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090001

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 152
    const-string v12, "ring_volume"

    invoke-virtual {p0, v12}, Lcom/android/stocksettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1110051

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    const-string v13, "ring_volume"

    invoke-virtual {p0, v13}, Lcom/android/stocksettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 160
    :cond_2
    const-string v12, "vibrate_when_ringing"

    invoke-virtual {p0, v12}, Lcom/android/stocksettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/stocksettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    .line 161
    iget-object v12, p0, Lcom/android/stocksettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 162
    iget-object v13, p0, Lcom/android/stocksettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    const-string v12, "vibrate_when_ringing"

    const/4 v14, 0x0

    invoke-static {v9, v12, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    :goto_0
    invoke-virtual {v13, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 165
    const-string v12, "dtmf_tone"

    invoke-virtual {p0, v12}, Lcom/android/stocksettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/stocksettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 166
    iget-object v12, p0, Lcom/android/stocksettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 167
    iget-object v13, p0, Lcom/android/stocksettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const-string v12, "dtmf_tone"

    const/4 v14, 0x1

    invoke-static {v9, v12, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_9

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v13, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 169
    const-string v12, "sound_effects"

    invoke-virtual {p0, v12}, Lcom/android/stocksettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/stocksettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 170
    iget-object v12, p0, Lcom/android/stocksettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 171
    iget-object v13, p0, Lcom/android/stocksettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const-string v12, "sound_effects_enabled"

    const/4 v14, 0x1

    invoke-static {v9, v12, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v13, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 173
    const-string v12, "haptic_feedback"

    invoke-virtual {p0, v12}, Lcom/android/stocksettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/stocksettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 174
    iget-object v12, p0, Lcom/android/stocksettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 175
    iget-object v13, p0, Lcom/android/stocksettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const-string v12, "haptic_feedback_enabled"

    const/4 v14, 0x1

    invoke-static {v9, v12, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_b

    const/4 v12, 0x1

    :goto_3
    invoke-virtual {v13, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 177
    const-string v12, "lock_sounds"

    invoke-virtual {p0, v12}, Lcom/android/stocksettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/stocksettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 178
    iget-object v12, p0, Lcom/android/stocksettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 179
    iget-object v13, p0, Lcom/android/stocksettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const-string v12, "lockscreen_sounds_enabled"

    const/4 v14, 0x1

    invoke-static {v9, v12, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_c

    const/4 v12, 0x1

    :goto_4
    invoke-virtual {v13, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 182
    const-string v12, "ringtone"

    invoke-virtual {p0, v12}, Lcom/android/stocksettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/stocksettings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 183
    const-string v12, "multisim_ringtone"

    invoke-virtual {p0, v12}, Lcom/android/stocksettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/stocksettings/SoundSettings;->mMultiSimRingtonePreference:Landroid/preference/Preference;

    .line 184
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 186
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/stocksettings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/stocksettings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 193
    :goto_5
    const-string v12, "notification_sound"

    invoke-virtual {p0, v12}, Lcom/android/stocksettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/stocksettings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    .line 195
    const-string v12, "vibrator"

    invoke-virtual {p0, v12}, Lcom/android/stocksettings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Vibrator;

    .line 196
    .local v11, vibrator:Landroid/os/Vibrator;
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v12

    if-nez v12, :cond_4

    .line 197
    :cond_3
    const-string v12, "vibrate_when_ringing"

    invoke-virtual {p0, v12}, Lcom/android/stocksettings/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 198
    const-string v12, "haptic_feedback"

    invoke-virtual {p0, v12}, Lcom/android/stocksettings/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 201
    :cond_4
    const/4 v12, 0x2

    if-ne v12, v0, :cond_5

    .line 202
    const-string v12, "emergency_tone"

    invoke-virtual {p0, v12}, Lcom/android/stocksettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 204
    .local v2, emergencyTonePreference:Landroid/preference/ListPreference;
    const-string v12, "emergency_tone"

    const/4 v13, 0x0

    invoke-static {v9, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 209
    .end local v2           #emergencyTonePreference:Landroid/preference/ListPreference;
    :cond_5
    const-string v12, "sound_settings"

    invoke-virtual {p0, v12}, Lcom/android/stocksettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceGroup;

    iput-object v12, p0, Lcom/android/stocksettings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    .line 211
    iget-object v12, p0, Lcom/android/stocksettings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    const-string v13, "musicfx"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/stocksettings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    .line 212
    new-instance v3, Landroid/content/Intent;

    const-string v12, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v3, i:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 214
    .local v6, p:Landroid/content/pm/PackageManager;
    const/16 v12, 0x200

    invoke-virtual {v6, v3, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 215
    .local v10, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x2

    if-gt v12, v13, :cond_6

    .line 221
    iget-object v12, p0, Lcom/android/stocksettings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    iget-object v13, p0, Lcom/android/stocksettings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 224
    :cond_6
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/stocksettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 225
    sget-object v1, Lcom/android/stocksettings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_6
    if-ge v4, v5, :cond_e

    aget-object v8, v1, v4

    .line 226
    .local v8, prefKey:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/stocksettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 227
    .local v7, pref:Landroid/preference/Preference;
    if-eqz v7, :cond_7

    .line 228
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 225
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 162
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i:Landroid/content/Intent;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #p:Landroid/content/pm/PackageManager;
    .end local v7           #pref:Landroid/preference/Preference;
    .end local v8           #prefKey:Ljava/lang/String;
    .end local v10           #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11           #vibrator:Landroid/os/Vibrator;
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 167
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 171
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 175
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 179
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 190
    :cond_d
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/stocksettings/SoundSettings;->mMultiSimRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 191
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/stocksettings/SoundSettings;->mMultiSimRingtonePreference:Landroid/preference/Preference;

    goto/16 :goto_5

    .line 233
    .restart local v3       #i:Landroid/content/Intent;
    .restart local v6       #p:Landroid/content/pm/PackageManager;
    .restart local v10       #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11       #vibrator:Landroid/os/Vibrator;
    :cond_e
    new-instance v12, Lcom/android/stocksettings/SoundSettings$3;

    invoke-direct {v12, p0}, Lcom/android/stocksettings/SoundSettings$3;-><init>(Lcom/android/stocksettings/SoundSettings;)V

    iput-object v12, p0, Lcom/android/stocksettings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 246
    invoke-direct {p0}, Lcom/android/stocksettings/SoundSettings;->initDockSettings()V

    .line 247
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 509
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 510
    invoke-direct {p0}, Lcom/android/stocksettings/SoundSettings;->createUndockedMessage()Landroid/app/Dialog;

    move-result-object v0

    .line 512
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 261
    invoke-super {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onPause()V

    .line 263
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 264
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 422
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, key:Ljava/lang/String;
    const-string v3, "emergency_tone"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 425
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 426
    .local v2, value:I
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emergency_tone"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    .end local v2           #value:I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "SoundSettings"

    const-string v4, "could not persist emergency tone setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 351
    iget-object v0, p0, Lcom/android/stocksettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 352
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vibrate_when_ringing"

    iget-object v0, p0, Lcom/android/stocksettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    move v2, v1

    .line 418
    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 352
    goto :goto_0

    .line 354
    :cond_3
    iget-object v0, p0, Lcom/android/stocksettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    .line 355
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dtmf_tone"

    iget-object v4, p0, Lcom/android/stocksettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v1

    :cond_4
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 358
    :cond_5
    iget-object v0, p0, Lcom/android/stocksettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_8

    .line 359
    iget-object v0, p0, Lcom/android/stocksettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 360
    iget-object v0, p0, Lcom/android/stocksettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 364
    :goto_2
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "sound_effects_enabled"

    iget-object v4, p0, Lcom/android/stocksettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    move v2, v1

    :cond_6
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 362
    :cond_7
    iget-object v0, p0, Lcom/android/stocksettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_2

    .line 367
    :cond_8
    iget-object v0, p0, Lcom/android/stocksettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_a

    .line 368
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "haptic_feedback_enabled"

    iget-object v4, p0, Lcom/android/stocksettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    move v2, v1

    :cond_9
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 371
    :cond_a
    iget-object v0, p0, Lcom/android/stocksettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_c

    .line 372
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lockscreen_sounds_enabled"

    iget-object v4, p0, Lcom/android/stocksettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    move v2, v1

    :cond_b
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 375
    :cond_c
    iget-object v0, p0, Lcom/android/stocksettings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    if-eq p2, v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/android/stocksettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    if-ne p2, v0, :cond_12

    .line 379
    iget-object v0, p0, Lcom/android/stocksettings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/stocksettings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 383
    :goto_3
    if-nez v0, :cond_e

    .line 384
    invoke-virtual {p0, v1}, Lcom/android/stocksettings/SoundSettings;->showDialog(I)V

    goto/16 :goto_1

    :cond_d
    move v0, v2

    .line 379
    goto :goto_3

    .line 386
    :cond_e
    iget-object v0, p0, Lcom/android/stocksettings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_f

    move v0, v1

    .line 389
    :goto_4
    if-eqz v0, :cond_10

    .line 390
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/stocksettings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 391
    const-string v2, "com.android.stocksettings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/stocksettings/bluetooth/DockEventReceiver;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 393
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_f
    move v0, v2

    .line 386
    goto :goto_4

    .line 395
    :cond_10
    iget-object v0, p0, Lcom/android/stocksettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 396
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 397
    const-string v4, "checked"

    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dock_audio_media_enabled"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_11

    move v2, v1

    :cond_11
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 400
    invoke-super {p0, v0, v0}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 403
    :cond_12
    iget-object v0, p0, Lcom/android/stocksettings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_14

    .line 404
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dock_sounds_enabled"

    iget-object v4, p0, Lcom/android/stocksettings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_13

    move v2, v1

    :cond_13
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 406
    :cond_14
    iget-object v0, p0, Lcom/android/stocksettings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_16

    .line 407
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dock_audio_media_enabled"

    iget-object v4, p0, Lcom/android/stocksettings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_15

    move v2, v1

    :cond_15
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 409
    :cond_16
    iget-object v0, p0, Lcom/android/stocksettings/SoundSettings;->mMultiSimRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stocksettings/SoundSettings;->mMultiSimRingtonePreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/stocksettings/SoundSettings;->mMultiSimRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 412
    const-string v2, "PACKAGE"

    const-string v3, "com.android.stocksettings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    const-string v2, "TARGET_CLASS"

    const-string v3, "com.android.stocksettings.multisimsettings.MultiSimSoundSettings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    invoke-virtual {p0, v0}, Lcom/android/stocksettings/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 251
    invoke-super {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onResume()V

    .line 253
    invoke-direct {p0}, Lcom/android/stocksettings/SoundSettings;->lookupRingtoneNames()V

    .line 255
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/stocksettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 257
    return-void
.end method
