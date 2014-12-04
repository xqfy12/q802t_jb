.class public Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/multisimsettings/ImageListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field simNetType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/stocksettings/multisimsettings/ImageListPreference;


# direct methods
.method public constructor <init>(Lcom/android/stocksettings/multisimsettings/ImageListPreference;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;->this$0:Lcom/android/stocksettings/multisimsettings/ImageListPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;->simNetType:Ljava/util/ArrayList;

    .line 222
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 223
    invoke-direct {p0}, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;->initResource()V

    .line 224
    return-void
.end method

.method private initResource()V
    .locals 4

    .prologue
    .line 227
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;->this$0:Lcom/android/stocksettings/multisimsettings/ImageListPreference;

    #getter for: Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mEntries:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->access$300(Lcom/android/stocksettings/multisimsettings/ImageListPreference;)[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 228
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 229
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "icon"

    iget-object v3, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;->this$0:Lcom/android/stocksettings/multisimsettings/ImageListPreference;

    #getter for: Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mIconArray:Landroid/content/res/TypedArray;
    invoke-static {v3}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->access$400(Lcom/android/stocksettings/multisimsettings/ImageListPreference;)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v2, "name"

    iget-object v3, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;->this$0:Lcom/android/stocksettings/multisimsettings/ImageListPreference;

    #getter for: Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mEntries:[Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->access$300(Lcom/android/stocksettings/multisimsettings/ImageListPreference;)[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;->simNetType:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;->this$0:Lcom/android/stocksettings/multisimsettings/ImageListPreference;

    #getter for: Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mEntries:[Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->access$300(Lcom/android/stocksettings/multisimsettings/ImageListPreference;)[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 240
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 244
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, holder:Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 255
    new-instance v0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter$ViewHolder;

    .end local v0           #holder:Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter$ViewHolder;-><init>(Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;)V

    .line 256
    .restart local v0       #holder:Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter$ViewHolder;
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04003b

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 257
    const v1, 0x7f08009f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter$ViewHolder;->netTypeIcon:Landroid/widget/ImageView;

    .line 259
    const v1, 0x7f0800a0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, v0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter$ViewHolder;->netTypeName:Landroid/widget/CheckedTextView;

    .line 262
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 267
    :goto_0
    iget-object v3, v0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter$ViewHolder;->netTypeIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;->simNetType:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "icon"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    iget-object v3, v0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter$ViewHolder;->netTypeName:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;->simNetType:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "name"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v1, v0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter$ViewHolder;->netTypeName:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;->this$0:Lcom/android/stocksettings/multisimsettings/ImageListPreference;

    #getter for: Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mTagCheckedEntryIndices:[Z
    invoke-static {v3}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->access$500(Lcom/android/stocksettings/multisimsettings/ImageListPreference;)[Z

    move-result-object v3

    aget-boolean v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 273
    iget-object v1, v0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter$ViewHolder;->netTypeName:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;->this$0:Lcom/android/stocksettings/multisimsettings/ImageListPreference;

    #getter for: Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mOtherSlotTagCheckedIndices:[Z
    invoke-static {v3}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->access$600(Lcom/android/stocksettings/multisimsettings/ImageListPreference;)[Z

    move-result-object v3

    aget-boolean v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setFocusable(Z)V

    .line 274
    iget-object v3, v0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter$ViewHolder;->netTypeName:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;->this$0:Lcom/android/stocksettings/multisimsettings/ImageListPreference;

    #getter for: Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mOtherSlotTagCheckedIndices:[Z
    invoke-static {v1}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->access$600(Lcom/android/stocksettings/multisimsettings/ImageListPreference;)[Z

    move-result-object v1

    aget-boolean v1, v1, p1

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 275
    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;->this$0:Lcom/android/stocksettings/multisimsettings/ImageListPreference;

    #getter for: Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mOtherSlotTagCheckedIndices:[Z
    invoke-static {v1}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->access$600(Lcom/android/stocksettings/multisimsettings/ImageListPreference;)[Z

    move-result-object v1

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, v0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter$ViewHolder;->netTypeName:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 278
    :cond_0
    return-object p2

    .line 264
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter$ViewHolder;
    check-cast v0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter$ViewHolder;
    goto :goto_0

    .line 274
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
