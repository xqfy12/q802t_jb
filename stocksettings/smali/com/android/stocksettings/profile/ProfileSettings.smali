.class public Lcom/android/stocksettings/profile/ProfileSettings;
.super Landroid/preference/PreferenceActivity;
.source "ProfileSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static LOGD:Z

.field public static OldProfileMode:Ljava/lang/String;

.field public static ProfileChange:Z

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private final MENU_NEW:I

.field private mProfileList:Landroid/preference/PreferenceGroup;

.field private mRefreshUiReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/stocksettings/profile/ProfileSettings;->ProfileChange:Z

    .line 55
    const-string v0, "1"

    sput-object v0, Lcom/android/stocksettings/profile/ProfileSettings;->OldProfileMode:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/android/stocksettings/profile/ProfileSettings$2;

    invoke-direct {v0}, Lcom/android/stocksettings/profile/ProfileSettings$2;-><init>()V

    sput-object v0, Lcom/android/stocksettings/profile/ProfileSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/stocksettings/profile/ProfileSettings;->MENU_NEW:I

    .line 59
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/stocksettings/profile/ProfileSettings;->mSelectedKey:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/android/stocksettings/profile/ProfileSettings$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/profile/ProfileSettings$1;-><init>(Lcom/android/stocksettings/profile/ProfileSettings;)V

    iput-object v0, p0, Lcom/android/stocksettings/profile/ProfileSettings;->mRefreshUiReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/stocksettings/profile/ProfileSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/stocksettings/profile/ProfileSettings;->fillList()V

    return-void
.end method

.method private fillList()V
    .locals 13

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/ProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://settings/profile"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "profilename"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "alertstyle"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "profilemode"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 116
    .local v8, cursor:Landroid/database/Cursor;
    const-string v0, "ProfileSettings"

    const-string v1, "fillList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v0, "profile_settings"

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/profile/ProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/stocksettings/profile/ProfileSettings;->mProfileList:Landroid/preference/PreferenceGroup;

    .line 119
    iget-object v0, p0, Lcom/android/stocksettings/profile/ProfileSettings;->mProfileList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 121
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/ProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_profile"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, currentProfileKey:Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 125
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_9

    .line 126
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 127
    .local v9, key:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 128
    .local v12, profileName:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, alertStyle:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 130
    .local v11, profileMode:Ljava/lang/String;
    new-instance v10, Lcom/android/stocksettings/profile/ProfilePreference;

    invoke-direct {v10, p0}, Lcom/android/stocksettings/profile/ProfilePreference;-><init>(Landroid/content/Context;)V

    .line 131
    .local v10, pref:Lcom/android/stocksettings/profile/ProfilePreference;
    invoke-virtual {v10, v9}, Lcom/android/stocksettings/profile/ProfilePreference;->setKey(Ljava/lang/String;)V

    .line 133
    const-string v0, "0"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    const v0, 0x7f0b083b

    invoke-virtual {v10, v0}, Lcom/android/stocksettings/profile/ProfilePreference;->setSummary(I)V

    .line 135
    const v0, 0x7f0b085e

    invoke-virtual {v10, v0}, Lcom/android/stocksettings/profile/ProfilePreference;->setTitle(I)V

    .line 157
    :cond_0
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/android/stocksettings/profile/ProfilePreference;->setPersistent(Z)V

    .line 158
    invoke-virtual {v10, p0}, Lcom/android/stocksettings/profile/ProfilePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 159
    if-eqz v7, :cond_1

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v10}, Lcom/android/stocksettings/profile/ProfilePreference;->setChecked()V

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/stocksettings/profile/ProfileSettings;->mProfileList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 163
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 136
    :cond_2
    const-string v0, "1"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    const v0, 0x7f0b083c

    invoke-virtual {v10, v0}, Lcom/android/stocksettings/profile/ProfilePreference;->setSummary(I)V

    .line 138
    const v0, 0x7f0b085f

    invoke-virtual {v10, v0}, Lcom/android/stocksettings/profile/ProfilePreference;->setTitle(I)V

    goto :goto_1

    .line 139
    :cond_3
    const-string v0, "2"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    const v0, 0x7f0b083d

    invoke-virtual {v10, v0}, Lcom/android/stocksettings/profile/ProfilePreference;->setSummary(I)V

    .line 141
    const v0, 0x7f0b0860

    invoke-virtual {v10, v0}, Lcom/android/stocksettings/profile/ProfilePreference;->setTitle(I)V

    goto :goto_1

    .line 142
    :cond_4
    const-string v0, "3"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 143
    const v0, 0x7f0b083e

    invoke-virtual {v10, v0}, Lcom/android/stocksettings/profile/ProfilePreference;->setSummary(I)V

    .line 144
    const v0, 0x7f0b083a

    invoke-virtual {v10, v0}, Lcom/android/stocksettings/profile/ProfilePreference;->setTitle(I)V

    goto :goto_1

    .line 146
    :cond_5
    invoke-virtual {v10, v12}, Lcom/android/stocksettings/profile/ProfilePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    const-string v0, "0"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 148
    const v0, 0x7f0b083b

    invoke-virtual {v10, v0}, Lcom/android/stocksettings/profile/ProfilePreference;->setSummary(I)V

    goto :goto_1

    .line 149
    :cond_6
    const-string v0, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 150
    const v0, 0x7f0b083d

    invoke-virtual {v10, v0}, Lcom/android/stocksettings/profile/ProfilePreference;->setSummary(I)V

    goto :goto_1

    .line 151
    :cond_7
    const-string v0, "2"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 152
    const v0, 0x7f0b083e

    invoke-virtual {v10, v0}, Lcom/android/stocksettings/profile/ProfilePreference;->setSummary(I)V

    goto/16 :goto_1

    .line 153
    :cond_8
    const-string v0, "3"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const v0, 0x7f0b083b

    invoke-virtual {v10, v0}, Lcom/android/stocksettings/profile/ProfilePreference;->setSummary(I)V

    goto/16 :goto_1

    .line 165
    .end local v6           #alertStyle:Ljava/lang/String;
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #pref:Lcom/android/stocksettings/profile/ProfilePreference;
    .end local v11           #profileMode:Ljava/lang/String;
    .end local v12           #profileName:Ljava/lang/String;
    :cond_9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 166
    return-void
.end method

.method public static switchProfile(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 32
    .parameter "context"
    .parameter "profileKey"
    .parameter "affectRingerMode"
    .parameter "force"

    .prologue
    .line 217
    const-string v3, "ProfileSettings"

    const-string v4, "switchProfile"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "current_profile"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 221
    .local v17, currentProfileKey:Ljava/lang/String;
    sput-object v17, Lcom/android/stocksettings/profile/ProfileSettings;->OldProfileMode:Ljava/lang/String;

    .line 223
    sget-boolean v3, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "ProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile switchProfile() before sync currentProfileKey == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    sget-boolean v3, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    if-eqz v3, :cond_1

    const-string v3, "ProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile switchProfile() before sync profileKey == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_1
    const/4 v12, 0x0

    .line 227
    .local v12, bRet:Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 228
    .local v14, cr1:Landroid/content/ContentResolver;
    move-object/from16 v16, p1

    .line 229
    .local v16, currentProfile:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 246
    .local v15, curProId:I
    if-nez p3, :cond_4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 247
    sget-boolean v3, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    if-eqz v3, :cond_2

    const-string v3, "ProfileSettings"

    const-string v4, "Profile switchProfile() before profileKey.equals(currentProfileKey)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_2
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/stocksettings/profile/ProfileSettings;->ProfileChange:Z

    .line 416
    :cond_3
    :goto_0
    return-void

    .line 252
    :cond_4
    if-nez p3, :cond_7

    .line 253
    sget-boolean v3, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    if-eqz v3, :cond_5

    const-string v3, "ProfileSettings"

    const-string v4, "Profile switchProfile() currentProfileKey == profileKey"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_5
    const/16 v26, 0x1

    .line 255
    .local v26, pos:I
    if-eqz v17, :cond_6

    .line 256
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 258
    :cond_6
    const-string v3, "content://settings/profile"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move/from16 v0, v26

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v31

    .line 259
    .local v31, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/android/stocksettings/profile/ProfileSettings;->syncCurrentProfile(Landroid/content/Context;Landroid/net/Uri;)V

    .line 261
    .end local v26           #pos:I
    .end local v31           #uri:Landroid/net/Uri;
    :cond_7
    const-string v3, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioManager;

    .line 263
    .local v11, audioManager:Landroid/media/AudioManager;
    sget-boolean v3, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    if-eqz v3, :cond_8

    const-string v3, "ProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile switchProfile() after sync currentProfileKey == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_8
    sget-boolean v3, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    if-eqz v3, :cond_9

    const-string v3, "ProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile switchProfile() after sync profileKey == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_9
    move-object/from16 v17, p1

    .line 267
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 268
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v3, "current_profile"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 270
    new-instance v13, Landroid/content/Intent;

    const-string v3, "android.settings.PROFILE_MODE_CHANGED"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v13, broadcast:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 272
    sget-boolean v3, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    if-eqz v3, :cond_a

    const-string v3, "ProfileSettings"

    const-string v4, "Profile switchProfile() switchProfile()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_a
    const-string v3, "content://settings/profile"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 275
    .local v18, cursor:Landroid/database/Cursor;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 276
    sget-boolean v3, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    if-eqz v3, :cond_b

    const-string v3, "ProfileSettings"

    const-string v4, "Profile switchProfile() cursor.moveToFirst() != null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_b
    const-string v3, "alertstyle"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 279
    .local v10, alertStyle:Ljava/lang/String;
    const-string v3, "dtmftone"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 280
    .local v19, dtmfTone:Ljava/lang/String;
    const-string v4, "dtmf_tone"

    const-string v3, "1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v3, 0x1

    :goto_1
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 282
    const-string v3, "soundeffect"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 283
    .local v30, soundEffect:Ljava/lang/String;
    const-string v3, "1"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 288
    :cond_c
    :goto_2
    const-string v4, "sound_effects_enabled"

    const-string v3, "1"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v3, 0x1

    :goto_3
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    const-string v3, "hapticfeedback"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 291
    .local v20, hapticFeedback:Ljava/lang/String;
    const-string v4, "haptic_feedback_enabled"

    const-string v3, "1"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 v3, 0x1

    :goto_4
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 293
    const-string v3, "locksounds"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 294
    .local v21, lockSounds:Ljava/lang/String;
    const-string v4, "lockscreen_sounds_enabled"

    const-string v3, "1"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    :goto_5
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 297
    sget-boolean v3, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    if-eqz v3, :cond_d

    const-string v3, "ProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile switchProfile() affectRingerMode == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_d
    sget-boolean v3, Lcom/android/stocksettings/profile/ProfileSettings;->ProfileChange:Z

    if-eqz v3, :cond_20

    .line 299
    if-eqz p2, :cond_f

    .line 300
    sget-boolean v3, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    if-eqz v3, :cond_e

    const-string v3, "ProfileSettings"

    const-string v4, "Profile switchProfile() affectRingerMode == true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_e
    const-string v3, "0"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 302
    const-string v3, "vibrate_in_silent"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 305
    const/4 v3, 0x2

    invoke-virtual {v11, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 307
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 309
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 347
    :cond_f
    :goto_6
    const-string v3, "3"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "1"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 348
    :cond_10
    const-string v8, "0"

    .line 349
    .local v8, OrgCamId:Ljava/lang/String;
    const-string v3, "persist.power.ring"

    invoke-static {v3, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v3, "ProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persist.power.ring 0="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "persist.power.ring"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :goto_7
    const-string v3, "ringervolume"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v29

    .line 358
    .local v29, ringerVolume:I
    const-string v3, "mediavolume"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 359
    .local v22, mediaVolume:I
    const-string v3, "alarmvolume"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 360
    .local v9, alarmVolume:I
    const-string v3, "notificationvolume"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v25

    .line 361
    .local v25, notificationVolume:I
    const-string v3, "ringasnotification"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    .line 362
    .local v28, ringAsNotification:Z
    sget-boolean v3, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    if-eqz v3, :cond_11

    const-string v3, "ProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile alarmVolume="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mediaVolume ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ringerVolume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_11
    const-string v3, "ProfileSettings"

    const-string v4, "ProfileChange---volume-------------in"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {v11}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_12

    .line 366
    const/4 v3, 0x2

    const/4 v4, 0x0

    move/from16 v0, v29

    invoke-virtual {v11, v3, v0, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 367
    const/4 v3, 0x3

    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v3, v0, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 368
    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v9, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 369
    if-eqz v28, :cond_2a

    .line 370
    const/4 v3, 0x5

    const/4 v4, 0x0

    move/from16 v0, v29

    invoke-virtual {v11, v3, v0, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 383
    :cond_12
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notifications_use_ring_volume"

    if-eqz v28, :cond_2b

    const/4 v3, 0x1

    :goto_9
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 386
    const-string v3, "profilemode"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 387
    .local v27, profileMode:Ljava/lang/String;
    const-string v3, "1"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "2"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 388
    sget-boolean v3, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    if-eqz v3, :cond_13

    const-string v3, "ProfileSettings"

    const-string v4, "Profile switchProfile() slient or vibrate mode, don\'t set ringtone"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_13
    const-string v3, "ringtone"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 390
    .local v24, mringtone:Ljava/lang/String;
    const-string v3, "notification"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 391
    .local v23, mnotification:Ljava/lang/String;
    if-nez v24, :cond_14

    .line 392
    const-string v24, "content://media/internal/audio/media/31"

    .line 394
    :cond_14
    if-nez v23, :cond_15

    .line 395
    const-string v23, "content://media/internal/audio/media/13"

    .line 397
    :cond_15
    const/4 v3, 0x1

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 398
    const/4 v3, 0x2

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 400
    const-string v3, "previous_profile"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 403
    .end local v23           #mnotification:Ljava/lang/String;
    .end local v24           #mringtone:Ljava/lang/String;
    :cond_16
    sget-boolean v3, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    if-eqz v3, :cond_17

    const-string v3, "ProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile switchProfile() alertStyle =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_17
    sget-boolean v3, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    if-eqz v3, :cond_18

    const-string v3, "ProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile switchProfile() ringtone =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ringtone"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_18
    sget-boolean v3, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    if-eqz v3, :cond_19

    const-string v3, "ProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile switchProfile() notification =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "notification"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_19
    sget-boolean v3, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    if-eqz v3, :cond_1a

    const-string v3, "ProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile switchProfile() dtmfTone =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_1a
    sget-boolean v3, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    if-eqz v3, :cond_1b

    const-string v3, "ProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile switchProfile() soundEffect =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_1b
    sget-boolean v3, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    if-eqz v3, :cond_1c

    const-string v3, "ProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile switchProfile() hapticFeedback =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_1c
    sget-boolean v3, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    if-eqz v3, :cond_1d

    const-string v3, "ProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile switchProfile() lockSounds =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_1d
    sget-boolean v3, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    if-eqz v3, :cond_1e

    const-string v3, "ProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile onPreferenceChange() switchProfile() mediaVolume="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v11, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_1e
    sget-boolean v3, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    if-eqz v3, :cond_1f

    const-string v3, "ProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile onPreferenceChange() switchProfile() alarmVolume="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v11, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_1f
    sget-boolean v3, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    if-eqz v3, :cond_20

    const-string v3, "ProfileSettings"

    const-string v4, "Profile onPreferenceChange() switchProfile() finish!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .end local v8           #OrgCamId:Ljava/lang/String;
    .end local v9           #alarmVolume:I
    .end local v22           #mediaVolume:I
    .end local v25           #notificationVolume:I
    .end local v27           #profileMode:Ljava/lang/String;
    .end local v28           #ringAsNotification:Z
    .end local v29           #ringerVolume:I
    :cond_20
    sget-object v3, Lcom/android/stocksettings/profile/ProfileSettings;->mHandler:Landroid/os/Handler;

    sget-object v4, Lcom/android/stocksettings/profile/ProfileSettings;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x190

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 280
    .end local v20           #hapticFeedback:Ljava/lang/String;
    .end local v21           #lockSounds:Ljava/lang/String;
    .end local v30           #soundEffect:Ljava/lang/String;
    :cond_21
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 285
    .restart local v30       #soundEffect:Ljava/lang/String;
    :cond_22
    const-string v3, "0"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto/16 :goto_2

    .line 288
    :cond_23
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 291
    .restart local v20       #hapticFeedback:Ljava/lang/String;
    :cond_24
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 294
    .restart local v21       #lockSounds:Ljava/lang/String;
    :cond_25
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 311
    :cond_26
    const-string v3, "1"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 312
    const-string v3, "vibrate_in_silent"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 315
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 317
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v11, v3, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 319
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v11, v3, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 321
    const-string v3, "3"

    sput-object v3, Lcom/android/stocksettings/profile/ProfileSettings;->OldProfileMode:Ljava/lang/String;

    goto/16 :goto_6

    .line 322
    :cond_27
    const-string v3, "2"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 323
    const-string v3, "vibrate_in_silent"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 326
    const/4 v3, 0x2

    invoke-virtual {v11, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 328
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v11, v3, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 330
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v11, v3, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto/16 :goto_6

    .line 332
    :cond_28
    const-string v3, "3"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 333
    const-string v3, "vibrate_in_silent"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 336
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 338
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 340
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 342
    const-string v3, "2"

    sput-object v3, Lcom/android/stocksettings/profile/ProfileSettings;->OldProfileMode:Ljava/lang/String;

    goto/16 :goto_6

    .line 352
    :cond_29
    const-string v8, "1"

    .line 353
    .restart local v8       #OrgCamId:Ljava/lang/String;
    const-string v3, "persist.power.ring"

    invoke-static {v3, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v3, "ProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persist.power.ring 1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "persist.power.ring"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 372
    .restart local v9       #alarmVolume:I
    .restart local v22       #mediaVolume:I
    .restart local v25       #notificationVolume:I
    .restart local v28       #ringAsNotification:Z
    .restart local v29       #ringerVolume:I
    :cond_2a
    const/4 v3, 0x5

    const/4 v4, 0x0

    move/from16 v0, v25

    invoke-virtual {v11, v3, v0, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_8

    .line 383
    :cond_2b
    const/4 v3, 0x0

    goto/16 :goto_9
.end method

.method public static syncCurrentProfile(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 463
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v1, 0x7f050024

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/profile/ProfileSettings;->addPreferencesFromResource(I)V

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.stocksettings.profile.REFRESH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/android/stocksettings/profile/ProfileSettings;->mRefreshUiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/stocksettings/profile/ProfileSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 170
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 171
    sget-boolean v1, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "ProfileSettings"

    const-string v2, "Profile onCreateOptionsMenu()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/ProfileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b084a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 175
    .local v0, addAccountItem:Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 176
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/stocksettings/profile/ProfileSettings;->mRefreshUiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/profile/ProfileSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 110
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 181
    sget-boolean v1, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "ProfileSettings"

    const-string v2, "Profile onOptionsItemSelected()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 190
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 184
    :pswitch_0
    const-string v1, "ProfileSettings"

    const-string v2, "Profile onOptionsItemSelected() MENU_NEW"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.stocksettings.profile.EditProfile.ACTION.insert"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "content://settings/profile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, v0}, Lcom/android/stocksettings/profile/ProfileSettings;->startActivity(Landroid/content/Intent;)V

    .line 188
    const/4 v1, 0x1

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    .line 194
    sget-boolean v0, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "ProfileSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 198
    sget-boolean v0, Lcom/android/stocksettings/profile/ProfileSettings;->LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "ProfileSettings"

    const-string v1, "Profile onPreferenceChange() newValue instanceof String"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_1
    sput-boolean v3, Lcom/android/stocksettings/profile/ProfileSettings;->ProfileChange:Z

    .line 201
    check-cast p2, Ljava/lang/String;

    .end local p2
    const/4 v0, 0x0

    invoke-static {p0, p2, v3, v0}, Lcom/android/stocksettings/profile/ProfileSettings;->switchProfile(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 203
    :cond_2
    return v3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 208
    const-string v2, "ProfileSettings"

    const-string v3, "onPreferenceTreeClick"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 210
    .local v0, pos:I
    const-string v2, "content://settings/profile"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 211
    .local v1, url:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.stocksettings.profile.EditProfile.ACTION.edit"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/profile/ProfileSettings;->startActivity(Landroid/content/Intent;)V

    .line 212
    const/4 v2, 0x1

    return v2
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 99
    const-string v0, "ProfileSettings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/android/stocksettings/profile/ProfileSettings;->mProfileList:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/stocksettings/profile/ProfileSettings;->mProfileList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/android/stocksettings/profile/ProfileSettings;->fillList()V

    .line 104
    return-void
.end method
