.class public Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;
.super Landroid/preference/PreferenceActivity;
.source "MultiSimSoundSettings.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field mMediaScanDoneReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePref:Lcom/android/stocksettings/DefaultRingtonePreference;

.field private mRingtones:[I

.field private mSubscription:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 63
    const-string v0, "MultiSimSoundSettings"

    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->LOG_TAG:Ljava/lang/String;

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->mRingtones:[I

    .line 72
    new-instance v0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings$1;-><init>(Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;)V

    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 162
    new-instance v0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings$2;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings$2;-><init>(Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;)V

    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->mMediaScanDoneReceiver:Landroid/content/BroadcastReceiver;

    .line 172
    new-instance v0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings$3;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings$3;-><init>(Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;)V

    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->mHandler:Landroid/os/Handler;

    return-void

    .line 65
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;)Lcom/android/stocksettings/DefaultRingtonePreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->mRingtonePref:Lcom/android/stocksettings/DefaultRingtonePreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->mRingtones:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->mSubscription:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private isSubActivated()Z
    .locals 3

    .prologue
    .line 212
    const/4 v0, 0x5

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->mSubscription:I

    invoke-virtual {v1, v2}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 186
    const v1, 0x7f050020

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->addPreferencesFromResource(I)V

    .line 187
    const-string v1, "ringtone"

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/stocksettings/DefaultRingtonePreference;

    iput-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->mRingtonePref:Lcom/android/stocksettings/DefaultRingtonePreference;

    .line 188
    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "subscription"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->mSubscription:I

    .line 190
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->mRingtonePref:Lcom/android/stocksettings/DefaultRingtonePreference;

    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->mRingtones:[I

    iget v3, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->mSubscription:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/stocksettings/DefaultRingtonePreference;->setRingtoneType(I)V

    .line 192
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 193
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->mMediaScanDoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 206
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->mMediaScanDoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 207
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 199
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 200
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->mRingtonePref:Lcom/android/stocksettings/DefaultRingtonePreference;

    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->isSubActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/DefaultRingtonePreference;->setEnabled(Z)V

    .line 201
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 202
    return-void
.end method
