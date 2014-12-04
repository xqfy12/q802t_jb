.class public Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;
.super Landroid/preference/Preference;
.source "MultiSimEnablerPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static mActiveSubId:I

.field private static mCurrentStatus:Z

.field private static mCurrentStr:Ljava/lang/String;

.field private static mHasDisableOneSimCard:Z

.field private static mIsShowAlertDialog:Z

.field public static mIsShowDialog:Z

.field private static mSyncLock:Ljava/lang/Object;


# instance fields
.field private final INTENT_SIM_DISABLED:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mActivateSub:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDialogString:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsShowingProgressDialog:Z

.field private mParentHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequest:Z

.field private mShowAlertDialog:Z

.field private mState:Z

.field private mSubSummary:Landroid/widget/TextView;

.field private mSubTitle:Landroid/widget/TextView;

.field private mSubscription:Lcom/codeaurora/telephony/msim/Subscription;

.field private mSubscriptionId:I

.field private mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

.field private mSummary:Ljava/lang/String;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 121
    sput-boolean v0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mIsShowAlertDialog:Z

    .line 122
    sput-boolean v0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mIsShowDialog:Z

    .line 123
    const/4 v0, -0x1

    sput v0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mActiveSubId:I

    .line 124
    const-string v0, ""

    sput-object v0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mCurrentStr:Ljava/lang/String;

    .line 125
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mCurrentStatus:Z

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSyncLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 288
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 283
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 284
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 277
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    const-string v0, "MultiSimEnablerPreference"

    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->TAG:Ljava/lang/String;

    .line 84
    const-string v0, "com.android.sim.INTENT_SIM_DISABLED"

    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->INTENT_SIM_DISABLED:Ljava/lang/String;

    .line 107
    iput-boolean v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mShowAlertDialog:Z

    .line 108
    new-instance v0, Lcom/codeaurora/telephony/msim/Subscription;

    invoke-direct {v0}, Lcom/codeaurora/telephony/msim/Subscription;-><init>()V

    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscription:Lcom/codeaurora/telephony/msim/Subscription;

    .line 113
    iput-boolean v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mIsShowingProgressDialog:Z

    .line 114
    iput-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mDialogString:Ljava/lang/String;

    .line 116
    iput v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSwitchVisibility:I

    .line 118
    iput-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    .line 119
    iput-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mAlertDialog:Landroid/app/AlertDialog;

    .line 130
    new-instance v0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference$1;-><init>(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mHandler:Landroid/os/Handler;

    .line 182
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mIntentFilter:Landroid/content/IntentFilter;

    .line 185
    new-instance v0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference$2;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference$2;-><init>(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 544
    new-instance v0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference$3;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference$3;-><init>(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 561
    new-instance v0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference$4;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference$4;-><init>(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;)V

    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 278
    iput-object p1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    .line 279
    invoke-static {}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    .line 280
    return-void
.end method

.method static synthetic access$002(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mIsShowingProgressDialog:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mRequest:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->sendCommand(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->setChecked(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    sput-boolean p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mHasDisableOneSimCard:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;)Lcom/codeaurora/telephony/msim/SubscriptionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->displayAlertDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mShowAlertDialog:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mActivateSub:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mDialogString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mDialogString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->handleSetSubscriptionDone()V

    return-void
.end method

.method private disableOrEnableSIMcard()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 479
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    const-string v1, "airplane is on, show error!"

    invoke-direct {p0, v1}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 482
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0b07b3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->showAlertDialogWithMessage(Ljava/lang/String;)V

    .line 523
    :goto_0
    return-void

    .line 486
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 487
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/MSimTelephonyManager;->getCallState(I)I

    move-result v1

    if-eqz v1, :cond_3

    .line 491
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/telephony/MSimTelephonyManager;->getCallState(I)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/telephony/MSimTelephonyManager;->getCallState(I)I

    move-result v1

    if-nez v1, :cond_2

    .line 503
    :cond_1
    iget-boolean v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mRequest:Z

    if-nez v1, :cond_5

    .line 504
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v1}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getActiveSubscriptionsCount()I

    move-result v1

    if-le v1, v3, :cond_4

    .line 506
    const-string v1, "disable, both are active,can do"

    invoke-direct {p0, v1}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 507
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->displayConfirmDialog()V

    goto :goto_0

    .line 497
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not idle, show error!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 498
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0b07b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->showAlertDialogWithMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 486
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 510
    :cond_4
    const-string v1, "only one is active,can not do"

    invoke-direct {p0, v1}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 511
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0b07b5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->showAlertDialogWithMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 516
    :cond_5
    const-string v1, "enable, do it"

    invoke-direct {p0, v1}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 517
    iput-boolean v3, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mShowAlertDialog:Z

    .line 518
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 519
    iput-boolean v3, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mActivateSub:Z

    .line 520
    iget-boolean v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mRequest:Z

    invoke-direct {p0, v1}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->sendCommand(Z)V

    goto/16 :goto_0
.end method

.method private displayAlertDialog()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 234
    const-string v3, "displayAlertDialog"

    invoke-direct {p0, v3}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 236
    iget-object v3, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    if-nez v3, :cond_1

    .line 237
    const/4 v2, 0x0

    .line 248
    :cond_0
    :goto_0
    return v2

    .line 239
    :cond_1
    iget-object v3, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 240
    .local v1, message:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 241
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "needDismiss"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 242
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 243
    iget-object v3, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 245
    iget-object v3, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mDialogString:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 246
    iget-object v3, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mDialogString:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->resultToMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->showAlertDialogWithMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private displayConfirmDialog()V
    .locals 4

    .prologue
    .line 526
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0b07b2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 530
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mAlertDialog:Landroid/app/AlertDialog;

    .line 532
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    iget-object v3, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    iget-object v3, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mAlertDialog:Landroid/app/AlertDialog;

    .line 539
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 540
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 542
    return-void
.end method

.method private handleSetSubscriptionDone()V
    .locals 3

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->updateSummary()V

    .line 224
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscription:Lcom/codeaurora/telephony/msim/Subscription;

    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    iget v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionId:I

    invoke-virtual {v1, v2}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/codeaurora/telephony/msim/Subscription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codeaurora/telephony/msim/Subscription;->copyFrom(Lcom/codeaurora/telephony/msim/Subscription;)Lcom/codeaurora/telephony/msim/Subscription;

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetSubscriptionDone mActivateSub = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mActivateSub:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mShowAlertDialog = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mShowAlertDialog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 227
    iget-boolean v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mActivateSub:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mShowAlertDialog:Z

    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->displayAlertDialog()Z

    .line 230
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mShowAlertDialog:Z

    .line 231
    return-void
.end method

.method private hasCard()Z
    .locals 2

    .prologue
    .line 212
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionId:I

    invoke-virtual {v0, v1}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 216
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-void
.end method

.method private resultToMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "result"

    .prologue
    const v1, 0x7f0b07be

    .line 252
    const-string v0, "ACTIVATE SUCCESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f0b07b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    :goto_0
    return-object v0

    .line 255
    :cond_0
    const-string v0, "ACTIVATE FAILED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f0b07b9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 258
    :cond_1
    const-string v0, "DEACTIVATE SUCCESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f0b07ba

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 261
    :cond_2
    const-string v0, "DEACTIVATE FAILED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 262
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f0b07bb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 264
    :cond_3
    const-string v0, "DEACTIVATE NOT SUPPORTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 265
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f0b07bc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 267
    :cond_4
    const-string v0, "ACTIVATE NOT SUPPORTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 268
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f0b07bd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 270
    :cond_5
    const-string v0, "NO CHANGE IN SUBSCRIPTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 271
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 273
    :cond_6
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private sendCommand(Z)V
    .locals 10
    .parameter "enabled"

    .prologue
    const/4 v9, 0x0

    const v7, 0x1869f

    .line 381
    iget-object v5, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    if-nez v5, :cond_0

    .line 414
    :goto_0
    return-void

    .line 384
    :cond_0
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mIsShowDialog:Z

    .line 385
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v1

    .line 386
    .local v1, count:I
    new-instance v4, Lcom/codeaurora/telephony/msim/SubscriptionData;

    invoke-direct {v4, v1}, Lcom/codeaurora/telephony/msim/SubscriptionData;-><init>(I)V

    .line 387
    .local v4, subData:Lcom/codeaurora/telephony/msim/SubscriptionData;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 388
    iget-object v5, v4, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v6, v2}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/codeaurora/telephony/msim/Subscription;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/codeaurora/telephony/msim/Subscription;->copyFrom(Lcom/codeaurora/telephony/msim/Subscription;)Lcom/codeaurora/telephony/msim/Subscription;

    .line 387
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 390
    :cond_1
    if-eqz p1, :cond_2

    .line 392
    iget-object v5, v4, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    iget v6, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionId:I

    iget-object v7, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    iget v8, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionId:I

    invoke-virtual {v7, v8}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->setDefaultApp(I)Lcom/codeaurora/telephony/msim/Subscription;

    move-result-object v7

    aput-object v7, v5, v6

    .line 394
    iget-object v5, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    iget v6, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionId:I

    iget-object v7, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->registerForSubscriptionActivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 406
    :goto_2
    iget-object v5, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 407
    .local v3, message:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 408
    .local v0, b:Landroid/os/Bundle;
    const-string v5, "mSubId"

    iget v6, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionId:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 409
    const-string v5, "mEnabled"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 410
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 411
    iget-object v5, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 413
    iget-object v5, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v5, v4}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->setSubscription(Lcom/codeaurora/telephony/msim/SubscriptionData;)Z

    goto :goto_0

    .line 397
    .end local v0           #b:Landroid/os/Bundle;
    .end local v3           #message:Landroid/os/Message;
    :cond_2
    iget-object v5, v4, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    iget v6, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionId:I

    aget-object v5, v5, v6

    iput v7, v5, Lcom/codeaurora/telephony/msim/Subscription;->slotId:I

    .line 398
    iget-object v5, v4, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    iget v6, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionId:I

    aget-object v5, v5, v6

    iput v7, v5, Lcom/codeaurora/telephony/msim/Subscription;->m3gppIndex:I

    .line 399
    iget-object v5, v4, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    iget v6, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionId:I

    aget-object v5, v5, v6

    iput v7, v5, Lcom/codeaurora/telephony/msim/Subscription;->m3gpp2Index:I

    .line 400
    iget-object v5, v4, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    iget v6, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionId:I

    aget-object v5, v5, v6

    iget v6, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionId:I

    iput v6, v5, Lcom/codeaurora/telephony/msim/Subscription;->subId:I

    .line 401
    iget-object v5, v4, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    iget v6, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionId:I

    aget-object v5, v5, v6

    sget-object v6, Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v6, v5, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    .line 402
    iget-object v5, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    iget v6, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionId:I

    iget-object v7, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->registerForSubscriptionDeactivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_2
.end method

.method private setChecked(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 369
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 370
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 372
    :cond_0
    return-void
.end method

.method private setScreenState()V
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->setEnabled(Z)V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->hasCard()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showAlertDialogWithMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 570
    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 580
    :goto_0
    return-void

    .line 573
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mIsShowDialog:Z

    .line 574
    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 575
    .local v1, message:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 576
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "mSubId"

    iget v3, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 577
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 579
    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updateSummary()V
    .locals 7

    .prologue
    const v6, 0x7f0b07ad

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 417
    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 418
    .local v1, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    iget v3, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionId:I

    invoke-virtual {v2, v3}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->isSubActive(I)Z

    move-result v0

    .line 422
    .local v0, isActivated:Z
    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 423
    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    sput-boolean v2, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mIsShowAlertDialog:Z

    .line 425
    :cond_0
    sget v2, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mActiveSubId:I

    iget v3, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionId:I

    if-ne v2, v3, :cond_3

    sget-boolean v2, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mIsShowAlertDialog:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mIsShowDialog:Z

    if-eqz v2, :cond_3

    .line 427
    :cond_1
    sget-object v2, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mCurrentStr:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSummary:Ljava/lang/String;

    .line 428
    sget-boolean v2, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mCurrentStatus:Z

    iput-boolean v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mState:Z

    .line 442
    :goto_0
    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubSummary:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 443
    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    :cond_2
    iget-boolean v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mState:Z

    invoke-direct {p0, v2}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->setChecked(Z)V

    .line 447
    return-void

    .line 430
    :cond_3
    if-eqz v0, :cond_4

    .line 431
    iput-boolean v4, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mState:Z

    .line 432
    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    new-array v3, v4, [Ljava/lang/Object;

    const v4, 0x7f0b07ae

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSummary:Ljava/lang/String;

    goto :goto_0

    .line 435
    :cond_4
    iput-boolean v5, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mState:Z

    .line 436
    iget-object v3, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->hasCard()Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f0b07af

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {v3, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSummary:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const v2, 0x7f0b07b0

    goto :goto_1
.end method

.method private updateTitle()V
    .locals 5

    .prologue
    .line 340
    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    iget v3, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionId:I

    invoke-virtual {v2, v3}, Landroid/telephony/MSimTelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, alpha:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->MULTI_SIM_NAME:[Ljava/lang/String;

    iget v4, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionId:I

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, slotInfoStr:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 292
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 293
    const v1, 0x7f080043

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubTitle:Landroid/widget/TextView;

    .line 294
    const v1, 0x7f080044

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubSummary:Landroid/widget/TextView;

    .line 295
    const v1, 0x7f080045

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    .line 296
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 299
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    iget v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSwitchVisibility:I

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setVisibility(I)V

    .line 301
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->hasCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 315
    :goto_0
    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->resume()V

    .line 317
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 318
    return-void

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    iget v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionId:I

    invoke-virtual {v1, v2}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/codeaurora/telephony/msim/Subscription;

    move-result-object v0

    .line 307
    .local v0, subscription:Lcom/codeaurora/telephony/msim/Subscription;
    iget-object v1, v0, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v2, Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v2, Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v1, v2, :cond_2

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 311
    :cond_2
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x1

    .line 454
    iput-boolean p2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mRequest:Z

    .line 456
    sget-object v1, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 457
    :try_start_0
    sget-boolean v0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mHasDisableOneSimCard:Z

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->resume()V

    .line 459
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mHasDisableOneSimCard:Z

    .line 460
    monitor-exit v1

    .line 475
    :goto_0
    return-void

    .line 463
    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v0}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getActiveSubscriptionsCount()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 464
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mHasDisableOneSimCard:Z

    .line 467
    :cond_1
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->disableOrEnableSIMcard()V

    .line 468
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    iget v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionId:I

    sput v0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mActiveSubId:I

    .line 471
    sput-boolean p2, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mCurrentStatus:Z

    .line 472
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubSummary:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mCurrentStr:Ljava/lang/String;

    .line 473
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubSummary:Landroid/widget/TextView;

    sget-object v1, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mCurrentStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 468
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onPrepareForRemoval()V
    .locals 2

    .prologue
    .line 322
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 323
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 324
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->setScreenState()V

    .line 333
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->updateTitle()V

    .line 334
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->updateSummary()V

    .line 335
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->registerForSetSubscriptionCompleted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 337
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "isEnbled"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 378
    :cond_0
    return-void
.end method

.method public setSubscription(ILandroid/os/Handler;)V
    .locals 0
    .parameter "subscription"
    .parameter "hanler"

    .prologue
    .line 327
    iput p1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSubscriptionId:I

    .line 328
    iput-object p2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mParentHandler:Landroid/os/Handler;

    .line 329
    return-void
.end method

.method public setSwitchVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 363
    iput p1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mSwitchVisibility:I

    .line 364
    return-void
.end method
