.class Lcom/android/stocksettings/profile/ProfilePreference$1;
.super Ljava/lang/Object;
.source "ProfilePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/profile/ProfilePreference;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/profile/ProfilePreference;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/profile/ProfilePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/stocksettings/profile/ProfilePreference$1;->this$0:Lcom/android/stocksettings/profile/ProfilePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 173
    iget-object v6, p0, Lcom/android/stocksettings/profile/ProfilePreference$1;->this$0:Lcom/android/stocksettings/profile/ProfilePreference;

    invoke-virtual {v6}, Lcom/android/stocksettings/profile/ProfilePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 174
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 175
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "current_profile"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, currentProfile:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/stocksettings/profile/ProfilePreference$1;->this$0:Lcom/android/stocksettings/profile/ProfilePreference;

    invoke-virtual {v6}, Lcom/android/stocksettings/profile/ProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 178
    .local v3, deleteCurrentProfile:Z
    if-eqz v3, :cond_0

    .line 179
    const-string v6, "ProfilePreference"

    const-string v7, "Profile onClick(DialogInterface dialog, int which),switch to profile default"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sput-boolean v8, Lcom/android/stocksettings/profile/ProfileSettings;->ProfileChange:Z

    .line 181
    const-string v6, "1"

    const/4 v7, 0x0

    invoke-static {v1, v6, v8, v7}, Lcom/android/stocksettings/profile/ProfileSettings;->switchProfile(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 184
    :cond_0
    iget-object v6, p0, Lcom/android/stocksettings/profile/ProfilePreference$1;->this$0:Lcom/android/stocksettings/profile/ProfilePreference;

    invoke-virtual {v6}, Lcom/android/stocksettings/profile/ProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 185
    .local v4, pos:I
    const-string v6, "content://settings/profile"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    int-to-long v7, v4

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 186
    .local v5, url:Landroid/net/Uri;
    const-string v6, "ProfilePreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Profile onClick(DialogInterface dialog, int which) url == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.android.stocksettings.profile.REFRESH"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, broadcast:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 192
    .end local v0           #broadcast:Landroid/content/Intent;
    .end local v2           #currentProfile:Ljava/lang/String;
    .end local v3           #deleteCurrentProfile:Z
    .end local v4           #pos:I
    .end local v5           #url:Landroid/net/Uri;
    :cond_1
    return-void
.end method
