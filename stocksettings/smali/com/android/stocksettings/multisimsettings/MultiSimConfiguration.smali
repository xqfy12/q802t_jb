.class public Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;
.super Landroid/preference/PreferenceActivity;
.source "MultiSimConfiguration.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$NamePreferenceClickListener;,
        Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener;
    }
.end annotation


# instance fields
.field private mCallSetting:Landroid/preference/PreferenceScreen;

.field private mChangeCount:I

.field private mChangeStartPos:I

.field private mIconPreference:Lcom/android/stocksettings/multisimsettings/ImageListPreference;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNamePreference:Landroid/preference/EditTextPreference;

.field private mNetServiceProvider:Landroid/preference/PreferenceScreen;

.field private mNetworkSetting:Landroid/preference/PreferenceScreen;

.field private mPrefScreen:Landroid/preference/PreferenceScreen;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscription:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mIntentFilter:Landroid/content/IntentFilter;

    .line 100
    new-instance v0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$1;-><init>(Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;)V

    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->setScreenState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mSubscription:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mNamePreference:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->getMultiSimName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;)Lcom/android/stocksettings/multisimsettings/ImageListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mIconPreference:Lcom/android/stocksettings/multisimsettings/ImageListPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->setMultiSimIconIndex(ILjava/lang/String;)V

    return-void
.end method

.method private getCharacterVisualLength(Ljava/lang/String;I)I
    .locals 2
    .parameter "seq"
    .parameter "index"

    .prologue
    .line 407
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 408
    .local v0, cp:I
    if-ltz v0, :cond_0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 409
    const/4 v1, 0x1

    .line 411
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private getMultiSimIconIndex(I)I
    .locals 5
    .parameter "subscription"

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_sim_icon_index"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, simIconIndex:Ljava/lang/String;
    const-string v2, "MultiSimConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simIconIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 258
    .restart local p1
    :cond_1
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, indexs:[Ljava/lang/String;
    array-length v2, v0

    if-ge p1, v2, :cond_0

    .line 262
    aget-object v2, v0, p1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0
.end method

.method private getMultiSimName(I)Ljava/lang/String;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 327
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b073a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->MULTI_SIM_NAME:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 312
    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSubActivated()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 307
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mSubscription:I

    invoke-virtual {v1, v2}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private limitTextSize(Ljava/lang/String;)V
    .locals 12
    .parameter "s"

    .prologue
    .line 360
    iget-object v10, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mNamePreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    .line 362
    .local v3, et:Landroid/widget/EditText;
    if-eqz v3, :cond_4

    .line 363
    const/4 v9, 0x0

    .line 364
    .local v9, wholeLen:I
    const/4 v6, 0x0

    .line 366
    .local v6, i:I
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v6, v10, :cond_0

    .line 367
    invoke-direct {p0, p1, v6}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->getCharacterVisualLength(Ljava/lang/String;I)I

    move-result v10

    add-int/2addr v9, v10

    .line 366
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 371
    :cond_0
    const/4 v10, 0x6

    if-le v9, v10, :cond_4

    .line 372
    add-int/lit8 v2, v9, -0x6

    .line 374
    .local v2, cutNum:I
    iget v10, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mChangeStartPos:I

    iget v11, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mChangeCount:I

    add-int/2addr v10, v11

    add-int/lit8 v0, v10, -0x1

    .line 375
    .local v0, changeEndPos:I
    const/4 v1, 0x0

    .line 376
    .local v1, cutLen:I
    move v6, v0

    :goto_1
    if-ltz v6, :cond_1

    .line 377
    invoke-direct {p0, p1, v6}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->getCharacterVisualLength(Ljava/lang/String;I)I

    move-result v10

    add-int/2addr v1, v10

    .line 378
    if-lt v1, v2, :cond_5

    .line 383
    :cond_1
    move v5, v6

    .line 385
    .local v5, headStrEndPos:I
    const-string v4, ""

    .line 387
    .local v4, headStr:Ljava/lang/String;
    const-string v7, ""

    .line 388
    .local v7, rearStr:Ljava/lang/String;
    if-lez v5, :cond_2

    .line 390
    const/4 v10, 0x0

    invoke-virtual {p1, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 392
    :cond_2
    iget v10, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mChangeStartPos:I

    iget v11, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mChangeCount:I

    add-int v8, v10, v11

    .line 393
    .local v8, rearStrStartPos:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_3

    .line 395
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 398
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 400
    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 403
    .end local v0           #changeEndPos:I
    .end local v1           #cutLen:I
    .end local v2           #cutNum:I
    .end local v4           #headStr:Ljava/lang/String;
    .end local v5           #headStrEndPos:I
    .end local v6           #i:I
    .end local v7           #rearStr:Ljava/lang/String;
    .end local v8           #rearStrStartPos:I
    .end local v9           #wholeLen:I
    :cond_4
    return-void

    .line 376
    .restart local v0       #changeEndPos:I
    .restart local v1       #cutLen:I
    .restart local v2       #cutNum:I
    .restart local v6       #i:I
    .restart local v9       #wholeLen:I
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 416
    const-string v0, "MultiSimConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MultiSimConfiguration("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-void
.end method

.method private setMultiSimIconIndex(ILjava/lang/String;)V
    .locals 6
    .parameter "subscription"
    .parameter "newIndex"

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_sim_icon_index"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, simIconIndex:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, indexs:[Ljava/lang/String;
    array-length v3, v0

    if-ge p1, v3, :cond_0

    .line 278
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 279
    .local v1, sb:Ljava/lang/StringBuffer;
    mul-int/lit8 v3, p1, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 280
    mul-int/lit8 v3, p1, 0x2

    invoke-virtual {v1, v3, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    const-string v3, "MultiSimConfiguration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newStringIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_sim_icon_index"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private setScreenState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 316
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mNetworkSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 318
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mCallSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 323
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mNetworkSetting:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->isSubActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 321
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mCallSetting:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->isSubActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 336
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->limitTextSize(Ljava/lang/String;)V

    .line 337
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mNamePreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 338
    .local v0, d:Landroid/app/Dialog;
    instance-of v1, v0, Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 341
    check-cast v0, Landroid/app/AlertDialog;

    .end local v0           #d:Landroid/app/Dialog;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const-string v1, ""

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 344
    :cond_0
    return-void

    .line 341
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 349
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 174
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 175
    const v8, 0x7f05001d

    invoke-virtual {p0, v8}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->addPreferencesFromResource(I)V

    .line 177
    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iput-object v8, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 179
    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 180
    .local v5, intent:Landroid/content/Intent;
    const-string v8, "subscription"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mSubscription:I

    .line 182
    iget-object v8, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v10, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v8, v10}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    const-string v8, "sim_name_key"

    invoke-virtual {p0, v8}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mNamePreference:Landroid/preference/EditTextPreference;

    .line 185
    iget-object v8, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mNamePreference:Landroid/preference/EditTextPreference;

    const v10, 0x7f0b07bf

    invoke-virtual {v8, v10}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 186
    iget-object v8, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mNamePreference:Landroid/preference/EditTextPreference;

    iget v10, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mSubscription:I

    invoke-direct {p0, v10}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->getMultiSimName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v8, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mNamePreference:Landroid/preference/EditTextPreference;

    new-instance v10, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener;

    invoke-direct {v10, p0, v11}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener;-><init>(Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$1;)V

    invoke-virtual {v8, v10}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 188
    iget-object v8, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mNamePreference:Landroid/preference/EditTextPreference;

    new-instance v10, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$NamePreferenceClickListener;

    invoke-direct {v10, p0, v11}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$NamePreferenceClickListener;-><init>(Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$1;)V

    invoke-virtual {v8, v10}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 189
    iget-object v8, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mNamePreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 190
    .local v2, et:Landroid/widget/EditText;
    if-eqz v2, :cond_0

    .line 191
    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 192
    iget-object v8, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mNamePreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 193
    .local v1, d:Landroid/app/Dialog;
    instance-of v8, v1, Landroid/app/AlertDialog;

    if-eqz v8, :cond_0

    .line 194
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #d:Landroid/app/Dialog;
    const/4 v8, -0x1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 197
    .local v0, b:Landroid/widget/Button;
    const-string v8, ""

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v8

    if-lez v8, :cond_1

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 203
    .end local v0           #b:Landroid/widget/Button;
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070065

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 204
    .local v4, icons:Landroid/content/res/TypedArray;
    const-string v8, "sim_icon_key"

    invoke-virtual {p0, v8}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/stocksettings/multisimsettings/ImageListPreference;

    iput-object v8, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mIconPreference:Lcom/android/stocksettings/multisimsettings/ImageListPreference;

    .line 205
    iget-object v8, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mIconPreference:Lcom/android/stocksettings/multisimsettings/ImageListPreference;

    const v9, 0x7f0b079a

    invoke-virtual {v8, v9}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->setTitle(I)V

    .line 206
    iget v8, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mSubscription:I

    invoke-direct {p0, v8}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->getMultiSimIconIndex(I)I

    move-result v3

    .line 207
    .local v3, iconIndex:I
    const-string v8, "MultiSimConfiguration"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "iconIndex="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v8, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mIconPreference:Lcom/android/stocksettings/multisimsettings/ImageListPreference;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 209
    iget-object v8, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mIconPreference:Lcom/android/stocksettings/multisimsettings/ImageListPreference;

    invoke-virtual {v8, v4}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->setIconEntries(Landroid/content/res/TypedArray;)V

    .line 210
    iget-object v8, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mIconPreference:Lcom/android/stocksettings/multisimsettings/ImageListPreference;

    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->setSimIcon(Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object v8, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mIconPreference:Lcom/android/stocksettings/multisimsettings/ImageListPreference;

    new-instance v9, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$2;

    invoke-direct {v9, p0, v4}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$2;-><init>(Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;Landroid/content/res/TypedArray;)V

    invoke-virtual {v8, v9}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 222
    const-string v8, "mobile_network_key"

    invoke-virtual {p0, v8}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mNetworkSetting:Landroid/preference/PreferenceScreen;

    .line 223
    iget-object v8, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mNetworkSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "PACKAGE"

    const-string v10, "com.android.phone"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "TARGET_CLASS"

    const-string v10, "com.android.phone.MSimMobileNetworkSubSettings"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "subscription"

    iget v10, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mSubscription:I

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    const-string v8, "call_setting_key"

    invoke-virtual {p0, v8}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mCallSetting:Landroid/preference/PreferenceScreen;

    .line 230
    iget-object v8, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mCallSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "PACKAGE"

    const-string v10, "com.android.phone"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "TARGET_CLASS"

    const-string v10, "com.android.phone.MSimCallFeaturesSubSetting"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "subscription"

    iget v10, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mSubscription:I

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "Title"

    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b079d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object v8, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string v8, "net_service_provider_key"

    invoke-virtual {p0, v8}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mNetServiceProvider:Landroid/preference/PreferenceScreen;

    .line 242
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v8

    iget v9, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mSubscription:I

    invoke-virtual {v8, v9}, Landroid/telephony/MSimTelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v6

    .line 244
    .local v6, netOperatorName:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v8

    iget v9, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mSubscription:I

    invoke-virtual {v8, v9}, Landroid/telephony/MSimTelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v7

    .line 246
    .local v7, netTypeName:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mNetServiceProvider:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v8, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mNetServiceProvider:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v7}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 248
    return-void

    .end local v3           #iconIndex:I
    .end local v4           #icons:Landroid/content/res/TypedArray;
    .end local v6           #netOperatorName:Ljava/lang/String;
    .end local v7           #netTypeName:Ljava/lang/String;
    .restart local v0       #b:Landroid/widget/Button;
    :cond_1
    move v8, v9

    .line 197
    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 301
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 302
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 303
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 288
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 289
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->setScreenState()V

    .line 293
    iget v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mSubscription:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->getMultiSimIconIndex(I)I

    move-result v0

    .line 294
    .local v0, otherSlotIconIndex:I
    const-string v1, "MultiSimConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "otherSlotIconIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mIconPreference:Lcom/android/stocksettings/multisimsettings/ImageListPreference;

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mIconPreference:Lcom/android/stocksettings/multisimsettings/ImageListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->setOtherSlotValue(Ljava/lang/Object;)V

    .line 298
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 354
    iput p2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mChangeStartPos:I

    .line 356
    iput p4, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mChangeCount:I

    .line 357
    return-void
.end method
