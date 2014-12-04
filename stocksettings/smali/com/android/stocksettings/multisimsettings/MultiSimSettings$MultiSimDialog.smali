.class public Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;
.super Landroid/app/DialogFragment;
.source "MultiSimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/multisimsettings/MultiSimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiSimDialog"
.end annotation


# static fields
.field static mEnabled:Z

.field static mSubId:I


# instance fields
.field private mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 441
    const/4 v0, -0x1

    sput v0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->mSubId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 438
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 449
    new-instance v0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog$1;-><init>(Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;)V

    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$500(Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->resumeEnabler()V

    return-void
.end method

.method public static newInstance(ILjava/lang/String;)Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;
    .locals 3
    .parameter "id"
    .parameter "message"

    .prologue
    .line 460
    new-instance v1, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;

    invoke-direct {v1}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;-><init>()V

    .line 461
    .local v1, frag:Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 462
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "MultiSimDialog.id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 463
    const-string v2, "MultiSimDialog.msg"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-virtual {v1, v0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->setArguments(Landroid/os/Bundle;)V

    .line 465
    return-object v1
.end method

.method private resumeEnabler()V
    .locals 2

    .prologue
    .line 537
    sget v0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->mSubId:I

    if-nez v0, :cond_1

    .line 538
    invoke-static {}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->access$900()Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->resume()V

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    const/4 v0, 0x1

    sget v1, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->mSubId:I

    if-ne v0, v1, :cond_0

    .line 540
    invoke-static {}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->access$1000()Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->resume()V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const v10, 0x1040014

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 470
    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 471
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "MultiSimDialog.id"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 472
    .local v2, dialog_id:I
    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "MultiSimDialog.msg"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 473
    .local v3, dialog_msg:Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 508
    :goto_0
    return-object v6

    .line 475
    :pswitch_0
    invoke-virtual {p0, v11}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->setCancelable(Z)V

    .line 476
    new-instance v6, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 477
    .local v6, progressDialog:Landroid/app/ProgressDialog;
    const v8, 0x7f0b0732

    invoke-virtual {p0, v8}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 478
    invoke-virtual {v6, v12}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    .line 481
    .end local v6           #progressDialog:Landroid/app/ProgressDialog;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Settings$System;->MULTI_SIM_NAME:[Ljava/lang/String;

    sget v10, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->mSubId:I

    aget-object v9, v9, v10

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 483
    .local v7, title:Ljava/lang/String;
    sget-boolean v8, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->mEnabled:Z

    if-eqz v8, :cond_0

    const v8, 0x7f0b07b6

    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 485
    .local v4, msg:Ljava/lang/String;
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-direct {v5, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 486
    .local v5, progressDiallog:Landroid/app/ProgressDialog;
    invoke-virtual {v5, v12}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 487
    invoke-virtual {v5, v7}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 488
    invoke-virtual {v5, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 489
    invoke-virtual {v5, v11}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 490
    invoke-virtual {v5, v11}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    move-object v6, v5

    .line 491
    goto :goto_0

    .line 483
    .end local v4           #msg:Ljava/lang/String;
    .end local v5           #progressDiallog:Landroid/app/ProgressDialog;
    :cond_0
    const v8, 0x7f0b07b7

    goto :goto_1

    .line 493
    .end local v7           #title:Ljava/lang/String;
    :pswitch_2
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x1080027

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x1040013

    invoke-virtual {v8, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto :goto_0

    .line 499
    :pswitch_3
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0b07a7

    iget-object v10, p0, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 505
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, v11}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    move-object v6, v0

    .line 506
    goto/16 :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    const/4 v4, 0x0

    .line 515
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 516
    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 517
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "MultiSimDialog.id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 518
    .local v1, dialog_id:I
    packed-switch v1, :pswitch_data_0

    .line 534
    :goto_0
    :pswitch_0
    return-void

    .line 520
    :pswitch_1
    sput-boolean v4, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mIsShowDialog:Z

    .line 521
    invoke-static {v4}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->access$602(Z)Z

    .line 522
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings$MultiSimDialog;->resumeEnabler()V

    goto :goto_0

    .line 525
    :pswitch_2
    sput-boolean v4, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->mIsShowDialog:Z

    .line 526
    invoke-static {v4}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->access$702(Z)Z

    goto :goto_0

    .line 529
    :pswitch_3
    invoke-static {v4}, Lcom/android/stocksettings/multisimsettings/MultiSimSettings;->access$802(Z)Z

    goto :goto_0

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
