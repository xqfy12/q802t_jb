.class public Lcom/android/stocksettings/MasterClear;
.super Landroid/app/Fragment;
.source "MasterClear.java"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mInternalStorage:Landroid/widget/CheckBox;

.field private mInternalStorageContainer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 120
    new-instance v0, Lcom/android/stocksettings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/MasterClear$1;-><init>(Lcom/android/stocksettings/MasterClear;)V

    iput-object v0, p0, Lcom/android/stocksettings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/stocksettings/MasterClear;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/stocksettings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/stocksettings/MasterClear;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/stocksettings/MasterClear;->showFinalConfirmation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/stocksettings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/stocksettings/MasterClear;->mInternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/stocksettings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/stocksettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private establishInitialState()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    .line 142
    iget-object v11, p0, Lcom/android/stocksettings/MasterClear;->mContentView:Landroid/view/View;

    const v12, 0x7f0800e1

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lcom/android/stocksettings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    .line 143
    iget-object v11, p0, Lcom/android/stocksettings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v12, p0, Lcom/android/stocksettings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v11, p0, Lcom/android/stocksettings/MasterClear;->mContentView:Landroid/view/View;

    const v12, 0x7f0800dd

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/stocksettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    .line 145
    iget-object v11, p0, Lcom/android/stocksettings/MasterClear;->mContentView:Landroid/view/View;

    const v12, 0x7f0800de

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    iput-object v11, p0, Lcom/android/stocksettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    .line 146
    iget-object v11, p0, Lcom/android/stocksettings/MasterClear;->mContentView:Landroid/view/View;

    const v12, 0x7f0800df

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/stocksettings/MasterClear;->mInternalStorageContainer:Landroid/view/View;

    .line 147
    iget-object v11, p0, Lcom/android/stocksettings/MasterClear;->mContentView:Landroid/view/View;

    const v12, 0x7f0800e0

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    iput-object v11, p0, Lcom/android/stocksettings/MasterClear;->mInternalStorage:Landroid/widget/CheckBox;

    .line 148
    iget-object v11, p0, Lcom/android/stocksettings/MasterClear;->mContentView:Landroid/view/View;

    const v12, 0x7f0800dc

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 149
    .local v4, externalOption:Landroid/view/View;
    iget-object v11, p0, Lcom/android/stocksettings/MasterClear;->mContentView:Landroid/view/View;

    const v12, 0x7f0800d9

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 157
    .local v3, externalAlsoErased:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/stocksettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 158
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v9

    .line 159
    .local v9, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v9}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v10

    .line 160
    .local v10, storageVolumes:[Landroid/os/storage/StorageVolume;
    const/4 v2, -0x1

    .line 161
    .local v2, descriptionID:I
    const/4 v1, 0x0

    .line 162
    .local v1, description:Ljava/lang/String;
    const/4 v8, 0x0

    .line 163
    .local v8, state:Ljava/lang/String;
    const/4 v7, 0x0

    .line 164
    .local v7, isIntStorageMounted:Z
    const/4 v6, 0x0

    .line 165
    .local v6, isExtStorageMounted:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v11, v10

    if-ge v5, v11, :cond_2

    .line 166
    aget-object v11, v10, v5

    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->getDescriptionId()I

    move-result v2

    .line 167
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 168
    const-string v11, "internal"

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 169
    aget-object v11, v10, v5

    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 170
    const-string v11, "mounted"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 165
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 171
    :cond_1
    const-string v11, "sd_card"

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 172
    aget-object v11, v10, v5

    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 173
    const-string v11, "mounted"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_1

    .line 177
    :cond_2
    invoke-static {}, Lcom/android/stocksettings/Utils;->isStorageEncrypted()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 178
    iget-object v11, p0, Lcom/android/stocksettings/MasterClear;->mInternalStorageContainer:Landroid/view/View;

    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v11, p0, Lcom/android/stocksettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    .line 180
    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    .line 181
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 211
    :goto_2
    invoke-direct {p0}, Lcom/android/stocksettings/MasterClear;->loadAccountList()V

    .line 212
    return-void

    .line 184
    :cond_3
    if-nez v7, :cond_4

    .line 185
    iget-object v11, p0, Lcom/android/stocksettings/MasterClear;->mInternalStorageContainer:Landroid/view/View;

    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    .line 194
    :goto_3
    if-nez v6, :cond_5

    .line 195
    iget-object v11, p0, Lcom/android/stocksettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    .line 204
    :goto_4
    if-nez v7, :cond_6

    if-nez v6, :cond_6

    .line 205
    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    .line 206
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 187
    :cond_4
    iget-object v11, p0, Lcom/android/stocksettings/MasterClear;->mInternalStorageContainer:Landroid/view/View;

    new-instance v12, Lcom/android/stocksettings/MasterClear$2;

    invoke-direct {v12, p0}, Lcom/android/stocksettings/MasterClear$2;-><init>(Lcom/android/stocksettings/MasterClear;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 197
    :cond_5
    iget-object v11, p0, Lcom/android/stocksettings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v12, Lcom/android/stocksettings/MasterClear$3;

    invoke-direct {v12, p0}, Lcom/android/stocksettings/MasterClear$3;-><init>(Lcom/android/stocksettings/MasterClear;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 208
    :cond_6
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private loadAccountList()V
    .locals 24

    .prologue
    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f0800da

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 221
    .local v8, accountsLabel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f0800db

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 222
    .local v11, contents:Landroid/widget/LinearLayout;
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/android/stocksettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v12

    .line 226
    .local v12, context:Landroid/content/Context;
    invoke-static {v12}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v20

    .line 227
    .local v20, mgr:Landroid/accounts/AccountManager;
    invoke-virtual/range {v20 .. v20}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v7

    .line 228
    .local v7, accounts:[Landroid/accounts/Account;
    array-length v5, v7

    .line 229
    .local v5, N:I
    if-nez v5, :cond_0

    .line 230
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 231
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 281
    :goto_0
    return-void

    .line 235
    :cond_0
    const-string v21, "layout_inflater"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/LayoutInflater;

    .line 238
    .local v18, inflater:Landroid/view/LayoutInflater;
    invoke-static {v12}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v14

    .line 239
    .local v14, descs:[Landroid/accounts/AuthenticatorDescription;
    array-length v4, v14

    .line 241
    .local v4, M:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v5, :cond_8

    .line 242
    aget-object v6, v7, v16

    .line 243
    .local v6, account:Landroid/accounts/Account;
    const/4 v13, 0x0

    .line 244
    .local v13, desc:Landroid/accounts/AuthenticatorDescription;
    if-eqz v6, :cond_2

    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "com.android.sim"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "com.android.localphone"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 241
    :cond_1
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 249
    :cond_2
    const/16 v19, 0x0

    .local v19, j:I
    :goto_3
    move/from16 v0, v19

    if-ge v0, v4, :cond_3

    .line 250
    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v22, v14, v19

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 251
    aget-object v13, v14, v19

    .line 255
    :cond_3
    if-nez v13, :cond_5

    .line 256
    const-string v21, "MasterClear"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "No descriptor for account name="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " type="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 249
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 260
    :cond_5
    const/16 v17, 0x0

    .line 262
    .local v17, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget v0, v13, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 263
    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v9

    .line 264
    .local v9, authContext:Landroid/content/Context;
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    iget v0, v13, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 270
    .end local v9           #authContext:Landroid/content/Context;
    :cond_6
    :goto_4
    const v21, 0x7f040048

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v11, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 272
    .local v10, child:Landroid/widget/TextView;
    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    if-eqz v17, :cond_7

    .line 274
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 276
    :cond_7
    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 266
    .end local v10           #child:Landroid/widget/TextView;
    :catch_0
    move-exception v15

    .line 267
    .local v15, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v21, "MasterClear"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "No icon for account type "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 279
    .end local v6           #account:Landroid/accounts/Account;
    .end local v13           #desc:Landroid/accounts/AuthenticatorDescription;
    .end local v15           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v17           #icon:Landroid/graphics/drawable/Drawable;
    .end local v19           #j:I
    :cond_8
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 280
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .parameter "request"

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/stocksettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/stocksettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/stocksettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/stocksettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v2, 0x7f0b03a9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0b03aa

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/stocksettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private showFinalConfirmation()V
    .locals 4

    .prologue
    .line 107
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/stocksettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 108
    const-class v0, Lcom/android/stocksettings/MasterClearConfirm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 109
    const v0, 0x7f0b03ac

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 110
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "erase_sd"

    iget-object v3, p0, Lcom/android/stocksettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "erase_internal_sd"

    iget-object v3, p0, Lcom/android/stocksettings/MasterClear;->mInternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    invoke-virtual {p0}, Lcom/android/stocksettings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 113
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 93
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 99
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/android/stocksettings/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    .line 102
    :cond_1
    invoke-direct {p0}, Lcom/android/stocksettings/MasterClear;->establishInitialState()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 286
    const v0, 0x7f040047

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/MasterClear;->mContentView:Landroid/view/View;

    .line 288
    invoke-direct {p0}, Lcom/android/stocksettings/MasterClear;->establishInitialState()V

    .line 289
    iget-object v0, p0, Lcom/android/stocksettings/MasterClear;->mContentView:Landroid/view/View;

    return-object v0
.end method
