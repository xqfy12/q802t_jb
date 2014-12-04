.class public Lcom/android/stocksettings/deviceinfo/UpdatingSystem;
.super Landroid/preference/PreferenceActivity;
.source "UpdatingSystem.java"


# static fields
.field private static final MP_EXTERNAL:[Ljava/lang/String;

.field static TAG:Ljava/lang/String;

.field static updateFile:Ljava/lang/String;


# instance fields
.field level:I

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field mBatteryOk:Z

.field updateStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const-string v0, "UpdatingSystem"

    sput-object v0, Lcom/android/stocksettings/deviceinfo/UpdatingSystem;->TAG:Ljava/lang/String;

    .line 46
    const-string v0, ""

    sput-object v0, Lcom/android/stocksettings/deviceinfo/UpdatingSystem;->updateFile:Ljava/lang/String;

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/storage/sdcard0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/storage/sdcard1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/stocksettings/deviceinfo/UpdatingSystem;->MP_EXTERNAL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stocksettings/deviceinfo/UpdatingSystem;->mBatteryOk:Z

    .line 55
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/stocksettings/deviceinfo/UpdatingSystem;->updateStatus:I

    .line 59
    new-instance v0, Lcom/android/stocksettings/deviceinfo/UpdatingSystem$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/deviceinfo/UpdatingSystem$1;-><init>(Lcom/android/stocksettings/deviceinfo/UpdatingSystem;)V

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/UpdatingSystem;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getVersionInfor(Ljava/lang/String;)Z
    .locals 8
    .parameter "DevicePath"

    .prologue
    const/4 v4, 0x0

    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, reader:Ljava/io/BufferedReader;
    const-string v3, ""

    .line 244
    .local v3, temp:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x100

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 245
    .end local v1           #reader:Ljava/io/BufferedReader;
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 247
    const-string v5, "HWY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "version infor="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 251
    if-eqz v3, :cond_0

    .line 254
    const/4 v4, 0x1

    move-object v1, v2

    .line 264
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :goto_0
    return v4

    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :cond_0
    move-object v1, v2

    .line 257
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 262
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 263
    .local v0, e:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 262
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 258
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private showAlert()V
    .locals 6

    .prologue
    .line 203
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 204
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 205
    .local v1, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f04005e

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 206
    .local v2, textEntryView:Landroid/view/View;
    const v3, 0x7f02008b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 207
    const v3, 0x7f0b0817

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 208
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 209
    const-string v3, "UpdatingPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/UpdatingSystem;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const v3, 0x7f0b047c

    new-instance v4, Lcom/android/stocksettings/deviceinfo/UpdatingSystem$6;

    invoke-direct {v4, p0, v2}, Lcom/android/stocksettings/deviceinfo/UpdatingSystem$6;-><init>(Lcom/android/stocksettings/deviceinfo/UpdatingSystem;Landroid/view/View;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 227
    const v3, 0x7f0b047d

    new-instance v4, Lcom/android/stocksettings/deviceinfo/UpdatingSystem$7;

    invoke-direct {v4, p0}, Lcom/android/stocksettings/deviceinfo/UpdatingSystem$7;-><init>(Lcom/android/stocksettings/deviceinfo/UpdatingSystem;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 234
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v0, 0x7f050038

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/deviceinfo/UpdatingSystem;->addPreferencesFromResource(I)V

    .line 78
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 83
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/UpdatingSystem;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/deviceinfo/UpdatingSystem;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/high16 v11, 0x1000

    const/4 v7, 0x0

    const v10, 0x7f0b0810

    const v9, 0x7f0b047c

    const v8, 0x7f020075

    .line 93
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "system_update"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 94
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.zdm.LAUNCHER"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/UpdatingSystem;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v1, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 97
    invoke-virtual {p2, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 199
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    :goto_1
    return v5

    .line 99
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_1
    const-string v5, "UpdateSettings"

    const-string v6, "onPreferenceTreeClick no SystemUpdateActivity"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto :goto_1

    .line 102
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "alive_update"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 103
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 104
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v5, "intent.action.startActivity.SETTING_TO_ALIVE_UPDATE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-virtual {v1, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/UpdatingSystem;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v1, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 107
    invoke-virtual {p2, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 109
    :cond_3
    const-string v5, "UpdateSettings"

    const-string v6, "onPreferenceTreeClick no AliveUpdateActivity"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto :goto_1

    .line 112
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "sd_update"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 114
    iget v5, p0, Lcom/android/stocksettings/deviceinfo/UpdatingSystem;->updateStatus:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 115
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b0811

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/stocksettings/deviceinfo/UpdatingSystem$2;

    invoke-direct {v6, p0}, Lcom/android/stocksettings/deviceinfo/UpdatingSystem$2;-><init>(Lcom/android/stocksettings/deviceinfo/UpdatingSystem;)V

    invoke-virtual {v5, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 127
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto :goto_1

    .line 130
    :cond_5
    iget v5, p0, Lcom/android/stocksettings/deviceinfo/UpdatingSystem;->level:I

    const/16 v6, 0xf

    if-ge v5, v6, :cond_6

    .line 132
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b0812

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/stocksettings/deviceinfo/UpdatingSystem$3;

    invoke-direct {v6, p0}, Lcom/android/stocksettings/deviceinfo/UpdatingSystem$3;-><init>(Lcom/android/stocksettings/deviceinfo/UpdatingSystem;)V

    invoke-virtual {v5, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 144
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto/16 :goto_1

    .line 147
    :cond_6
    sget-object v5, Lcom/android/stocksettings/deviceinfo/UpdatingSystem;->MP_EXTERNAL:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v0, v5, v6

    .line 148
    .local v0, SDpath:Ljava/lang/String;
    const-string v5, "persist.sys.isExternalSdFirst"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, sdMode:Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 150
    sget-object v5, Lcom/android/stocksettings/deviceinfo/UpdatingSystem;->MP_EXTERNAL:[Ljava/lang/String;

    aget-object v0, v5, v7

    .line 152
    :cond_7
    const-string v5, "HWY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " SDpath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/update.zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, path:Ljava/lang/String;
    sput-object v3, Lcom/android/stocksettings/deviceinfo/UpdatingSystem;->updateFile:Ljava/lang/String;

    .line 155
    const-string v5, "HWY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v2, m_file:Ljava/io/File;
    const-string v5, "HWY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " m_file.exists()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 161
    invoke-direct {p0, v3}, Lcom/android/stocksettings/deviceinfo/UpdatingSystem;->getVersionInfor(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 163
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b0813

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/stocksettings/deviceinfo/UpdatingSystem$4;

    invoke-direct {v6, p0}, Lcom/android/stocksettings/deviceinfo/UpdatingSystem$4;-><init>(Lcom/android/stocksettings/deviceinfo/UpdatingSystem;)V

    invoke-virtual {v5, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 179
    :cond_8
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/UpdatingSystem;->showAlert()V

    goto/16 :goto_0

    .line 183
    :cond_9
    const-string v5, "HWY"

    const-string v6, " Update package doesn\'t exist!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b0814

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/stocksettings/deviceinfo/UpdatingSystem$5;

    invoke-direct {v6, p0}, Lcom/android/stocksettings/deviceinfo/UpdatingSystem$5;-><init>(Lcom/android/stocksettings/deviceinfo/UpdatingSystem;)V

    invoke-virtual {v5, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 87
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 88
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/UpdatingSystem;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/stocksettings/deviceinfo/UpdatingSystem;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    return-void
.end method
