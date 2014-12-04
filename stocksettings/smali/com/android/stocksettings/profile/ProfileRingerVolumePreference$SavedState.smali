.class Lcom/android/stocksettings/profile/ProfileRingerVolumePreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "ProfileRingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/stocksettings/profile/ProfileRingerVolumePreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mVolumeStore:[Landroid/preference/ProfileVolumePreference$VolumeStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 215
    new-instance v0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference$SavedState$1;

    invoke-direct {v0}, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "source"

    .prologue
    .line 183
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 184
    invoke-static {}, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->access$000()[I

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Landroid/preference/ProfileVolumePreference$VolumeStore;

    iput-object v1, p0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/ProfileVolumePreference$VolumeStore;

    .line 185
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->access$000()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/ProfileVolumePreference$VolumeStore;

    new-instance v2, Landroid/preference/ProfileVolumePreference$VolumeStore;

    invoke-direct {v2}, Landroid/preference/ProfileVolumePreference$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    .line 187
    iget-object v1, p0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/ProfileVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/preference/ProfileVolumePreference$VolumeStore;->volume:I

    .line 188
    iget-object v1, p0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/ProfileVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/preference/ProfileVolumePreference$VolumeStore;->originalVolume:I

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 212
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 213
    return-void
.end method


# virtual methods
.method getVolumeStore(I)[Landroid/preference/ProfileVolumePreference$VolumeStore;
    .locals 3
    .parameter "count"

    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/ProfileVolumePreference$VolumeStore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/ProfileVolumePreference$VolumeStore;

    array-length v1, v1

    if-eq v1, p1, :cond_1

    .line 203
    :cond_0
    new-array v1, p1, [Landroid/preference/ProfileVolumePreference$VolumeStore;

    iput-object v1, p0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/ProfileVolumePreference$VolumeStore;

    .line 204
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/ProfileVolumePreference$VolumeStore;

    new-instance v2, Landroid/preference/ProfileVolumePreference$VolumeStore;

    invoke-direct {v2}, Landroid/preference/ProfileVolumePreference$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/ProfileVolumePreference$VolumeStore;

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 194
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 195
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->access$000()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/ProfileVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/preference/ProfileVolumePreference$VolumeStore;->volume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-object v1, p0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/ProfileVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/preference/ProfileVolumePreference$VolumeStore;->originalVolume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_0
    return-void
.end method
