.class public Lcom/android/stocksettings/profile/ProfilePreference;
.super Landroid/preference/Preference;
.source "ProfilePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    sput-object v0, Lcom/android/stocksettings/profile/ProfilePreference;->mSelectedKey:Ljava/lang/String;

    .line 76
    sput-object v0, Lcom/android/stocksettings/profile/ProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stocksettings/profile/ProfilePreference;->mProtectFromCheckedChange:Z

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stocksettings/profile/ProfilePreference;->mSelectable:Z

    .line 72
    invoke-direct {p0}, Lcom/android/stocksettings/profile/ProfilePreference;->init()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stocksettings/profile/ProfilePreference;->mProtectFromCheckedChange:Z

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stocksettings/profile/ProfilePreference;->mSelectable:Z

    .line 64
    invoke-direct {p0}, Lcom/android/stocksettings/profile/ProfilePreference;->init()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stocksettings/profile/ProfilePreference;->mProtectFromCheckedChange:Z

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stocksettings/profile/ProfilePreference;->mSelectable:Z

    .line 55
    invoke-direct {p0}, Lcom/android/stocksettings/profile/ProfilePreference;->init()V

    .line 56
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 113
    const v0, 0x7f040071

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/profile/ProfilePreference;->setLayoutResource(I)V

    .line 114
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 84
    .local v3, view:Landroid/view/View;
    const v5, 0x1010006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 85
    .local v4, widget:Landroid/view/View;
    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/widget/RadioButton;

    if-eqz v5, :cond_1

    move-object v1, v4

    .line 86
    check-cast v1, Landroid/widget/RadioButton;

    .line 87
    .local v1, rb:Landroid/widget/RadioButton;
    iget-boolean v5, p0, Lcom/android/stocksettings/profile/ProfilePreference;->mSelectable:Z

    if-eqz v5, :cond_3

    .line 88
    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/ProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/stocksettings/profile/ProfilePreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 91
    .local v0, isChecked:Z
    if-eqz v0, :cond_0

    .line 92
    sput-object v1, Lcom/android/stocksettings/profile/ProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 93
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/ProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/stocksettings/profile/ProfilePreference;->mSelectedKey:Ljava/lang/String;

    .line 96
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/stocksettings/profile/ProfilePreference;->mProtectFromCheckedChange:Z

    .line 97
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 98
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/stocksettings/profile/ProfilePreference;->mProtectFromCheckedChange:Z

    .line 104
    .end local v0           #isChecked:Z
    .end local v1           #rb:Landroid/widget/RadioButton;
    :cond_1
    :goto_0
    const v5, 0x1010005

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 105
    .local v2, textLayout:Landroid/view/View;
    if-eqz v2, :cond_2

    instance-of v5, v2, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_2

    .line 106
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 109
    :cond_2
    return-object v3

    .line 100
    .end local v2           #textLayout:Landroid/view/View;
    .restart local v1       #rb:Landroid/widget/RadioButton;
    :cond_3
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 125
    const-string v0, "ProfilePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/stocksettings/profile/ProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-boolean v0, p0, Lcom/android/stocksettings/profile/ProfilePreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 130
    :cond_0
    if-eqz p2, :cond_2

    .line 131
    sget-object v0, Lcom/android/stocksettings/profile/ProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 132
    sget-object v0, Lcom/android/stocksettings/profile/ProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 134
    :cond_1
    sput-object p1, Lcom/android/stocksettings/profile/ProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 135
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/ProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/stocksettings/profile/ProfilePreference;->mSelectedKey:Ljava/lang/String;

    .line 136
    sget-object v0, Lcom/android/stocksettings/profile/ProfilePreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/profile/ProfilePreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_2
    sput-object v3, Lcom/android/stocksettings/profile/ProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 139
    sput-object v3, Lcom/android/stocksettings/profile/ProfilePreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 144
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 145
    const-string v4, "ProfilePreference"

    const-string v5, "Profile onClick(DialogInterface dialog, int which) "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/ProfilePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 149
    .local v0, context:Landroid/content/Context;
    packed-switch p2, :pswitch_data_0

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 151
    :pswitch_0
    const-string v4, "ProfilePreference"

    const-string v5, "Profile onClick(DialogInterface dialog, int which) Edit"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/ProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 155
    .local v2, pos:I
    const-string v4, "content://settings/profile"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    int-to-long v5, v2

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 156
    .local v3, url:Landroid/net/Uri;
    const-string v4, "ProfilePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Profile onClick() url == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.stocksettings.profile.EditProfile.ACTION.edit"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "content://settings/profile"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 164
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pos:I
    .end local v3           #url:Landroid/net/Uri;
    :pswitch_1
    const-string v4, "ProfilePreference"

    const-string v5, "Profile onClick(DialogInterface dialog, int which) Delete"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b0855

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0856

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/android/stocksettings/profile/ProfilePreference$1;

    invoke-direct {v6, p0}, Lcom/android/stocksettings/profile/ProfilePreference$1;-><init>(Lcom/android/stocksettings/profile/ProfilePreference;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 222
    if-eqz p1, :cond_0

    const v4, 0x1010005

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/ProfilePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 224
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/ProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 226
    .local v2, pos:I
    const-string v4, "content://settings/profile"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    int-to-long v5, v2

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 227
    .local v3, url:Landroid/net/Uri;
    const-string v4, "ProfilePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Profile onClick() url == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.stocksettings.profile.EditProfile.ACTION.edit"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "content://settings/profile"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 233
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pos:I
    .end local v3           #url:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .parameter "v"

    .prologue
    const v6, 0x7f0b084f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 236
    const-string v2, "ProfilePreference"

    const-string v3, "Profile onLongClick() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v0, 0x0

    .line 240
    .local v0, channelItems:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/ProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/stocksettings/profile/ProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/stocksettings/profile/ProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/stocksettings/profile/ProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    :cond_0
    new-array v0, v4, [Ljava/lang/CharSequence;

    .line 242
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/ProfilePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 249
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/stocksettings/profile/ProfilePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/stocksettings/profile/ProfilePreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 250
    iget-object v2, p0, Lcom/android/stocksettings/profile/ProfilePreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0b0850

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 252
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 253
    return v4

    .line 244
    .end local v1           #dialog:Landroid/app/Dialog;
    :cond_1
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 245
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/ProfilePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 246
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/ProfilePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b084e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_0
.end method

.method public setChecked()V
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/ProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/stocksettings/profile/ProfilePreference;->mSelectedKey:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .parameter "selectable"

    .prologue
    .line 293
    iput-boolean p1, p0, Lcom/android/stocksettings/profile/ProfilePreference;->mSelectable:Z

    .line 294
    return-void
.end method
