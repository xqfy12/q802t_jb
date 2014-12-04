.class public Lcom/android/stocksettings/IccLockSettings;
.super Landroid/preference/PreferenceActivity;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/stocksettings/EditPinPreference$OnPinEnteredListener;


# instance fields
.field private mDialogState:I

.field private mError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/stocksettings/EditPinPreference;

.field private mPinToggle:Landroid/preference/CheckBoxPreference;

.field private mRes:Landroid/content/res/Resources;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mToState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/stocksettings/IccLockSettings;->mDialogState:I

    .line 103
    new-instance v0, Lcom/android/stocksettings/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/IccLockSettings$1;-><init>(Lcom/android/stocksettings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/stocksettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v0, Lcom/android/stocksettings/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/IccLockSettings$2;-><init>(Lcom/android/stocksettings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/stocksettings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/stocksettings/IccLockSettings;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/stocksettings/IccLockSettings;->iccLockChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/stocksettings/IccLockSettings;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/stocksettings/IccLockSettings;->iccPinChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/stocksettings/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/stocksettings/IccLockSettings;->updatePreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/stocksettings/IccLockSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/stocksettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private displayRetryCounter(Ljava/lang/String;)V
    .locals 6
    .parameter "s"

    .prologue
    const/4 v5, 0x0

    .line 447
    iget-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v0

    .line 448
    .local v0, attempts:I
    if-ltz v0, :cond_0

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stocksettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b031a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, displayMsg:Ljava/lang/String;
    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 455
    .end local v1           #displayMsg:Ljava/lang/String;
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0315

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private handleException(Ljava/lang/Throwable;I)V
    .locals 4
    .parameter "exception"
    .parameter "requestType"

    .prologue
    const/4 v3, 0x0

    .line 377
    instance-of v2, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_3

    .line 378
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 379
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v2, :cond_2

    .line 381
    const/16 v2, 0x64

    if-ne p2, v2, :cond_1

    .line 382
    const v1, 0x7f0b0319

    .line 386
    .local v1, id:I
    :goto_0
    iget-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 393
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    .end local v1           #id:I
    :cond_0
    :goto_1
    return-void

    .line 384
    .restart local v0       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    const v1, 0x7f0b0318

    .restart local v1       #id:I
    goto :goto_0

    .line 388
    .end local v1           #id:I
    :cond_2
    iget-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0313

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/stocksettings/IccLockSettings;->displayRetryCounter(Ljava/lang/String;)V

    goto :goto_1

    .line 390
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    .restart local p1
    :cond_3
    instance-of v2, p1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 391
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private iccLockChanged(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    const/4 v2, 0x0

    .line 396
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 397
    iget-boolean v0, p0, Lcom/android/stocksettings/IccLockSettings;->mToState:Z

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/stocksettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b031b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 404
    :goto_0
    iget-object v0, p0, Lcom/android/stocksettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/stocksettings/IccLockSettings;->mToState:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 408
    :goto_1
    iget-object v0, p0, Lcom/android/stocksettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 409
    invoke-direct {p0}, Lcom/android/stocksettings/IccLockSettings;->resetDialogState()V

    .line 410
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b031c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 406
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/android/stocksettings/IccLockSettings;->handleException(Ljava/lang/Throwable;I)V

    goto :goto_1
.end method

.method private iccPinChanged(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 413
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/16 v1, 0x65

    invoke-direct {p0, v0, v1}, Lcom/android/stocksettings/IccLockSettings;->handleException(Ljava/lang/Throwable;I)V

    .line 421
    :goto_0
    invoke-direct {p0}, Lcom/android/stocksettings/IccLockSettings;->resetDialogState()V

    .line 422
    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0314

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2
    .parameter "pin"

    .prologue
    .line 431
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 432
    :cond_0
    const/4 v0, 0x0

    .line 434
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetDialogState()V
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stocksettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 440
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/stocksettings/IccLockSettings;->mDialogState:I

    .line 441
    const-string v0, ""

    iput-object v0, p0, Lcom/android/stocksettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 442
    invoke-direct {p0}, Lcom/android/stocksettings/IccLockSettings;->setDialogValues()V

    .line 443
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/stocksettings/IccLockSettings;->mDialogState:I

    .line 444
    return-void
.end method

.method private setDialogValues()V
    .locals 4

    .prologue
    const v3, 0x7f0b030f

    .line 275
    iget-object v1, p0, Lcom/android/stocksettings/IccLockSettings;->mPinDialog:Lcom/android/stocksettings/EditPinPreference;

    iget-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/stocksettings/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 276
    const-string v0, ""

    .line 277
    .local v0, message:Ljava/lang/String;
    iget v1, p0, Lcom/android/stocksettings/IccLockSettings;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    .line 297
    :goto_0
    iget-object v1, p0, Lcom/android/stocksettings/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/stocksettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/android/stocksettings/IccLockSettings;->mPinDialog:Lcom/android/stocksettings/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/stocksettings/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 302
    return-void

    .line 279
    :pswitch_0
    iget-object v1, p0, Lcom/android/stocksettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b0309

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    iget-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mPinDialog:Lcom/android/stocksettings/EditPinPreference;

    iget-boolean v1, p0, Lcom/android/stocksettings/IccLockSettings;->mToState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/stocksettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b030a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/stocksettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/stocksettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b030b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 285
    :pswitch_1
    iget-object v1, p0, Lcom/android/stocksettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b030c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/android/stocksettings/IccLockSettings;->mPinDialog:Lcom/android/stocksettings/EditPinPreference;

    iget-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/stocksettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 289
    :pswitch_2
    iget-object v1, p0, Lcom/android/stocksettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b030d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/android/stocksettings/IccLockSettings;->mPinDialog:Lcom/android/stocksettings/EditPinPreference;

    iget-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/stocksettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 293
    :pswitch_3
    iget-object v1, p0, Lcom/android/stocksettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b030e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/android/stocksettings/IccLockSettings;->mPinDialog:Lcom/android/stocksettings/EditPinPreference;

    iget-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/stocksettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPinDialog()V
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/android/stocksettings/IccLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-direct {p0}, Lcom/android/stocksettings/IccLockSettings;->setDialogValues()V

    .line 271
    iget-object v0, p0, Lcom/android/stocksettings/IccLockSettings;->mPinDialog:Lcom/android/stocksettings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/stocksettings/EditPinPreference;->showPinDialog()V

    goto :goto_0
.end method

.method private tryChangeIccLockState()V
    .locals 4

    .prologue
    .line 366
    iget-object v1, p0, Lcom/android/stocksettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 367
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/stocksettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/stocksettings/IccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/stocksettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 369
    iget-object v1, p0, Lcom/android/stocksettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 370
    return-void
.end method

.method private tryChangePin()V
    .locals 4

    .prologue
    .line 425
    iget-object v1, p0, Lcom/android/stocksettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 426
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/stocksettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/stocksettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 428
    return-void
.end method

.method private updatePreferences()V
    .locals 6

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/stocksettings/IccLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 198
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "subscription"

    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getDefaultSubscription()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 200
    .local v3, subscription:I
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v2

    .line 201
    .local v2, simState:I
    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    const/4 v1, 0x1

    .line 202
    .local v1, isReady:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/stocksettings/IccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 203
    if-eqz v1, :cond_0

    .line 204
    iget-object v4, p0, Lcom/android/stocksettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/stocksettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 206
    :cond_0
    return-void

    .line 201
    .end local v1           #isReady:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-static {}, Lcom/android/stocksettings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/stocksettings/IccLockSettings;->finish()V

    .line 194
    :goto_0
    return-void

    .line 154
    :cond_0
    const v2, 0x7f050034

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/IccLockSettings;->addPreferencesFromResource(I)V

    .line 156
    const-string v2, "sim_pin"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/stocksettings/EditPinPreference;

    iput-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mPinDialog:Lcom/android/stocksettings/EditPinPreference;

    .line 157
    const-string v2, "sim_toggle"

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    .line 158
    if-eqz p1, :cond_1

    const-string v2, "dialogState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    const-string v2, "dialogState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/stocksettings/IccLockSettings;->mDialogState:I

    .line 160
    const-string v2, "dialogPin"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 161
    const-string v2, "dialogError"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 162
    const-string v2, "enableState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/stocksettings/IccLockSettings;->mToState:Z

    .line 165
    iget v2, p0, Lcom/android/stocksettings/IccLockSettings;->mDialogState:I

    packed-switch v2, :pswitch_data_0

    .line 182
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mPinDialog:Lcom/android/stocksettings/EditPinPreference;

    invoke-virtual {v2, p0}, Lcom/android/stocksettings/EditPinPreference;->setOnPinEnteredListener(Lcom/android/stocksettings/EditPinPreference$OnPinEnteredListener;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/stocksettings/IccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 187
    invoke-virtual {p0}, Lcom/android/stocksettings/IccLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 188
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "subscription"

    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getDefaultSubscription()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 191
    .local v1, subscription:I
    invoke-static {v1}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 192
    invoke-virtual {p0}, Lcom/android/stocksettings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 193
    invoke-direct {p0}, Lcom/android/stocksettings/IccLockSettings;->updatePreferences()V

    goto :goto_0

    .line 167
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #subscription:I
    :pswitch_0
    const-string v2, "oldPinCode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    goto :goto_1

    .line 171
    :pswitch_1
    const-string v2, "oldPinCode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 172
    const-string v2, "newPinCode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    goto :goto_1

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 228
    iget-object v0, p0, Lcom/android/stocksettings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/IccLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 229
    return-void
.end method

.method public onPinEntered(Lcom/android/stocksettings/EditPinPreference;Z)V
    .locals 4
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 305
    if-nez p2, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/android/stocksettings/IccLockSettings;->resetDialogState()V

    .line 346
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-virtual {p1}, Lcom/android/stocksettings/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/android/stocksettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/stocksettings/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/android/stocksettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0310

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 314
    invoke-direct {p0}, Lcom/android/stocksettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 317
    :cond_1
    iget v0, p0, Lcom/android/stocksettings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 319
    :pswitch_0
    invoke-direct {p0}, Lcom/android/stocksettings/IccLockSettings;->tryChangeIccLockState()V

    goto :goto_0

    .line 322
    :pswitch_1
    iget-object v0, p0, Lcom/android/stocksettings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/stocksettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 323
    iput v3, p0, Lcom/android/stocksettings/IccLockSettings;->mDialogState:I

    .line 324
    iput-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 325
    iput-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 326
    invoke-direct {p0}, Lcom/android/stocksettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 329
    :pswitch_2
    iget-object v0, p0, Lcom/android/stocksettings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/stocksettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 330
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/stocksettings/IccLockSettings;->mDialogState:I

    .line 331
    iput-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 332
    invoke-direct {p0}, Lcom/android/stocksettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 335
    :pswitch_3
    iget-object v0, p0, Lcom/android/stocksettings/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/stocksettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/android/stocksettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0311

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 337
    iput v3, p0, Lcom/android/stocksettings/IccLockSettings;->mDialogState:I

    .line 338
    iput-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 339
    invoke-direct {p0}, Lcom/android/stocksettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 341
    :cond_2
    iput-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 342
    invoke-direct {p0}, Lcom/android/stocksettings/IccLockSettings;->tryChangePin()V

    goto :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 349
    iget-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 351
    iget-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/stocksettings/IccLockSettings;->mToState:Z

    .line 353
    iget-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/stocksettings/IccLockSettings;->mToState:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 354
    iput v1, p0, Lcom/android/stocksettings/IccLockSettings;->mDialogState:I

    .line 355
    invoke-direct {p0}, Lcom/android/stocksettings/IccLockSettings;->showPinDialog()V

    :cond_1
    move v0, v1

    .line 360
    :goto_0
    return v0

    .line 356
    :cond_2
    iget-object v2, p0, Lcom/android/stocksettings/IccLockSettings;->mPinDialog:Lcom/android/stocksettings/EditPinPreference;

    if-ne p2, v2, :cond_1

    .line 357
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/stocksettings/IccLockSettings;->mDialogState:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 210
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 214
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/stocksettings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/stocksettings/IccLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 217
    iget v1, p0, Lcom/android/stocksettings/IccLockSettings;->mDialogState:I

    if-eqz v1, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/android/stocksettings/IccLockSettings;->showPinDialog()V

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/android/stocksettings/IccLockSettings;->resetDialogState()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/stocksettings/IccLockSettings;->mPinDialog:Lcom/android/stocksettings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/stocksettings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/stocksettings/IccLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 240
    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/android/stocksettings/IccLockSettings;->mPinDialog:Lcom/android/stocksettings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/stocksettings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/stocksettings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/android/stocksettings/IccLockSettings;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 245
    iget v0, p0, Lcom/android/stocksettings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 263
    :goto_0
    return-void

    .line 247
    :pswitch_0
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/stocksettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :pswitch_1
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/stocksettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v0, "newPinCode"

    iget-object v1, p0, Lcom/android/stocksettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
