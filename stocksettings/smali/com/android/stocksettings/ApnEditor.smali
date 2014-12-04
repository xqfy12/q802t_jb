.class public Lcom/android/stocksettings/ApnEditor;
.super Landroid/preference/PreferenceActivity;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private mApn:Landroid/preference/EditTextPreference;

.field private mApnType:Landroid/preference/EditTextPreference;

.field private mAuthType:Landroid/preference/ListPreference;

.field private mBearer:Landroid/preference/ListPreference;

.field private mCarrierEnabled:Landroid/preference/CheckBoxPreference;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDisableEditor:Z

.field private mFirstTime:Z

.field private mMcc:Landroid/preference/EditTextPreference;

.field private mMmsPort:Landroid/preference/EditTextPreference;

.field private mMmsProxy:Landroid/preference/EditTextPreference;

.field private mMmsc:Landroid/preference/EditTextPreference;

.field private mMnc:Landroid/preference/EditTextPreference;

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mMvnoMatchData:Landroid/preference/EditTextPreference;

.field private mMvnoType:Landroid/preference/ListPreference;

.field private mName:Landroid/preference/EditTextPreference;

.field private mNewApn:Z

.field private mPassword:Landroid/preference/EditTextPreference;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mPppNumber:Landroid/preference/EditTextPreference;

.field private mProtocol:Landroid/preference/ListPreference;

.field private mProxy:Landroid/preference/EditTextPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingProtocol:Landroid/preference/ListPreference;

.field private mServer:Landroid/preference/EditTextPreference;

.field private mSubscription:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const-class v0, Lcom/android/stocksettings/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/stocksettings/ApnEditor;->TAG:Ljava/lang/String;

    .line 118
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "mvno_type"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "mvno_match_data"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "ppp_number"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "localized_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/stocksettings/ApnEditor;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 103
    iput v0, p0, Lcom/android/stocksettings/ApnEditor;->mSubscription:I

    .line 104
    iput-boolean v0, p0, Lcom/android/stocksettings/ApnEditor;->mDisableEditor:Z

    .line 174
    new-instance v0, Lcom/android/stocksettings/ApnEditor$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/ApnEditor$1;-><init>(Lcom/android/stocksettings/ApnEditor;)V

    iput-object v0, p0, Lcom/android/stocksettings/ApnEditor;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/stocksettings/ApnEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/stocksettings/ApnEditor;->setScreenEnabled()V

    return-void
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "raw"

    .prologue
    const/4 v3, 0x0

    .line 438
    iget-object v4, p0, Lcom/android/stocksettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v4, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 439
    .local v1, mBearerIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 446
    :goto_0
    return-object v3

    .line 442
    :cond_0
    iget-object v4, p0, Lcom/android/stocksettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f070037

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 783
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/stocksettings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 784
    :cond_0
    const-string p1, ""

    .line 786
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 775
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 776
    :cond_0
    sget-object p1, Lcom/android/stocksettings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 778
    .end local p1
    :cond_1
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 758
    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 759
    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->finish()V

    .line 760
    return-void
.end method

.method private fillUi(Ljava/lang/String;)V
    .locals 14
    .parameter "defaultOperatorNumeric"

    .prologue
    .line 295
    iget-boolean v11, p0, Lcom/android/stocksettings/ApnEditor;->mFirstTime:Z

    if-eqz v11, :cond_4

    .line 296
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/stocksettings/ApnEditor;->mFirstTime:Z

    .line 297
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-nez v11, :cond_0

    .line 416
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 299
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xb

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 301
    .local v6, numeric:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 302
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x2

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 303
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x3

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 304
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x4

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 305
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x5

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 306
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x6

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 307
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x7

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 308
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0xc

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 309
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0xd

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 310
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x8

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 311
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x9

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 312
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0xa

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 313
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0xf

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 314
    iget-boolean v11, p0, Lcom/android/stocksettings/ApnEditor;->mNewApn:Z

    if-eqz v11, :cond_2

    .line 316
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    if-le v11, v12, :cond_1

    .line 318
    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, mcc:Ljava/lang/String;
    const/4 v11, 0x3

    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 322
    .local v5, mnc:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v11, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 323
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v11, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 324
    iput-object v5, p0, Lcom/android/stocksettings/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 325
    iput-object v4, p0, Lcom/android/stocksettings/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 327
    .end local v4           #mcc:Ljava/lang/String;
    .end local v5           #mnc:Ljava/lang/String;
    :cond_1
    move-object v6, p1

    .line 329
    :cond_2
    const-string v11, "persist.env.settings.cfgmmsapn"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "46003"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 331
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 332
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 333
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 335
    :cond_3
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xe

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 336
    .local v0, authVal:I
    const/4 v11, -0x1

    if-eq v0, v11, :cond_7

    .line 337
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v11, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 342
    :goto_1
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x10

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 343
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x13

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 344
    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x11

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_8

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 345
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x12

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 346
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x14

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 347
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 348
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x15

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 350
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0x16

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 358
    .end local v0           #authVal:I
    .end local v6           #numeric:Ljava/lang/String;
    :cond_4
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0x17

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 359
    .local v9, resName:Ljava/lang/String;
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    .line 360
    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "string"

    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v9, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 361
    .local v8, resId:I
    const/4 v3, 0x0

    .line 363
    .local v3, localizedName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 364
    sget-object v11, Lcom/android/stocksettings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v12, "Localized Apn Name is not editable"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 369
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v11, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 373
    .end local v3           #localizedName:Ljava/lang/String;
    .end local v8           #resId:I
    :cond_5
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/stocksettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/stocksettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/stocksettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/stocksettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/stocksettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/stocksettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/stocksettings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/stocksettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/stocksettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/stocksettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/stocksettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/stocksettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/stocksettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mPppNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    .line 388
    .local v7, pppNumber:Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 391
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mPppNumber:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v7}, Lcom/android/stocksettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 394
    :cond_6
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, authVal:Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 396
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 397
    .local v1, authValIndex:I
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v11, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 399
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v12, 0x7f070033

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 400
    .local v10, values:[Ljava/lang/String;
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v12, v10, v1

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 405
    .end local v1           #authValIndex:I
    .end local v10           #values:[Ljava/lang/String;
    :goto_4
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/stocksettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v12, v13}, Lcom/android/stocksettings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/stocksettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/stocksettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v12, v13}, Lcom/android/stocksettings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/stocksettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/stocksettings/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/stocksettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/stocksettings/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/stocksettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/stocksettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 415
    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/stocksettings/ApnEditor;->mPppNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 339
    .end local v7           #pppNumber:Ljava/lang/String;
    .end local v9           #resName:Ljava/lang/String;
    .local v0, authVal:I
    .restart local v6       #numeric:Ljava/lang/String;
    :cond_7
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 344
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 365
    .end local v0           #authVal:I
    .end local v6           #numeric:Ljava/lang/String;
    .restart local v3       #localizedName:Ljava/lang/String;
    .restart local v8       #resId:I
    .restart local v9       #resName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 366
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    sget-object v11, Lcom/android/stocksettings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v12, "Got execption while getting the localized apn name."

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 402
    .end local v2           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v3           #localizedName:Ljava/lang/String;
    .end local v8           #resId:I
    .local v0, authVal:Ljava/lang/String;
    .restart local v7       #pppNumber:Ljava/lang/String;
    :cond_9
    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    sget-object v12, Lcom/android/stocksettings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 708
    const/4 v1, 0x0

    .line 710
    .local v1, errorMsg:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/stocksettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/stocksettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 711
    .local v4, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/stocksettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/stocksettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, apn:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/stocksettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/stocksettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 713
    .local v2, mcc:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/stocksettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/stocksettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 715
    .local v3, mnc:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_1

    .line 716
    iget-object v5, p0, Lcom/android/stocksettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b0395

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 725
    :cond_0
    :goto_0
    return-object v1

    .line 717
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_2

    .line 718
    iget-object v5, p0, Lcom/android/stocksettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b0396

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 719
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 720
    iget-object v5, p0, Lcom/android/stocksettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b0397

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 721
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const v6, 0xfffe

    and-int/2addr v5, v6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 722
    iget-object v5, p0, Lcom/android/stocksettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b0398

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private isAPNNumericLoaded()Z
    .locals 3

    .prologue
    .line 807
    const-string v0, "gsm.apn.sim.operator.numeric"

    iget v1, p0, Lcom/android/stocksettings/ApnEditor;->mSubscription:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 810
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAirplaneOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 851
    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private mvnoDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "newValue"

    .prologue
    const/4 v5, 0x0

    .line 452
    iget-object v6, p0, Lcom/android/stocksettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v6, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 453
    .local v1, mvnoIndex:I
    iget-object v6, p0, Lcom/android/stocksettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, oldValue:Ljava/lang/String;
    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    .line 479
    :goto_0
    return-object v5

    .line 458
    :cond_0
    iget-object v6, p0, Lcom/android/stocksettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f070039

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 459
    .local v4, values:[Ljava/lang/String;
    aget-object v6, v4, v1

    const-string v7, "None"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 460
    iget-object v6, p0, Lcom/android/stocksettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 464
    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 465
    aget-object v6, v4, v1

    const-string v7, "SPN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 466
    iget-object v6, p0, Lcom/android/stocksettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/stocksettings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 477
    :cond_1
    :goto_2
    :try_start_0
    aget-object v5, v4, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 462
    :cond_2
    iget-object v6, p0, Lcom/android/stocksettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto :goto_1

    .line 467
    :cond_3
    aget-object v6, v4, v1

    const-string v7, "IMSI"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 468
    const-string v6, "gsm.sim.operator.numeric"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, numeric:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/stocksettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 471
    .end local v2           #numeric:Ljava/lang/String;
    :cond_4
    aget-object v6, v4, v1

    const-string v7, "GID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 472
    iget-object v6, p0, Lcom/android/stocksettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/stocksettings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto/16 :goto_0
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;
    .locals 6
    .parameter "raw"
    .parameter "protocol"

    .prologue
    const/4 v3, 0x0

    .line 424
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 425
    .local v1, protocolIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 432
    :goto_0
    return-object v3

    .line 428
    :cond_0
    iget-object v4, p0, Lcom/android/stocksettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f070035

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 430
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private setScreenEnabled()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 818
    invoke-direct {p0}, Lcom/android/stocksettings/ApnEditor;->isAPNNumericLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/stocksettings/ApnEditor;->isAirplaneOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/stocksettings/ApnEditor;->mDisableEditor:Z

    if-eqz v0, :cond_1

    .line 819
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 825
    :goto_0
    return-void

    .line 821
    :cond_1
    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 822
    iget-object v0, p0, Lcom/android/stocksettings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 823
    invoke-direct {p0}, Lcom/android/stocksettings/ApnEditor;->updateItemEnableState()V

    goto :goto_0
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 763
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 764
    :cond_0
    sget-object v2, Lcom/android/stocksettings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 770
    :goto_0
    return-object v2

    .line 766
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 767
    .local v1, password:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 768
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 767
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 770
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private updateItemEnableState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 828
    const-string v0, ""

    .line 829
    iget-boolean v1, p0, Lcom/android/stocksettings/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_2

    .line 830
    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "operator"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 836
    :cond_0
    :goto_0
    const-string v1, "persist.env.settings.cfgmmsapn"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "46003"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 839
    iget-object v0, p0, Lcom/android/stocksettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 840
    iget-object v0, p0, Lcom/android/stocksettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 841
    iget-object v0, p0, Lcom/android/stocksettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 843
    :cond_1
    iget-object v0, p0, Lcom/android/stocksettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 844
    return-void

    .line 832
    :cond_2
    iget-object v1, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 833
    iget-object v0, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 14
    .parameter "force"

    .prologue
    .line 611
    iget-object v10, p0, Lcom/android/stocksettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/stocksettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 612
    .local v6, name:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/stocksettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/stocksettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, apn:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/stocksettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/stocksettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 614
    .local v4, mcc:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/stocksettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/stocksettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 615
    .local v5, mnc:Ljava/lang/String;
    const/4 v3, 0x0

    .line 618
    .local v3, dataSub:I
    iget-boolean v10, p0, Lcom/android/stocksettings/ApnEditor;->mDisableEditor:Z

    if-eqz v10, :cond_0

    .line 619
    sget-object v10, Lcom/android/stocksettings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v11, "Form is disabled. Nothing to save."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v10, 0x1

    .line 704
    .end local v6           #name:Ljava/lang/String;
    :goto_0
    return v10

    .line 623
    .restart local v6       #name:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/stocksettings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    if-nez p1, :cond_1

    .line 624
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/stocksettings/ApnEditor;->showDialog(I)V

    .line 625
    const/4 v10, 0x0

    goto :goto_0

    .line 628
    :cond_1
    iget-object v10, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-nez v10, :cond_2

    .line 629
    sget-object v10, Lcom/android/stocksettings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v11, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v10, 0x0

    goto :goto_0

    .line 635
    :cond_2
    if-eqz p1, :cond_3

    iget-boolean v10, p0, Lcom/android/stocksettings/ApnEditor;->mNewApn:Z

    if-eqz v10, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ge v10, v11, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ge v10, v11, :cond_3

    .line 636
    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 637
    const/4 v10, 0x0

    goto :goto_0

    .line 640
    :cond_3
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 644
    .local v9, values:Landroid/content/ContentValues;
    const-string v10, "name"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v12, :cond_4

    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0625

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .end local v6           #name:Ljava/lang/String;
    :cond_4
    invoke-virtual {v9, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v10, "apn"

    invoke-virtual {v9, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v10, "proxy"

    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/stocksettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v10, "port"

    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/stocksettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v10, "mmsproxy"

    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/stocksettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v10, "mmsport"

    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/stocksettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string v10, "user"

    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/stocksettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v10, "server"

    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/stocksettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v10, "password"

    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/stocksettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v10, "mmsc"

    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/stocksettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v11, "carrier_enabled"

    iget-object v10, p0, Lcom/android/stocksettings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v10, 0x1

    :goto_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    iget-object v10, p0, Lcom/android/stocksettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, authVal:Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 659
    const-string v10, "authtype"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 662
    :cond_5
    const-string v10, "protocol"

    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/stocksettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const-string v10, "roaming_protocol"

    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/stocksettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v10, "type"

    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/stocksettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string v10, "mcc"

    invoke-virtual {v9, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v10, "mnc"

    invoke-virtual {v9, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v10, "numeric"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    iget-object v10, p0, Lcom/android/stocksettings/ApnEditor;->mPppNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    .line 673
    .local v7, pppNumber:Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 674
    const-string v10, "ppp_number"

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    :cond_6
    :try_start_0
    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "multi_sim_data_call"

    invoke-static {v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 687
    :cond_7
    :goto_2
    iget-object v10, p0, Lcom/android/stocksettings/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/stocksettings/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v10, :cond_8

    .line 688
    iget-object v10, p0, Lcom/android/stocksettings/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/stocksettings/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget v10, p0, Lcom/android/stocksettings/ApnEditor;->mSubscription:I

    if-ne v10, v3, :cond_8

    .line 690
    const-string v10, "current"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 694
    :cond_8
    iget-object v10, p0, Lcom/android/stocksettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 695
    .local v2, bearerVal:Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 696
    const-string v10, "bearer"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 699
    :cond_9
    const-string v10, "mvno_type"

    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/stocksettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const-string v10, "mvno_match_data"

    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/stocksettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/stocksettings/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v9, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 704
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 655
    .end local v1           #authVal:Ljava/lang/String;
    .end local v2           #bearerVal:Ljava/lang/String;
    .end local v7           #pppNumber:Ljava/lang/String;
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 680
    .restart local v1       #authVal:Ljava/lang/String;
    .restart local v7       #pppNumber:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 682
    .local v8, snfe:Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 683
    sget-object v10, Lcom/android/stocksettings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v11, "Exception Reading Multi Sim Data Subscription Value."

    invoke-static {v10, v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 184
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 186
    const v2, 0x7f050004

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/ApnEditor;->addPreferencesFromResource(I)V

    .line 188
    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b0374

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/stocksettings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 189
    const-string v2, "apn_name"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    .line 190
    const-string v2, "apn_apn"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    .line 191
    const-string v2, "apn_http_proxy"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    .line 192
    const-string v2, "apn_http_port"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    .line 193
    const-string v2, "apn_user"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    .line 194
    const-string v2, "apn_server"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    .line 195
    const-string v2, "apn_password"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    .line 196
    const-string v2, "apn_mms_proxy"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    .line 197
    const-string v2, "apn_mms_port"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    .line 198
    const-string v2, "apn_mmsc"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    .line 199
    const-string v2, "apn_mcc"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    .line 200
    const-string v2, "apn_mnc"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    .line 201
    const-string v2, "apn_type"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    .line 202
    const-string v2, "apn_ppp_number"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mPppNumber:Landroid/preference/EditTextPreference;

    .line 204
    const-string v2, "auth_type"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    .line 205
    iget-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 207
    const-string v2, "apn_protocol"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    .line 208
    iget-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 210
    const-string v2, "apn_roaming_protocol"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    .line 211
    iget-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 213
    const-string v2, "carrier_enabled"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    .line 215
    const-string v2, "bearer"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    .line 216
    iget-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 218
    const-string v2, "mvno_type"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    .line 219
    iget-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 220
    const-string v2, "mvno_match_data"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    .line 222
    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    .line 224
    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 225
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, action:Ljava/lang/String;
    const-string v2, "DISABLE_EDITOR"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/stocksettings/ApnEditor;->mDisableEditor:Z

    .line 227
    iget-boolean v2, p0, Lcom/android/stocksettings/ApnEditor;->mDisableEditor:Z

    if-eqz v2, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 229
    sget-object v2, Lcom/android/stocksettings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v5, "ApnEditor form is disabled."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    const-string v2, "subscription"

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v5

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/stocksettings/ApnEditor;->mSubscription:I

    .line 234
    sget-object v2, Lcom/android/stocksettings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ApnEditor onCreate received sub: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/stocksettings/ApnEditor;->mSubscription:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    if-nez p1, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/stocksettings/ApnEditor;->mFirstTime:Z

    .line 237
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 238
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 266
    :goto_1
    iget-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/stocksettings/ApnEditor;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v7, v7}, Lcom/android/stocksettings/ApnEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 267
    iget-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 269
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 271
    const-string v2, "operator"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/stocksettings/ApnEditor;->fillUi(Ljava/lang/String;)V

    .line 272
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 273
    iget-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    iget-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    :goto_2
    return-void

    :cond_1
    move v2, v4

    .line 235
    goto :goto_0

    .line 239
    :cond_2
    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 240
    iget-boolean v2, p0, Lcom/android/stocksettings/ApnEditor;->mFirstTime:Z

    if-nez v2, :cond_3

    const-string v2, "pos"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 241
    :cond_3
    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 246
    :goto_3
    iput-boolean v3, p0, Lcom/android/stocksettings/ApnEditor;->mNewApn:Z

    .line 250
    iget-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_5

    .line 251
    sget-object v2, Lcom/android/stocksettings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to insert new telephony provider into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->finish()V

    goto :goto_2

    .line 243
    :cond_4
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "pos"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_3

    .line 259
    :cond_5
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/android/stocksettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/stocksettings/ApnEditor;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 262
    :cond_6
    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->finish()V

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 731
    if-nez p1, :cond_0

    .line 732
    invoke-direct {p0}, Lcom/android/stocksettings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, msg:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0394

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 741
    .end local v0           #msg:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 531
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 532
    iget-boolean v0, p0, Lcom/android/stocksettings/ApnEditor;->mDisableEditor:Z

    if-eqz v0, :cond_0

    .line 533
    sget-object v0, Lcom/android/stocksettings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "Form is disabled. Do not create the options menu."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :goto_0
    return v3

    .line 537
    :cond_0
    iget-boolean v0, p0, Lcom/android/stocksettings/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_1

    .line 538
    const v0, 0x7f0b0390

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02005d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 541
    :cond_1
    const/4 v0, 0x2

    const v1, 0x7f0b0392

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 543
    const/4 v0, 0x3

    const v1, 0x7f0b0393

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 584
    packed-switch p1, :pswitch_data_0

    .line 592
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 586
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/stocksettings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->finish()V

    .line 589
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 584
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 563
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 579
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 565
    :pswitch_0
    invoke-direct {p0}, Lcom/android/stocksettings/ApnEditor;->deleteApn()V

    goto :goto_0

    .line 568
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/stocksettings/ApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->finish()V

    goto :goto_0

    .line 573
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/stocksettings/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_1

    .line 574
    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 576
    :cond_1
    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->finish()V

    goto :goto_0

    .line 563
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/stocksettings/ApnEditor;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/ApnEditor;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 291
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 292
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v8, 0x0

    .line 485
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 486
    .local v3, key:Ljava/lang/String;
    const-string v7, "auth_type"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 488
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 489
    .local v2, index:I
    iget-object v7, p0, Lcom/android/stocksettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 491
    iget-object v7, p0, Lcom/android/stocksettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f070033

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 492
    .local v6, values:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/stocksettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v9, v6, v2

    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    .end local v2           #index:I
    .end local v6           #values:[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v7, 0x1

    :goto_1
    return v7

    .line 493
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NumberFormatException;
    move v7, v8

    .line 494
    goto :goto_1

    .line 496
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_1
    const-string v7, "apn_protocol"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, p2

    .line 497
    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/stocksettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v9}, Lcom/android/stocksettings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v5

    .line 498
    .local v5, protocol:Ljava/lang/String;
    if-nez v5, :cond_2

    move v7, v8

    .line 499
    goto :goto_1

    .line 501
    :cond_2
    iget-object v7, p0, Lcom/android/stocksettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 502
    iget-object v7, p0, Lcom/android/stocksettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 503
    .end local v5           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_3
    const-string v7, "apn_roaming_protocol"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, p2

    .line 504
    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/stocksettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v9}, Lcom/android/stocksettings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v5

    .line 505
    .restart local v5       #protocol:Ljava/lang/String;
    if-nez v5, :cond_4

    move v7, v8

    .line 506
    goto :goto_1

    .line 508
    :cond_4
    iget-object v7, p0, Lcom/android/stocksettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 509
    iget-object v7, p0, Lcom/android/stocksettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 510
    .end local v5           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_5
    const-string v7, "bearer"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v7, p2

    .line 511
    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/stocksettings/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, bearer:Ljava/lang/String;
    if-nez v0, :cond_6

    move v7, v8

    .line 513
    goto :goto_1

    .line 515
    :cond_6
    iget-object v7, p0, Lcom/android/stocksettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 516
    iget-object v7, p0, Lcom/android/stocksettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 517
    .end local v0           #bearer:Ljava/lang/String;
    .restart local p2
    :cond_7
    const-string v7, "mvno_type"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, p2

    .line 518
    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/stocksettings/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 519
    .local v4, mvno:Ljava/lang/String;
    if-nez v4, :cond_8

    move v7, v8

    .line 520
    goto :goto_1

    .line 522
    :cond_8
    iget-object v7, p0, Lcom/android/stocksettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 523
    iget-object v7, p0, Lcom/android/stocksettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 746
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 748
    if-nez p1, :cond_0

    .line 749
    invoke-direct {p0}, Lcom/android/stocksettings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 751
    .local v0, msg:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 752
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 755
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/android/stocksettings/ApnEditor;->isAPNNumericLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/stocksettings/ApnEditor;->isAirplaneOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    :cond_0
    const/4 v0, 0x0

    .line 558
    :goto_0
    return v0

    .line 557
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 558
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 279
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 280
    invoke-direct {p0}, Lcom/android/stocksettings/ApnEditor;->setScreenEnabled()V

    .line 281
    iget-object v0, p0, Lcom/android/stocksettings/ApnEditor;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/stocksettings/ApnEditor;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/stocksettings/ApnEditor;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0}, Lcom/android/stocksettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 284
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 597
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 598
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/stocksettings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 600
    const-string v0, "pos"

    iget-object v1, p0, Lcom/android/stocksettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 602
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 791
    invoke-virtual {p0, p2}, Lcom/android/stocksettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 792
    if-eqz v0, :cond_0

    .line 793
    iget-object v1, p0, Lcom/android/stocksettings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 795
    :cond_1
    iget-object v1, p0, Lcom/android/stocksettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 796
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/stocksettings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 798
    :cond_2
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/stocksettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
