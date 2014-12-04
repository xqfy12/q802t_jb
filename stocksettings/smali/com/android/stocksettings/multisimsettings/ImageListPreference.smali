.class public Lcom/android/stocksettings/multisimsettings/ImageListPreference;
.super Landroid/preference/DialogPreference;
.source "ImageListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;

.field private mCheckedItemEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mIconArray:Landroid/content/res/TypedArray;

.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mOtherSlotCheckedIndex:I

.field private mOtherSlotTagCheckedIndices:[Z

.field private mResDrawable:Landroid/graphics/drawable/Drawable;

.field private mTagCheckedEntryIndices:[Z

.field private mTextView:Landroid/widget/TextView;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    sget-object v1, Lcom/android/stocksettings/R$styleable;->ImageListPreference:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, array:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 79
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v1, v1

    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-eq v1, v2, :cond_1

    .line 84
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ListPreference requires an entries array and an entryValues array which are both the same length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mTagCheckedEntryIndices:[Z

    .line 91
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mOtherSlotTagCheckedIndices:[Z

    .line 92
    return-void
.end method

.method static synthetic access$002(Lcom/android/stocksettings/multisimsettings/ImageListPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mCheckedItemEntryIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/stocksettings/multisimsettings/ImageListPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->setTagCheckedEntryIndices()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/stocksettings/multisimsettings/ImageListPreference;)Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mAdapter:Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/stocksettings/multisimsettings/ImageListPreference;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/stocksettings/multisimsettings/ImageListPreference;)Landroid/content/res/TypedArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mIconArray:Landroid/content/res/TypedArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/stocksettings/multisimsettings/ImageListPreference;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mTagCheckedEntryIndices:[Z

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/stocksettings/multisimsettings/ImageListPreference;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mOtherSlotTagCheckedIndices:[Z

    return-object v0
.end method

.method private getValueIndex()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private setTagCheckedEntryIndices()V
    .locals 3

    .prologue
    .line 146
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mTagCheckedEntryIndices:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 147
    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mTagCheckedEntryIndices:[Z

    iget v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mCheckedItemEntryIndex:I

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_1
    aput-boolean v1, v2, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 149
    :cond_1
    return-void
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 207
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 209
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    .end local v0           #i:I
    :goto_1
    return v0

    .line 208
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 214
    .end local v0           #i:I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 104
    const v0, 0x7f08009d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mTextView:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f08009e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mImageView:Landroid/widget/ImageView;

    .line 106
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mResDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mResDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :cond_1
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 2

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mCheckedItemEntryIndex:I

    .line 126
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->setTagCheckedEntryIndices()V

    .line 128
    new-instance v0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;

    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;-><init>(Lcom/android/stocksettings/multisimsettings/ImageListPreference;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mAdapter:Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;

    .line 130
    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mListView:Landroid/widget/ListView;

    .line 131
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mAdapter:Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/stocksettings/multisimsettings/ImageListPreference$1;

    invoke-direct {v1, p0}, Lcom/android/stocksettings/multisimsettings/ImageListPreference$1;-><init>(Lcom/android/stocksettings/multisimsettings/ImageListPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04003a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 154
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mCheckedItemEntryIndex:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mCheckedItemEntryIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->setValue(Ljava/lang/String;)V

    .line 161
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restorePersistedValue"
    .parameter "defaultValue"

    .prologue
    .line 189
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 190
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->setValue(Ljava/lang/String;)V

    .line 191
    return-void

    .line 190
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 171
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mCheckedItemEntryIndex:I

    .line 172
    iget v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mCheckedItemEntryIndex:I

    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mCheckedItemEntryIndex:I

    if-ltz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mCheckedItemEntryIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->setValue(Ljava/lang/String;)V

    .line 178
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return-void

    .line 176
    :cond_0
    const-string v1, "ImageListPreference"

    const-string v2, "The range of index is error!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIconEntries(Landroid/content/res/TypedArray;)V
    .locals 0
    .parameter "icons"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mIconArray:Landroid/content/res/TypedArray;

    .line 121
    return-void
.end method

.method public setOtherSlotValue(Ljava/lang/Object;)V
    .locals 3
    .parameter "otherSlotValue"

    .prologue
    .line 181
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mOtherSlotCheckedIndex:I

    .line 182
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mOtherSlotTagCheckedIndices:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 183
    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mOtherSlotTagCheckedIndices:[Z

    iget v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mOtherSlotCheckedIndex:I

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_1
    aput-boolean v1, v2, v0

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 185
    :cond_1
    return-void
.end method

.method public setSimIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "resDrawable"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mResDrawable:Landroid/graphics/drawable/Drawable;

    .line 116
    invoke-virtual {p0}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->notifyChanged()V

    .line 117
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mValue:Ljava/lang/String;

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->persistString(Ljava/lang/String;)Z

    .line 196
    return-void
.end method
