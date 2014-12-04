.class public Lcom/android/stocksettings/MediaFormat;
.super Landroid/app/Activity;
.source "MediaFormat.java"


# instance fields
.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mIsInternalSD:Z

.field private mStorageVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    new-instance v0, Lcom/android/stocksettings/MediaFormat$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/MediaFormat$1;-><init>(Lcom/android/stocksettings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/stocksettings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 109
    new-instance v0, Lcom/android/stocksettings/MediaFormat$2;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/MediaFormat$2;-><init>(Lcom/android/stocksettings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/stocksettings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/stocksettings/MediaFormat;)Landroid/os/storage/StorageVolume;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/stocksettings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/stocksettings/MediaFormat;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/stocksettings/MediaFormat;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/stocksettings/MediaFormat;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/stocksettings/MediaFormat;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 4

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/stocksettings/MediaFormat;->mFinalView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/stocksettings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04004a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stocksettings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 123
    iget-object v1, p0, Lcom/android/stocksettings/MediaFormat;->mFinalView:Landroid/view/View;

    const v2, 0x7f0800e3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 125
    .local v0, finalText:Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/android/stocksettings/MediaFormat;->mIsInternalSD:Z

    if-eqz v1, :cond_1

    .line 126
    const v1, 0x7f0b0835

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 131
    :goto_0
    iget-object v1, p0, Lcom/android/stocksettings/MediaFormat;->mFinalView:Landroid/view/View;

    const v2, 0x7f0800e4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/stocksettings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    .line 134
    iget-object v1, p0, Lcom/android/stocksettings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    const v2, 0x7f0b03b2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 136
    iget-object v1, p0, Lcom/android/stocksettings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/stocksettings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    .end local v0           #finalText:Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lcom/android/stocksettings/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 139
    return-void

    .line 128
    .restart local v0       #finalText:Landroid/widget/TextView;
    :cond_1
    const v1, 0x7f0b03b1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private establishInitialState()V
    .locals 4

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/stocksettings/MediaFormat;->mInitialView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/stocksettings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04004b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stocksettings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 156
    iget-object v1, p0, Lcom/android/stocksettings/MediaFormat;->mInitialView:Landroid/view/View;

    const v2, 0x7f0800e5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 158
    .local v0, initialText:Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/android/stocksettings/MediaFormat;->mIsInternalSD:Z

    if-eqz v1, :cond_1

    .line 159
    const v1, 0x7f0b0837

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/android/stocksettings/MediaFormat;->mInitialView:Landroid/view/View;

    const v2, 0x7f0800e6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/stocksettings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    .line 166
    iget-boolean v1, p0, Lcom/android/stocksettings/MediaFormat;->mIsInternalSD:Z

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/android/stocksettings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    const v2, 0x7f0b0836

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 171
    :goto_1
    iget-object v1, p0, Lcom/android/stocksettings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/stocksettings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    .end local v0           #initialText:Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lcom/android/stocksettings/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 175
    return-void

    .line 161
    .restart local v0       #initialText:Landroid/widget/TextView;
    :cond_1
    const v1, 0x7f0b03af

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/android/stocksettings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    const v2, 0x7f0b03b0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .parameter "request"

    .prologue
    .line 79
    new-instance v0, Lcom/android/stocksettings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0b03b3

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0b03b4

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/stocksettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 89
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 95
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 96
    invoke-direct {p0}, Lcom/android/stocksettings/MediaFormat;->establishFinalConfirmationState()V

    goto :goto_0

    .line 97
    :cond_1
    if-nez p2, :cond_2

    .line 98
    invoke-virtual {p0}, Lcom/android/stocksettings/MediaFormat;->finish()V

    goto :goto_0

    .line 100
    :cond_2
    invoke-direct {p0}, Lcom/android/stocksettings/MediaFormat;->establishInitialState()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    const/4 v0, 0x0

    .line 179
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    iput-object v0, p0, Lcom/android/stocksettings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 182
    iput-object v0, p0, Lcom/android/stocksettings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 183
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    .line 184
    invoke-virtual {p0}, Lcom/android/stocksettings/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "storage_volume"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    iput-object v0, p0, Lcom/android/stocksettings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 187
    invoke-direct {p0}, Lcom/android/stocksettings/MediaFormat;->establishInitialState()V

    .line 188
    iget-object v0, p0, Lcom/android/stocksettings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/stocksettings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/stocksettings/MediaFormat;->mIsInternalSD:Z

    .line 191
    :cond_0
    iget-boolean v0, p0, Lcom/android/stocksettings/MediaFormat;->mIsInternalSD:Z

    if-eqz v0, :cond_2

    .line 192
    const v0, 0x7f0b0838

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/MediaFormat;->setTitle(I)V

    .line 196
    :goto_1
    return-void

    .line 189
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 194
    :cond_2
    const v0, 0x7f0b03ad

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/MediaFormat;->setTitle(I)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 206
    invoke-virtual {p0}, Lcom/android/stocksettings/MediaFormat;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/android/stocksettings/MediaFormat;->establishInitialState()V

    .line 209
    :cond_0
    return-void
.end method
