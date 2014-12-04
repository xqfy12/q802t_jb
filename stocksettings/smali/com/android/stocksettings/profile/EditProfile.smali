.class public Lcom/android/stocksettings/profile/EditProfile;
.super Landroid/preference/PreferenceActivity;
.source "EditProfile.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stocksettings/profile/EditProfile$VolumeReceiver;
    }
.end annotation


# static fields
.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private final MENU_CANCEL:I

.field private final MENU_DELETE:I

.field private final MENU_SAVE:I

.field private final MENU_SELECT:I

.field private final PROFILE_DEFAULT:I

.field private final PROFILE_MODE_EDIT:I

.field private final PROFILE_MODE_NEW:I

.field private final PROFILE_MODE_READ:I

.field private final PROFILE_OUTDOOR:I

.field private final PROFILE_SLIENT:I

.field private final PROFILE_USER:I

.field private final PROFILE_VIBRATE:I

.field private currentProfileKey:Ljava/lang/String;

.field private mAlarmVolume:I

.field private mAlertStyle:Landroid/preference/ListPreference;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCursor:Landroid/database/Cursor;

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field mEditCurrentProfile:Z

.field private mHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mMediaVolume:I

.field private mMode:I

.field private mNotificationRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

.field private mNotificationVolume:I

.field private mProfileMode:I

.field private mProfileName:Landroid/preference/EditTextPreference;

.field private mReceiver:Lcom/android/stocksettings/profile/EditProfile$VolumeReceiver;

.field private mRingAsNotification:Z

.field private mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

.field private mRingerVolume:I

.field private mRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mUri:Landroid/net/Uri;

.field private mVolumeReceiver:Z

.field private vibrateFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "profilename"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "alertstyle"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ringervolume"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mediavolume"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "alarmvolume"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "notificationvolume"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ringasnotification"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "notification"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "dtmftone"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "soundeffect"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "hapticfeedback"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "locksounds"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "profilemode"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "buttonmutekey"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "slientpoweronoff"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/stocksettings/profile/EditProfile;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 54
    iput v1, p0, Lcom/android/stocksettings/profile/EditProfile;->PROFILE_MODE_READ:I

    .line 55
    iput v3, p0, Lcom/android/stocksettings/profile/EditProfile;->PROFILE_MODE_EDIT:I

    .line 56
    iput v4, p0, Lcom/android/stocksettings/profile/EditProfile;->PROFILE_MODE_NEW:I

    .line 58
    iput v1, p0, Lcom/android/stocksettings/profile/EditProfile;->PROFILE_DEFAULT:I

    .line 59
    iput v3, p0, Lcom/android/stocksettings/profile/EditProfile;->PROFILE_SLIENT:I

    .line 60
    iput v4, p0, Lcom/android/stocksettings/profile/EditProfile;->PROFILE_VIBRATE:I

    .line 61
    iput v5, p0, Lcom/android/stocksettings/profile/EditProfile;->PROFILE_OUTDOOR:I

    .line 62
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/stocksettings/profile/EditProfile;->PROFILE_USER:I

    .line 64
    iput v1, p0, Lcom/android/stocksettings/profile/EditProfile;->MENU_SAVE:I

    .line 65
    iput v3, p0, Lcom/android/stocksettings/profile/EditProfile;->MENU_CANCEL:I

    .line 66
    iput v4, p0, Lcom/android/stocksettings/profile/EditProfile;->MENU_SELECT:I

    .line 67
    iput v5, p0, Lcom/android/stocksettings/profile/EditProfile;->MENU_DELETE:I

    .line 77
    iput v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mMode:I

    .line 83
    iput-boolean v1, p0, Lcom/android/stocksettings/profile/EditProfile;->mEditCurrentProfile:Z

    .line 84
    iput-boolean v1, p0, Lcom/android/stocksettings/profile/EditProfile;->vibrateFlag:Z

    .line 106
    iput v2, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingerVolume:I

    .line 107
    iput v2, p0, Lcom/android/stocksettings/profile/EditProfile;->mMediaVolume:I

    .line 108
    iput v2, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlarmVolume:I

    .line 109
    iput v2, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationVolume:I

    .line 110
    iput-boolean v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingAsNotification:Z

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->currentProfileKey:Ljava/lang/String;

    .line 118
    iput-boolean v1, p0, Lcom/android/stocksettings/profile/EditProfile;->mVolumeReceiver:Z

    .line 810
    return-void
.end method

.method static synthetic access$100(Lcom/android/stocksettings/profile/EditProfile;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method private static isValidRingtoneUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 848
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 868
    :cond_0
    :goto_0
    return v0

    .line 855
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 856
    if-eqz v1, :cond_0

    .line 858
    const/4 v0, 0x1

    goto :goto_0

    .line 863
    :catch_0
    move-exception v1

    goto :goto_0

    .line 860
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 672
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->finish()V

    .line 677
    :goto_0
    return-void

    .line 675
    :cond_1
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->save()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "icicle"

    .prologue
    .line 122
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const v11, 0x7f050017

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/profile/EditProfile;->addPreferencesFromResource(I)V

    .line 126
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 127
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, action:Ljava/lang/String;
    new-instance v11, Lcom/android/stocksettings/profile/EditProfile$VolumeReceiver;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/android/stocksettings/profile/EditProfile$VolumeReceiver;-><init>(Lcom/android/stocksettings/profile/EditProfile;Lcom/android/stocksettings/profile/EditProfile$1;)V

    iput-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mReceiver:Lcom/android/stocksettings/profile/EditProfile$VolumeReceiver;

    .line 130
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v11, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v3, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mReceiver:Lcom/android/stocksettings/profile/EditProfile$VolumeReceiver;

    invoke-virtual {p0, v11, v3}, Lcom/android/stocksettings/profile/EditProfile;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    const-string v11, "com.android.stocksettings.profile.EditProfile.ACTION.edit"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 135
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    iput-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mUri:Landroid/net/Uri;

    .line 136
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->currentProfileKey:Ljava/lang/String;

    .line 137
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mUri:Landroid/net/Uri;

    if-eqz v11, :cond_0

    .line 138
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mUri:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->currentProfileKey:Ljava/lang/String;

    .line 141
    :cond_0
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->currentProfileKey:Ljava/lang/String;

    if-eqz v11, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "current_profile"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, currentProfile:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->currentProfileKey:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mEditCurrentProfile:Z

    .line 146
    .end local v1           #currentProfile:Ljava/lang/String;
    :cond_1
    const-string v11, "EditProfile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Profile onCreate() mEditCurrentProfile = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/stocksettings/profile/EditProfile;->mEditCurrentProfile:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mMode:I

    .line 149
    const-string v11, "EditProfile"

    const-string v12, "Profile onCreate() EditProfile.ACTION.edit"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_2
    :goto_0
    const-string v11, "ring_volume"

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/profile/EditProfile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    iput-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    .line 163
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    invoke-virtual {v11, p0}, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 164
    const-string v11, "profile_name"

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/profile/EditProfile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/EditTextPreference;

    iput-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileName:Landroid/preference/EditTextPreference;

    .line 165
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileName:Landroid/preference/EditTextPreference;

    invoke-virtual {v11, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 166
    const-string v11, "alert_style"

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/profile/EditProfile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    iput-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlertStyle:Landroid/preference/ListPreference;

    .line 167
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlertStyle:Landroid/preference/ListPreference;

    invoke-virtual {v11, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 169
    const-string v11, "dtmf_tone"

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/profile/EditProfile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 170
    const-string v11, "sound_effects"

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/profile/EditProfile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 171
    const-string v11, "haptic_feedback"

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/profile/EditProfile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 172
    const-string v11, "lock_sounds"

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/profile/EditProfile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 174
    const-string v11, "ringtone"

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/profile/EditProfile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    iput-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    .line 175
    const-string v11, "notification_ringtone"

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/profile/EditProfile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    iput-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    .line 177
    const-string v11, "audio"

    invoke-virtual {p0, v11}, Lcom/android/stocksettings/profile/EditProfile;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioManager;

    iput-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mAudioManager:Landroid/media/AudioManager;

    .line 179
    iget v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mMode:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_7

    .line 180
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0852

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlertStyle:Landroid/preference/ListPreference;

    const-string v12, "0"

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 182
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlertStyle:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlertStyle:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 184
    const/4 v11, 0x4

    iput v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingerVolume:I

    .line 185
    const/16 v11, 0x8

    iput v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mMediaVolume:I

    .line 186
    const/4 v11, 0x4

    iput v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlarmVolume:I

    .line 187
    const/4 v11, 0x4

    iput v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationVolume:I

    .line 188
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingAsNotification:Z

    .line 190
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    sget-object v11, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->DEFAULT_VOLUME:[I

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationVolume:I

    aput v13, v11, v12

    .line 191
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    sget-object v11, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->DEFAULT_VOLUME:[I

    const/4 v12, 0x1

    iget v13, p0, Lcom/android/stocksettings/profile/EditProfile;->mMediaVolume:I

    aput v13, v11, v12

    .line 192
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    sget-object v11, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->DEFAULT_VOLUME:[I

    const/4 v12, 0x2

    iget v13, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlarmVolume:I

    aput v13, v11, v12

    .line 193
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    iget v12, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingerVolume:I

    iput v12, v11, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->mRingerVolume:I

    .line 194
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    iget-boolean v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingAsNotification:Z

    sput-boolean v11, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->ringAsNotification:Z

    .line 195
    iget-boolean v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingAsNotification:Z

    if-eqz v11, :cond_3

    .line 196
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    sget-object v11, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->DEFAULT_VOLUME:[I

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingerVolume:I

    aput v13, v11, v12

    .line 199
    :cond_3
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 200
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 201
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 202
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 204
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    if-eqz v11, :cond_4

    .line 205
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    const/4 v12, 0x1

    invoke-static {p0, v12}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->SetProfileRingtoneUri(Landroid/net/Uri;)V

    .line 207
    :cond_4
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    if-eqz v11, :cond_5

    .line 208
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    const/4 v12, 0x2

    invoke-static {p0, v12}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->SetProfileRingtoneUri(Landroid/net/Uri;)V

    .line 386
    :cond_5
    :goto_1
    return-void

    .line 150
    :cond_6
    const-string v11, "com.android.stocksettings.profile.EditProfile.ACTION.insert"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 151
    const-string v11, "EditProfile"

    const-string v12, "Profile onCreate() EditProfile.ACTION.insert"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v11, 0x2

    iput v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mMode:I

    goto/16 :goto_0

    .line 210
    :cond_7
    iget v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 212
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mUri:Landroid/net/Uri;

    sget-object v12, Lcom/android/stocksettings/profile/EditProfile;->sProjection:[Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {p0, v11, v12, v13, v14}, Lcom/android/stocksettings/profile/EditProfile;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    iput-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    .line 213
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 215
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    iget-object v12, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    const-string v13, "profilemode"

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 216
    .local v8, profileMode:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileMode:I

    .line 218
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileName:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    iget-object v13, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    const-string v14, "profilename"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 219
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileName:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    iget-object v13, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    const-string v14, "profilename"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlertStyle:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    iget-object v13, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    const-string v14, "alertstyle"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 221
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlertStyle:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlertStyle:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 222
    iget-boolean v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mEditCurrentProfile:Z

    if-eqz v11, :cond_b

    .line 223
    const-string v11, "EditProfile"

    const-string v12, "Profile onCreate() sync current profile\'s provider data"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mUri:Landroid/net/Uri;

    invoke-static {p0, v11}, Lcom/android/stocksettings/profile/ProfileSettings;->syncCurrentProfile(Landroid/content/Context;Landroid/net/Uri;)V

    .line 229
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mAudioManager:Landroid/media/AudioManager;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v11

    iput v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingerVolume:I

    .line 230
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mAudioManager:Landroid/media/AudioManager;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v11

    iput v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mMediaVolume:I

    .line 231
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mAudioManager:Landroid/media/AudioManager;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v11

    iput v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlarmVolume:I

    .line 232
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    if-eqz v11, :cond_8

    .line 233
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    const/4 v12, 0x1

    invoke-static {p0, v12}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->SetProfileRingtoneUri(Landroid/net/Uri;)V

    .line 234
    const-string v11, "EditProfile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RingtoneManager.getActualDefaultRingtoneUri"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {p0, v13}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_8
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    if-eqz v11, :cond_9

    .line 237
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    const/4 v12, 0x2

    invoke-static {p0, v12}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->SetProfileRingtoneUri(Landroid/net/Uri;)V

    .line 266
    :cond_9
    :goto_2
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    iget-object v12, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    const-string v13, "notificationvolume"

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationVolume:I

    .line 267
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    iget-object v12, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    const-string v13, "ringasnotification"

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingAsNotification:Z

    .line 269
    const-string v11, "EditProfile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Profile onCreate() mMode == PROFILE_MODE_EDIT ringerVolume =="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingerVolume:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v11, "EditProfile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Profile onCreate() mMode == PROFILE_MODE_EDIT mediaVolume =="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/stocksettings/profile/EditProfile;->mMediaVolume:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v11, "EditProfile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Profile onCreate() mMode == PROFILE_MODE_EDIT alarmVolume =="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlarmVolume:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v11, "EditProfile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Profile onCreate() mMode == PROFILE_MODE_EDIT notificationVolume =="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationVolume:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v11, "EditProfile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Profile onCreate() mMode == PROFILE_MODE_EDIT ringAsNotification =="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingAsNotification:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    sget-object v11, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->DEFAULT_VOLUME:[I

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationVolume:I

    aput v13, v11, v12

    .line 276
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    sget-object v11, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->DEFAULT_VOLUME:[I

    const/4 v12, 0x1

    iget v13, p0, Lcom/android/stocksettings/profile/EditProfile;->mMediaVolume:I

    aput v13, v11, v12

    .line 277
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    sget-object v11, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->DEFAULT_VOLUME:[I

    const/4 v12, 0x2

    iget v13, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlarmVolume:I

    aput v13, v11, v12

    .line 278
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    iget v12, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingerVolume:I

    iput v12, v11, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->mRingerVolume:I

    .line 279
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    iget-boolean v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingAsNotification:Z

    sput-boolean v11, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->ringAsNotification:Z

    .line 280
    iget-boolean v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingAsNotification:Z

    if-eqz v11, :cond_a

    .line 281
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    sget-object v11, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->DEFAULT_VOLUME:[I

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingerVolume:I

    aput v13, v11, v12

    .line 295
    :cond_a
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    iget-object v12, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    const-string v13, "dtmftone"

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, dtmfTone:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/stocksettings/profile/EditProfile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const-string v11, "0"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 297
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    iget-object v12, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    const-string v13, "soundeffect"

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 298
    .local v10, soundEffect:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/stocksettings/profile/EditProfile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 299
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    iget-object v12, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    const-string v13, "hapticfeedback"

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 300
    .local v4, hapticFeedback:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/stocksettings/profile/EditProfile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const-string v11, "0"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 301
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    iget-object v12, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    const-string v13, "locksounds"

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 302
    .local v6, lockSounds:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/stocksettings/profile/EditProfile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const-string v11, "0"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    const/4 v11, 0x0

    :goto_6
    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 308
    iget v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileMode:I

    if-nez v11, :cond_16

    .line 309
    const-string v11, "EditProfile"

    const-string v12, "Profile onCreate() PROFILE_MODE_NEW mProfileMode == PROFILE_DEFAULT"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b085e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 311
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b085e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileName:Landroid/preference/EditTextPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 313
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlertStyle:Landroid/preference/ListPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 314
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlertStyle:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b083b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->setEnabled(Z)V

    .line 316
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->setEnabled(Z)V

    .line 317
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->setEnabled(Z)V

    .line 318
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 319
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 320
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 321
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 240
    .end local v2           #dtmfTone:Ljava/lang/String;
    .end local v4           #hapticFeedback:Ljava/lang/String;
    .end local v6           #lockSounds:Ljava/lang/String;
    .end local v10           #soundEffect:Ljava/lang/String;
    :cond_b
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    iget-object v12, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    const-string v13, "ringervolume"

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingerVolume:I

    .line 241
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    iget-object v12, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    const-string v13, "mediavolume"

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mMediaVolume:I

    .line 242
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    iget-object v12, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    const-string v13, "alarmvolume"

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlarmVolume:I

    .line 243
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    if-eqz v11, :cond_d

    .line 244
    const/4 v9, 0x0

    .line 245
    .local v9, ringtone:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    iget-object v12, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    const-string v13, "ringtone"

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 246
    if-eqz v9, :cond_f

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/stocksettings/profile/EditProfile;->isValidRingtoneUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 247
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "ringtone_original"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c

    .line 248
    iget-object v12, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    if-eqz v9, :cond_e

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    :goto_7
    invoke-virtual {v12, v11}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->SetProfileRingtoneUri(Landroid/net/Uri;)V

    .line 249
    :cond_c
    const-string v11, "EditProfile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ringtone:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v9           #ringtone:Ljava/lang/String;
    :cond_d
    :goto_8
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    if-eqz v11, :cond_9

    .line 258
    const/4 v7, 0x0

    .line 259
    .local v7, notificationRingtone:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    iget-object v12, p0, Lcom/android/stocksettings/profile/EditProfile;->mCursor:Landroid/database/Cursor;

    const-string v13, "notification"

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 260
    iget-object v12, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    if-eqz v7, :cond_11

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    :goto_9
    invoke-virtual {v12, v11}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->SetProfileRingtoneUri(Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 248
    .end local v7           #notificationRingtone:Ljava/lang/String;
    .restart local v9       #ringtone:Ljava/lang/String;
    :cond_e
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "ringtone_original"

    invoke-static {v11, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    goto :goto_7

    .line 251
    :cond_f
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "ringtone_original"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_10

    .line 252
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "ringtone_original"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->SetProfileRingtoneUri(Landroid/net/Uri;)V

    .line 253
    :cond_10
    const-string v11, "EditProfile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Settings.System.getString(this.getContentResolver(), ringtone_original):"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "ringtone_original"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 260
    .end local v9           #ringtone:Ljava/lang/String;
    .restart local v7       #notificationRingtone:Ljava/lang/String;
    :cond_11
    const/4 v11, 0x0

    goto :goto_9

    .line 296
    .end local v7           #notificationRingtone:Ljava/lang/String;
    .restart local v2       #dtmfTone:Ljava/lang/String;
    :cond_12
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 298
    .restart local v10       #soundEffect:Ljava/lang/String;
    :cond_13
    const/4 v11, 0x1

    goto/16 :goto_4

    .line 300
    .restart local v4       #hapticFeedback:Ljava/lang/String;
    :cond_14
    const/4 v11, 0x1

    goto/16 :goto_5

    .line 302
    .restart local v6       #lockSounds:Ljava/lang/String;
    :cond_15
    const/4 v11, 0x1

    goto/16 :goto_6

    .line 323
    :cond_16
    iget v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_17

    .line 324
    const-string v11, "EditProfile"

    const-string v12, "Profile onCreate() PROFILE_MODE_NEW mProfileMode == PROFILE_SLIENT"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b085f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 327
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b085f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileName:Landroid/preference/EditTextPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 329
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlertStyle:Landroid/preference/ListPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 330
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlertStyle:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b083c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->setEnabled(Z)V

    .line 332
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->setEnabled(Z)V

    .line 333
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->setEnabled(Z)V

    .line 334
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 335
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 336
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 338
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 340
    :cond_17
    iget v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileMode:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_18

    .line 341
    const-string v11, "EditProfile"

    const-string v12, "Profile onCreate() PROFILE_MODE_NEW mProfileMode == PROFILE_VIBRATE"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0860

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 344
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0860

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileName:Landroid/preference/EditTextPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 346
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlertStyle:Landroid/preference/ListPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 347
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlertStyle:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b083d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->setEnabled(Z)V

    .line 349
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->setEnabled(Z)V

    .line 350
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->setEnabled(Z)V

    .line 351
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 352
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 353
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 355
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 357
    :cond_18
    iget v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileMode:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_19

    .line 358
    const-string v11, "EditProfile"

    const-string v12, "Profile onCreate() PROFILE_MODE_NEW mProfileMode == PROFILE_OUTDOOR"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b083a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 360
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b083a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileName:Landroid/preference/EditTextPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 362
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlertStyle:Landroid/preference/ListPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 363
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlertStyle:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b083e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->setEnabled(Z)V

    .line 365
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->setEnabled(Z)V

    .line 366
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->setEnabled(Z)V

    .line 367
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 368
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 369
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 370
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 372
    :cond_19
    iget v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileMode:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_5

    .line 373
    const-string v11, "EditProfile"

    const-string v12, "Profile onCreate() PROFILE_MODE_NEW mProfileMode == PROFILE_USER"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileName:Landroid/preference/EditTextPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 375
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlertStyle:Landroid/preference/ListPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 376
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->setEnabled(Z)V

    .line 377
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->setEnabled(Z)V

    .line 378
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->setEnabled(Z)V

    .line 379
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 380
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 381
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 382
    iget-object v11, p0, Lcom/android/stocksettings/profile/EditProfile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const v6, 0x7f0b084e

    const v5, 0x108003c

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 466
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 467
    const-string v0, "EditProfile"

    const-string v1, "Profile onCreateOptionsMenu()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 470
    const v0, 0x7f0b084b

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 472
    const v0, 0x7f0b084c

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 494
    :cond_0
    :goto_0
    return v3

    .line 474
    :cond_1
    iget v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mMode:I

    if-ne v0, v3, :cond_0

    .line 477
    const v0, 0x7f0b084b

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 479
    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->currentProfileKey:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 480
    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->currentProfileKey:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    .line 481
    invoke-interface {p1, v2, v4, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 491
    :goto_1
    const v0, 0x7f0b084c

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 484
    :cond_2
    invoke-interface {p1, v2, v4, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 488
    :cond_3
    invoke-interface {p1, v2, v4, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/16 v11, 0xf

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 499
    iget v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mMode:I

    if-ne v4, v9, :cond_1

    .line 500
    const-string v4, "EditProfile"

    const-string v6, "Profile onOptionsItemSelected() mMode == PROFILE_MODE_NEW"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 666
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    :goto_1
    return v5

    .line 503
    :pswitch_0
    const-string v4, "EditProfile"

    const-string v6, "Profile onOptionsItemSelected() case 0"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 506
    :pswitch_1
    const-string v4, "EditProfile"

    const-string v6, "Profile onCreateOptionsMenu() MENU_CANCEL"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->finish()V

    goto :goto_1

    .line 510
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->save()V

    goto :goto_1

    .line 513
    :cond_1
    iget v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mMode:I

    if-ne v4, v5, :cond_0

    .line 514
    const-string v4, "EditProfile"

    const-string v7, "Profile onOptionsItemSelected() mMode == PROFILE_MODE_EDIT"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 635
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->save()V

    goto :goto_1

    .line 517
    :pswitch_4
    const-string v4, "EditProfile"

    const-string v7, "Profile onOptionsItemSelected() MENU_SELECT"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "current_profile"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 520
    .local v1, currentProfile:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 521
    .local v2, pos:I
    const-string v4, "EditProfile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Profile onOptionsItemSelected() MENU_SELECT-pos="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-string v4, "content://settings/profile"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    int-to-long v7, v2

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 523
    .local v3, uri:Landroid/net/Uri;
    invoke-static {p0, v3}, Lcom/android/stocksettings/profile/ProfileSettings;->syncCurrentProfile(Landroid/content/Context;Landroid/net/Uri;)V

    .line 525
    const-string v4, "EditProfile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Profile onOptionsItemSelected() MENU_SELECT currentProfileKey ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/stocksettings/profile/EditProfile;->currentProfileKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "current_profile"

    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->currentProfileKey:Ljava/lang/String;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->currentProfileKey:Ljava/lang/String;

    :goto_2
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 529
    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlertStyle:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, alertStyle:Ljava/lang/String;
    const-string v4, "EditProfile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Profile onOptionsItemSelected() MENU_SELECT-alertStyle="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 532
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "vibrate_in_silent"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 535
    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v9}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 537
    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v6, v6}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 539
    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5, v6}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 573
    :cond_2
    :goto_3
    iget v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingerVolume:I

    if-ltz v4, :cond_3

    iget v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingerVolume:I

    if-le v4, v11, :cond_4

    .line 574
    :cond_3
    const-string v4, "EditProfile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Profile onOptionsItemSelected() MENU_SELECT mRingerVolume error == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingerVolume:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iput v10, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingerVolume:I

    .line 577
    :cond_4
    iget v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mMediaVolume:I

    if-ltz v4, :cond_5

    iget v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mMediaVolume:I

    if-le v4, v11, :cond_6

    .line 578
    :cond_5
    const-string v4, "EditProfile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Profile onOptionsItemSelected() MENU_SELECT mMediaVolume error == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/stocksettings/profile/EditProfile;->mMediaVolume:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iput v10, p0, Lcom/android/stocksettings/profile/EditProfile;->mMediaVolume:I

    .line 581
    :cond_6
    iget v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlarmVolume:I

    if-ltz v4, :cond_7

    iget v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlarmVolume:I

    if-le v4, v11, :cond_8

    .line 582
    :cond_7
    const-string v4, "EditProfile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Profile onOptionsItemSelected() MENU_SELECT mAlarmVolume error == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlarmVolume:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iput v10, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlarmVolume:I

    .line 585
    :cond_8
    iget v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationVolume:I

    if-ltz v4, :cond_9

    iget v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationVolume:I

    if-le v4, v11, :cond_a

    .line 586
    :cond_9
    const-string v4, "EditProfile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Profile onOptionsItemSelected() MENU_SELECT mRingerVolume error == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationVolume:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iput v10, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationVolume:I

    .line 590
    :cond_a
    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v9, :cond_11

    .line 591
    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAudioManager:Landroid/media/AudioManager;

    iget v7, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingerVolume:I

    invoke-virtual {v4, v9, v7, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 592
    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x3

    iget v8, p0, Lcom/android/stocksettings/profile/EditProfile;->mMediaVolume:I

    invoke-virtual {v4, v7, v8, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 593
    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAudioManager:Landroid/media/AudioManager;

    iget v7, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlarmVolume:I

    invoke-virtual {v4, v10, v7, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 594
    iget-boolean v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingAsNotification:Z

    if-eqz v4, :cond_10

    .line 595
    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x5

    iget v8, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingerVolume:I

    invoke-virtual {v4, v7, v8, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 605
    :goto_4
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "notifications_use_ring_volume"

    iget-boolean v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingAsNotification:Z

    if-eqz v4, :cond_12

    move v4, v5

    :goto_5
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 608
    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    invoke-virtual {v4}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->GetProfileRingtoneUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0, v5, v4}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 609
    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    invoke-virtual {v4}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->GetProfileRingtoneUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0, v9, v4}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 611
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dtmf_tone"

    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_13

    move v4, v5

    :goto_6
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 614
    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 615
    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 619
    :goto_7
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "sound_effects_enabled"

    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_15

    move v4, v5

    :goto_8
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 622
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "haptic_feedback_enabled"

    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_16

    move v4, v5

    :goto_9
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 625
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "lockscreen_sounds_enabled"

    iget-object v8, p0, Lcom/android/stocksettings/profile/EditProfile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_b

    move v6, v5

    :cond_b
    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 632
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->finish()V

    goto/16 :goto_1

    .line 526
    .end local v0           #alertStyle:Ljava/lang/String;
    :cond_c
    const-string v4, "1"

    goto/16 :goto_2

    .line 541
    .restart local v0       #alertStyle:Ljava/lang/String;
    :cond_d
    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 542
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "vibrate_in_silent"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 545
    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 547
    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v6, v5}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 549
    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5, v5}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto/16 :goto_3

    .line 551
    :cond_e
    const-string v4, "2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 552
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "vibrate_in_silent"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 555
    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v9}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 557
    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v6, v5}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 559
    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5, v5}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto/16 :goto_3

    .line 561
    :cond_f
    const-string v4, "3"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 562
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "vibrate_in_silent"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 565
    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 567
    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v6, v6}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 569
    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5, v6}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto/16 :goto_3

    .line 597
    :cond_10
    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x5

    iget v8, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationVolume:I

    invoke-virtual {v4, v7, v8, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_4

    .line 600
    :cond_11
    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x3

    invoke-virtual {v4, v7, v6, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 601
    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v10, v6, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 602
    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x5

    invoke-virtual {v4, v7, v6, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_4

    :cond_12
    move v4, v6

    .line 605
    goto/16 :goto_5

    :cond_13
    move v4, v6

    .line 611
    goto/16 :goto_6

    .line 617
    :cond_14
    iget-object v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto/16 :goto_7

    :cond_15
    move v4, v6

    .line 619
    goto/16 :goto_8

    :cond_16
    move v4, v6

    .line 622
    goto/16 :goto_9

    .line 638
    .end local v0           #alertStyle:Ljava/lang/String;
    .end local v1           #currentProfile:Ljava/lang/String;
    .end local v2           #pos:I
    .end local v3           #uri:Landroid/net/Uri;
    :pswitch_5
    const-string v4, "EditProfile"

    const-string v7, "Profile onCreateOptionsMenu() MENU_DELETE"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-boolean v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mEditCurrentProfile:Z

    if-eqz v4, :cond_17

    .line 641
    const-string v4, "EditProfile"

    const-string v7, "Profile onCreateOptionsMenu() mEditCurrentProfile == true, switch to default profile"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    sput-boolean v5, Lcom/android/stocksettings/profile/ProfileSettings;->ProfileChange:Z

    .line 643
    const-string v4, "1"

    invoke-static {p0, v4, v5, v6}, Lcom/android/stocksettings/profile/ProfileSettings;->switchProfile(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 647
    :cond_17
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0b0855

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x1080027

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x7f0b0856

    invoke-virtual {p0, v6}, Lcom/android/stocksettings/profile/EditProfile;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x104000a

    new-instance v7, Lcom/android/stocksettings/profile/EditProfile$1;

    invoke-direct {v7, p0}, Lcom/android/stocksettings/profile/EditProfile$1;-><init>(Lcom/android/stocksettings/profile/EditProfile;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v6, 0x104

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 661
    :pswitch_6
    const-string v4, "EditProfile"

    const-string v6, "Profile onCreateOptionsMenu() MENU_CANCEL"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->finish()V

    goto/16 :goto_1

    .line 501
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 515
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 402
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    if-ne p1, v3, :cond_2

    .line 411
    const-string v3, "EditProfile"

    const-string v4, "Profile onPreferenceChange() preference == mRingVolume"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const-string v3, "EditProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile onPreferenceChange() RingerVolume == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    iget v5, v5, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->mLastRingerVolume:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    iget v3, v3, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->mLastRingerVolume:I

    iput v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingerVolume:I

    .line 415
    iget-object v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    iget-object v3, v3, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    aget-object v3, v3, v7

    iget v3, v3, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastVolume:I

    iput v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationVolume:I

    .line 416
    iget-object v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    iget-object v3, v3, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    aget-object v3, v3, v6

    iget v3, v3, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastVolume:I

    iput v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mMediaVolume:I

    .line 417
    iget-object v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    iget-object v3, v3, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    aget-object v3, v3, v8

    iget v3, v3, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastVolume:I

    iput v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlarmVolume:I

    .line 418
    iput-boolean v6, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingAsNotification:Z

    .line 420
    iget-object v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    sget-object v3, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->DEFAULT_VOLUME:[I

    iget v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationVolume:I

    aput v4, v3, v7

    .line 421
    iget-object v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    sget-object v3, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->DEFAULT_VOLUME:[I

    iget v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mMediaVolume:I

    aput v4, v3, v6

    .line 422
    iget-object v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    sget-object v3, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->DEFAULT_VOLUME:[I

    iget v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlarmVolume:I

    aput v4, v3, v8

    .line 423
    iget-object v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    iget v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingerVolume:I

    iput v4, v3, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->mRingerVolume:I

    .line 424
    iget-object v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    iget-boolean v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingAsNotification:Z

    sput-boolean v3, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->ringAsNotification:Z

    .line 425
    iget-boolean v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingAsNotification:Z

    if-eqz v3, :cond_0

    .line 426
    iget-object v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingVolume:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;

    sget-object v3, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->DEFAULT_VOLUME:[I

    iget v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingerVolume:I

    aput v4, v3, v7

    .line 429
    :cond_0
    const-string v3, "EditProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile onPreferenceChange()preference == mRingVolume mNotificationVolume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationVolume:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const-string v3, "EditProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile onPreferenceChange()preference == mRingVolume mMediaVolume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/stocksettings/profile/EditProfile;->mMediaVolume:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-string v3, "EditProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile onPreferenceChange()preference == mRingVolume mAlarmVolume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlarmVolume:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string v3, "EditProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile onPreferenceChange()preference == mRingVolume mRingerVolume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingerVolume:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v3, "EditProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile onPreferenceChange()preference == mRingVolume mRingAsNotification = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingAsNotification:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .end local p2
    :cond_1
    :goto_0
    return v6

    .line 434
    .restart local p2
    :cond_2
    iget-object v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileName:Landroid/preference/EditTextPreference;

    if-ne p1, v3, :cond_3

    .line 435
    const-string v3, "EditProfile"

    const-string v4, "Profile onPreferenceChange()preference == mProfileName "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileName:Landroid/preference/EditTextPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 437
    .restart local p2
    :cond_3
    iget-object v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlertStyle:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_1

    .line 438
    const-string v3, "EditProfile"

    const-string v4, "Profile onPreferenceChange()preference == mAlertStyle "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlertStyle:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 440
    .local v1, indexOfValue:I
    iget-object v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlertStyle:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 441
    .local v0, entries:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlertStyle:Landroid/preference/ListPreference;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 449
    const-string v0, "EditProfile"

    const-string v1, "Profile onPreferenceTreeClick() preference == mDtmfTone "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 451
    const-string v0, "EditProfile"

    const-string v1, "Profile onPreferenceTreeClick() preference == mSoundEffects "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 452
    :cond_2
    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 453
    const-string v0, "EditProfile"

    const-string v1, "Profile onPreferenceTreeClick() preference == mHapticFeedback "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 454
    :cond_3
    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 455
    const-string v0, "EditProfile"

    const-string v1, "Profile onPreferenceTreeClick() preference == mLockSounds "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public save()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0b0851

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v5, 0xa

    .line 680
    iget v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 681
    const-string v0, "EditProfile"

    const-string v1, "Profile onOptionsItemSelected() mMode == PROFILE_MODE_NEW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const-string v0, "EditProfile"

    const-string v1, "Profile onCreateOptionsMenu() MENU_SAVE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const-string v0, "EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile onCreateOptionsMenu() mProfileName =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const-string v0, "EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile onCreateOptionsMenu() mAlertStyle =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlertStyle:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const-string v0, "EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile onCreateOptionsMenu() mDtmfTone =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/profile/EditProfile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const-string v0, "EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile onCreateOptionsMenu() mSoundEffects =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/profile/EditProfile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const-string v0, "EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile onCreateOptionsMenu() mHapticFeedback =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/profile/EditProfile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const-string v0, "EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile onCreateOptionsMenu() mLockSounds =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/profile/EditProfile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 692
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 693
    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 694
    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 695
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0858

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0859

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/profile/EditProfile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/stocksettings/profile/EditProfile$2;

    invoke-direct {v2, p0}, Lcom/android/stocksettings/profile/EditProfile$2;-><init>(Lcom/android/stocksettings/profile/EditProfile;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 808
    :cond_1
    :goto_0
    return-void

    .line 704
    :cond_2
    const-string v0, "profilename"

    iget-object v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileName:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string v0, "alertstyle"

    iget-object v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlertStyle:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v0, "ringervolume"

    iget v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingerVolume:I

    invoke-static {v3, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v0, "mediavolume"

    iget v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mMediaVolume:I

    invoke-static {v3, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v0, "alarmvolume"

    iget v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlarmVolume:I

    invoke-static {v3, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string v0, "notificationvolume"

    iget v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationVolume:I

    invoke-static {v3, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const-string v3, "ringasnotification"

    iget-boolean v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingAsNotification:Z

    if-eqz v0, :cond_5

    const-string v0, "1"

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    invoke-virtual {v0}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->GetProfileRingtoneUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 714
    const-string v0, "ringtone"

    iget-object v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    invoke-virtual {v3}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->GetProfileRingtoneUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :cond_3
    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    invoke-virtual {v0}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->GetProfileRingtoneUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 716
    const-string v0, "notification"

    iget-object v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    invoke-virtual {v3}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->GetProfileRingtoneUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    :cond_4
    const-string v3, "dtmftone"

    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "1"

    :goto_2
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v3, "soundeffect"

    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "1"

    :goto_3
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v3, "hapticfeedback"

    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "1"

    :goto_4
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v3, "locksounds"

    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "1"

    :goto_5
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const-string v0, "profilemode"

    const-string v3, "4"

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string v0, "content://settings/profile"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 729
    :try_start_0
    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mReceiver:Lcom/android/stocksettings/profile/EditProfile$VolumeReceiver;

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/profile/EditProfile;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 732
    :goto_6
    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 733
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->finish()V

    goto/16 :goto_0

    .line 711
    :cond_5
    const-string v0, "0"

    goto/16 :goto_1

    .line 718
    :cond_6
    const-string v0, "0"

    goto :goto_2

    .line 719
    :cond_7
    const-string v0, "0"

    goto :goto_3

    .line 720
    :cond_8
    const-string v0, "0"

    goto :goto_4

    .line 721
    :cond_9
    const-string v0, "0"

    goto :goto_5

    .line 735
    :cond_a
    iget v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mMode:I

    if-ne v0, v6, :cond_1

    .line 736
    const-string v0, "EditProfile"

    const-string v1, "Profile onOptionsItemSelected() MENU_SAVE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const-string v0, "EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile onCreateOptionsMenu() mProfileName =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const-string v0, "EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile onCreateOptionsMenu() mAlertStyle =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlertStyle:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    invoke-virtual {v0}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->GetProfileRingtoneUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 740
    const-string v0, "EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile onCreateOptionsMenu() mRingtone =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    invoke-virtual {v2}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->GetProfileRingtoneUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_b
    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    invoke-virtual {v0}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->GetProfileRingtoneUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 742
    const-string v0, "EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile onCreateOptionsMenu() mNotificationRingtone =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    invoke-virtual {v2}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->GetProfileRingtoneUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_c
    const-string v0, "EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile onCreateOptionsMenu() mDtmfTone =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/profile/EditProfile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const-string v0, "EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile onCreateOptionsMenu() mSoundEffects =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/profile/EditProfile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const-string v0, "EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile onCreateOptionsMenu() mHapticFeedback =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/profile/EditProfile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const-string v0, "EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile onCreateOptionsMenu() mLockSounds =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/profile/EditProfile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const-string v0, "EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile onCreateOptionsMenu() mUri =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/profile/EditProfile;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b085f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 750
    const-string v1, "EditProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profile onCreateOptionsMenu() IsSilent =="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget v1, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingerVolume:I

    if-nez v1, :cond_d

    if-nez v0, :cond_d

    .line 752
    iput-boolean v6, p0, Lcom/android/stocksettings/profile/EditProfile;->vibrateFlag:Z

    .line 753
    iget v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingerVolume:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingerVolume:I

    .line 755
    :cond_d
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 756
    new-instance v2, Landroid/content/ContentValues;

    const/16 v0, 0xd

    invoke-direct {v2, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 757
    const-string v0, "profilename"

    iget-object v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mProfileName:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string v0, "alertstyle"

    iget-object v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlertStyle:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v0, "ringervolume"

    iget v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingerVolume:I

    invoke-static {v3, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v0, "mediavolume"

    iget v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mMediaVolume:I

    invoke-static {v3, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v0, "alarmvolume"

    iget v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlarmVolume:I

    invoke-static {v3, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const-string v0, "notificationvolume"

    iget v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationVolume:I

    invoke-static {v3, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-string v3, "ringasnotification"

    iget-boolean v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingAsNotification:Z

    if-eqz v0, :cond_13

    const-string v0, "1"

    :goto_7
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v0, "EditProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Profile onCreateOptionsMenu() ringervolume =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingerVolume:I

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const-string v0, "EditProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Profile onCreateOptionsMenu() mediavolume =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mMediaVolume:I

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const-string v0, "EditProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Profile onCreateOptionsMenu() alarmvolume =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mAlarmVolume:I

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const-string v0, "EditProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Profile onCreateOptionsMenu() notificationvolume =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationVolume:I

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    invoke-virtual {v0}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->GetProfileRingtoneUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 770
    const-string v0, "ringtone"

    iget-object v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    invoke-virtual {v3}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->GetProfileRingtoneUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :cond_e
    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    invoke-virtual {v0}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->GetProfileRingtoneUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 772
    const-string v0, "notification"

    iget-object v3, p0, Lcom/android/stocksettings/profile/EditProfile;->mNotificationRingtone:Lcom/android/stocksettings/profile/ProfileRingtonePreference;

    invoke-virtual {v3}, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->GetProfileRingtoneUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    :cond_f
    const-string v3, "dtmftone"

    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "1"

    :goto_8
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v3, "soundeffect"

    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "1"

    :goto_9
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string v3, "hapticfeedback"

    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "1"

    :goto_a
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v3, "locksounds"

    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "1"

    :goto_b
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_10

    .line 780
    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 781
    const-string v1, "EditProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profile cr.update() result == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_10
    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->currentProfileKey:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 784
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_profile"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 785
    iget-object v1, p0, Lcom/android/stocksettings/profile/EditProfile;->currentProfileKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mEditCurrentProfile:Z

    .line 787
    :cond_11
    iget-boolean v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mEditCurrentProfile:Z

    if-eqz v0, :cond_12

    .line 788
    const-string v0, "EditProfile"

    const-string v1, "Profile onCreateOptionsMenu() mEditCurrentProfile == true, switch to current profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_12

    .line 790
    sput-boolean v6, Lcom/android/stocksettings/profile/ProfileSettings;->ProfileChange:Z

    .line 791
    iget-boolean v0, p0, Lcom/android/stocksettings/profile/EditProfile;->vibrateFlag:Z

    if-eqz v0, :cond_18

    .line 792
    const-string v0, "EditProfile"

    const-string v1, "Profile vibrateFlag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const-string v0, "3"

    invoke-static {p0, v0, v6, v7}, Lcom/android/stocksettings/profile/ProfileSettings;->switchProfile(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 802
    :cond_12
    :goto_c
    :try_start_1
    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mReceiver:Lcom/android/stocksettings/profile/EditProfile$VolumeReceiver;

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/profile/EditProfile;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 805
    :goto_d
    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 806
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/EditProfile;->finish()V

    goto/16 :goto_0

    .line 763
    :cond_13
    const-string v0, "0"

    goto/16 :goto_7

    .line 773
    :cond_14
    const-string v0, "0"

    goto/16 :goto_8

    .line 774
    :cond_15
    const-string v0, "0"

    goto/16 :goto_9

    .line 775
    :cond_16
    const-string v0, "0"

    goto/16 :goto_a

    .line 778
    :cond_17
    const-string v0, "0"

    goto :goto_b

    .line 795
    :cond_18
    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6, v6}, Lcom/android/stocksettings/profile/ProfileSettings;->switchProfile(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_c

    .line 803
    :catch_0
    move-exception v0

    goto :goto_d

    .line 730
    :catch_1
    move-exception v0

    goto/16 :goto_6
.end method
