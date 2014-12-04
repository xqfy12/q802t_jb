.class Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings$1;
.super Ljava/lang/Object;
.source "MultiSimSoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings$1;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private resetRingtoneToDefault(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 14
    .parameter "context"

    .prologue
    .line 119
    const/4 v13, 0x0

    .line 120
    .local v13, summary:Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .line 122
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 124
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

    .line 138
    if-eqz v8, :cond_1

    .line 139
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 141
    .local v12, rowId:I
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 142
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, v12

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 144
    .local v10, defaultRingtoneUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 149
    .end local v10           #defaultRingtoneUri:Landroid/net/Uri;
    .end local v12           #rowId:I
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_1
    if-eqz v8, :cond_2

    .line 155
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 158
    .end local v9           #defaultRingtoneFilename:Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v13

    .line 151
    :catch_0
    move-exception v11

    .line 152
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    if-eqz v8, :cond_2

    .line 155
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 154
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 155
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const v12, 0x104044d

    const/4 v11, 0x0

    .line 75
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings$1;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;

    #getter for: Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->mRingtonePref:Lcom/android/stocksettings/DefaultRingtonePreference;
    invoke-static {v0}, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->access$000(Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;)Lcom/android/stocksettings/DefaultRingtonePreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v6, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings$1;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;

    .line 77
    .local v6, context:Landroid/content/Context;
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings$1;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;

    #getter for: Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->mRingtones:[I
    invoke-static {v0}, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->access$100(Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;)[I

    move-result-object v0

    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings$1;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;

    #getter for: Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->mSubscription:I
    invoke-static {v2}, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->access$200(Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;)I

    move-result v2

    aget v0, v0, v2

    invoke-static {v6, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 82
    .local v1, ringtoneUri:Landroid/net/Uri;
    invoke-static {v6, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    .line 83
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings$1;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;

    #getter for: Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->mRingtones:[I
    invoke-static {v0}, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->access$100(Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;)[I

    move-result-object v0

    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings$1;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;

    #getter for: Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->mSubscription:I
    invoke-static {v2}, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->access$200(Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;)I

    move-result v2

    aget v0, v0, v2

    invoke-static {v6, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 85
    invoke-virtual {v6, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 88
    .local v10, summary:Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 90
    const v0, 0x104044b

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 114
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings$1;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;

    #getter for: Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->access$300(Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings$1;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;

    #getter for: Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->access$300(Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v11, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 116
    .end local v1           #ringtoneUri:Landroid/net/Uri;
    .end local v6           #context:Landroid/content/Context;
    .end local v10           #summary:Ljava/lang/CharSequence;
    :cond_1
    return-void

    .line 94
    .restart local v1       #ringtoneUri:Landroid/net/Uri;
    .restart local v6       #context:Landroid/content/Context;
    .restart local v10       #summary:Ljava/lang/CharSequence;
    :cond_2
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

    .line 96
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 97
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 100
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_4
    :goto_1
    invoke-virtual {v6, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 107
    .local v9, ringtoneUnknown:Ljava/lang/CharSequence;
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0, v6}, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings$1;->resetRingtoneToDefault(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 109
    .local v8, defaultRingtone:Ljava/lang/CharSequence;
    if-eqz v8, :cond_0

    .line 110
    move-object v10, v8

    goto :goto_0

    .line 102
    .end local v8           #defaultRingtone:Ljava/lang/CharSequence;
    .end local v9           #ringtoneUnknown:Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    goto :goto_1
.end method
