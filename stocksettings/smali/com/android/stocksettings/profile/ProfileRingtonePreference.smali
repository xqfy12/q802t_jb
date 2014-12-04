.class public Lcom/android/stocksettings/profile/ProfileRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "ProfileRingtonePreference.java"


# instance fields
.field public mProfileRingtoneUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->mProfileRingtoneUri:Landroid/net/Uri;

    .line 42
    return-void
.end method


# virtual methods
.method public GetProfileRingtoneUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->mProfileRingtoneUri:Landroid/net/Uri;

    return-object v0
.end method

.method public SetProfileRingtoneUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "ringtoneUri"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->mProfileRingtoneUri:Landroid/net/Uri;

    .line 76
    return-void
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "ringtonePickerIntent"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 52
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    const-string v0, "android.intent.extra.ringtone.PROFILE_MODE"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    const-string v0, "android.intent.extra.ringtone.SHOW_EXTERNAL"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->mProfileRingtoneUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->mProfileRingtoneUri:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 0
    .parameter "ringtoneUri"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/stocksettings/profile/ProfileRingtonePreference;->mProfileRingtoneUri:Landroid/net/Uri;

    .line 67
    return-void
.end method
