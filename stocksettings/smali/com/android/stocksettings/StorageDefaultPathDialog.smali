.class public Lcom/android/stocksettings/StorageDefaultPathDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "StorageDefaultPathDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static sharedPreferences:Landroid/content/SharedPreferences;


# instance fields
.field private cb:Landroid/widget/CheckBox;

.field private chooseFlag:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSDCardStateFilter:Landroid/content/IntentFilter;

.field private final mSDStateReceiver:Landroid/content/BroadcastReceiver;

.field private newView:Landroid/view/View;

.field path:Ljava/lang/String;

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stocksettings/StorageDefaultPathDialog;->path:Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stocksettings/StorageDefaultPathDialog;->chooseFlag:Z

    .line 107
    new-instance v0, Lcom/android/stocksettings/StorageDefaultPathDialog$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/StorageDefaultPathDialog$1;-><init>(Lcom/android/stocksettings/StorageDefaultPathDialog;)V

    iput-object v0, p0, Lcom/android/stocksettings/StorageDefaultPathDialog;->mSDStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private closeShowPwdTip()Z
    .locals 3

    .prologue
    .line 196
    sget-object v1, Lcom/android/stocksettings/StorageDefaultPathDialog;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 197
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/android/stocksettings/StorageDefaultPathDialog;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 198
    :cond_0
    sget-object v1, Lcom/android/stocksettings/StorageDefaultPathDialog;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 199
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "KISPT"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 200
    const-string v1, "StorageDefaultPathDialog"

    const-string v2, "closeShowPwdTip() entry"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method private createDialog()V
    .locals 4

    .prologue
    const/16 v3, 0xf

    const/4 v2, 0x5

    .line 133
    iget-object v0, p0, Lcom/android/stocksettings/StorageDefaultPathDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 134
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0b0862

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/StorageDefaultPathDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 135
    invoke-direct {p0}, Lcom/android/stocksettings/StorageDefaultPathDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 136
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 137
    iput v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingLeft:I

    .line 138
    iput v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingRight:I

    .line 139
    iput v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingTop:I

    .line 140
    iput v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingBottom:I

    .line 141
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/StorageDefaultPathDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 142
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 143
    const/high16 v1, 0x104

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/StorageDefaultPathDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 144
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 145
    invoke-virtual {p0}, Lcom/android/stocksettings/StorageDefaultPathDialog;->setupAlert()V

    .line 146
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 4

    .prologue
    .line 154
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 155
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04007e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stocksettings/StorageDefaultPathDialog;->newView:Landroid/view/View;

    .line 156
    iget-object v1, p0, Lcom/android/stocksettings/StorageDefaultPathDialog;->newView:Landroid/view/View;

    const v2, 0x7f08015a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/stocksettings/StorageDefaultPathDialog;->tv:Landroid/widget/TextView;

    .line 157
    iget-object v1, p0, Lcom/android/stocksettings/StorageDefaultPathDialog;->tv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/stocksettings/StorageDefaultPathDialog;->newView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1030044

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 158
    iget-object v1, p0, Lcom/android/stocksettings/StorageDefaultPathDialog;->newView:Landroid/view/View;

    const v2, 0x7f08015b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/stocksettings/StorageDefaultPathDialog;->cb:Landroid/widget/CheckBox;

    .line 160
    iget-object v1, p0, Lcom/android/stocksettings/StorageDefaultPathDialog;->newView:Landroid/view/View;

    return-object v1
.end method

.method private isShowPwdTip()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 205
    sget-object v1, Lcom/android/stocksettings/StorageDefaultPathDialog;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 206
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/android/stocksettings/StorageDefaultPathDialog;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 207
    :cond_0
    const-string v1, "persist.sys.isExternalSdFirst"

    const-string v4, "0"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, values:Ljava/lang/String;
    const-string v4, "StorageDefaultPathDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isShowPwdTip() entry tip = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v1, Lcom/android/stocksettings/StorageDefaultPathDialog;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "KISPT"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v1, "StorageDefaultPathDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isShowPwdTip() values = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v1, Lcom/android/stocksettings/StorageDefaultPathDialog;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "KISPT"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    return v2

    :cond_1
    move v1, v3

    .line 208
    goto :goto_0

    :cond_2
    move v2, v3

    .line 210
    goto :goto_1
.end method

.method private onCancel()V
    .locals 2

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/stocksettings/StorageDefaultPathDialog;->chooseFlag:Z

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/android/stocksettings/StorageDefaultPathDialog;->closeShowPwdTip()Z

    .line 219
    :cond_0
    const-string v0, "StorageDefaultPathDialog"

    const-string v1, "onCancel entry"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p0}, Lcom/android/stocksettings/StorageDefaultPathDialog;->finish()V

    .line 221
    return-void
.end method

.method private onOK()V
    .locals 4

    .prologue
    .line 184
    iget-boolean v1, p0, Lcom/android/stocksettings/StorageDefaultPathDialog;->chooseFlag:Z

    if-eqz v1, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/android/stocksettings/StorageDefaultPathDialog;->closeShowPwdTip()Z

    .line 187
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 188
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.stocksettings"

    const-string v2, "com.android.stocksettings.SwitchToExternalSD"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v1, "chooseFlag"

    iget-boolean v2, p0, Lcom/android/stocksettings/StorageDefaultPathDialog;->chooseFlag:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 190
    const-string v1, "StorageDefaultPathDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOK() start activity chooseFlag ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/stocksettings/StorageDefaultPathDialog;->chooseFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/stocksettings/StorageDefaultPathDialog;->startActivity(Landroid/content/Intent;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/stocksettings/StorageDefaultPathDialog;->finish()V

    .line 193
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 224
    const-string v0, "StorageDefaultPathDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(DialogInterface dialog, int which) entry which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/android/stocksettings/StorageDefaultPathDialog;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/stocksettings/StorageDefaultPathDialog;->chooseFlag:Z

    .line 226
    packed-switch p2, :pswitch_data_0

    .line 234
    :goto_0
    return-void

    .line 228
    :pswitch_0
    invoke-direct {p0}, Lcom/android/stocksettings/StorageDefaultPathDialog;->onOK()V

    goto :goto_0

    .line 231
    :pswitch_1
    invoke-direct {p0}, Lcom/android/stocksettings/StorageDefaultPathDialog;->onCancel()V

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const-string v0, "StorageDefaultPathDialog"

    const-string v1, "StorageDefaultPathDialog onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/stocksettings/StorageDefaultPathDialog;->mSDCardStateFilter:Landroid/content/IntentFilter;

    .line 121
    iget-object v0, p0, Lcom/android/stocksettings/StorageDefaultPathDialog;->mSDCardStateFilter:Landroid/content/IntentFilter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/stocksettings/StorageDefaultPathDialog;->mSDStateReceiver:Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/android/stocksettings/StorageDefaultPathDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    invoke-direct {p0}, Lcom/android/stocksettings/StorageDefaultPathDialog;->isShowPwdTip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/android/stocksettings/StorageDefaultPathDialog;->createDialog()V

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/StorageDefaultPathDialog;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 170
    const-string v0, "StorageDefaultPathDialog"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 172
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 178
    const-string v0, "StorageDefaultPathDialog"

    const-string v1, "onPause entry"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/android/stocksettings/StorageDefaultPathDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/StorageDefaultPathDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 181
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 166
    iget-object v0, p0, Lcom/android/stocksettings/StorageDefaultPathDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/stocksettings/StorageDefaultPathDialog;->mSDCardStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/stocksettings/StorageDefaultPathDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    return-void
.end method
