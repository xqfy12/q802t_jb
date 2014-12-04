.class public Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;
.super Landroid/preference/ProfileVolumePreference;
.source "ProfileRingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stocksettings/profile/ProfileRingerVolumePreference$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_URI_TYPE:[I

.field static final DEFAULT_VOLUME:[I

.field private static final SEEKBAR_ID:[I

.field private static final SEEKBAR_TYPE:[I

.field public static ringAsNotification:Z


# instance fields
.field public mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 27
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->DEFAULT_VOLUME:[I

    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->ringAsNotification:Z

    .line 36
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->SEEKBAR_ID:[I

    .line 42
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->DEFAULT_URI_TYPE:[I

    return-void

    .line 27
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 36
    :array_1
    .array-data 0x4
        0xfet 0x0t 0x8t 0x7ft
        0xfct 0x0t 0x8t 0x7ft
        0xfdt 0x0t 0x8t 0x7ft
    .end array-data

    .line 42
    :array_2
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 48
    :array_3
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/preference/ProfileVolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const-string v0, "ProfileRingerVolumePreference"

    const-string v1, "ProfileRingerVolumePreference-oncreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->setStreamType(I)V

    .line 59
    const v0, 0x7f04005c

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->setDialogLayoutResource(I)V

    .line 60
    const v0, 0x7f02008a

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->setDialogIcon(I)V

    .line 62
    sget-object v0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    iput-object v0, p0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    .line 63
    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->SEEKBAR_ID:[I

    return-object v0
.end method

.method private cleanup()V
    .locals 4

    .prologue
    .line 128
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 129
    iget-object v2, p0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 131
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->stop()V

    .line 136
    iget-object v2, p0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 128
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_2
    return-void
.end method


# virtual methods
.method public onActivityStop()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Landroid/preference/ProfileVolumePreference;->onActivityStop()V

    .line 110
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 110
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_1
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/4 v9, 0x0

    .line 67
    invoke-super {p0, p1}, Landroid/preference/ProfileVolumePreference;->onBindDialogView(Landroid/view/View;)V

    .line 69
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    sget-object v0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    if-ge v7, v0, :cond_0

    .line 70
    sget-object v0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->SEEKBAR_ID:[I

    aget v0, v0, v7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 71
    .local v3, seekBar:Landroid/widget/SeekBar;
    iget-object v8, p0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    new-instance v0, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v1, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v4, v1, v7

    sget-object v1, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->DEFAULT_VOLUME:[I

    aget v5, v1, v7

    sget-object v1, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->DEFAULT_URI_TYPE:[I

    aget v6, v1, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/ProfileVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;III)V

    aput-object v0, v8, v7

    .line 69
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 74
    .end local v3           #seekBar:Landroid/widget/SeekBar;
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    aget-object v0, v0, v9

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 77
    :cond_1
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 7
    .parameter "positiveResult"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/preference/ProfileVolumePreference;->onDialogClosed(Z)V

    .line 85
    iget-object v0, p0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 86
    .local v3, vol:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 85
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v3           #vol:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;
    :cond_1
    const-string v4, "ProfileRingerVolumePreference.java"

    const-string v5, "Profile !positiveResult"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-eqz p1, :cond_4

    .line 91
    const-string v4, "ProfileRingerVolumePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Profile !positiveResult, mLastRingerVolume == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->mLastRingerVolume:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 93
    .restart local v3       #vol:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_2

    .line 94
    const-string v4, "ProfileRingerVolumePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Profile !positiveResult, vol.mLastVolume == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->mLastVolume:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 97
    .end local v3           #vol:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;
    :cond_3
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 98
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 99
    const-string v4, "ProfileRingerVolumePreference"

    const-string v5, "Profile  callChangeListener"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_4
    invoke-direct {p0}, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->cleanup()V

    .line 103
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter

    .prologue
    .line 162
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/ProfileVolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 177
    :cond_1
    return-void

    .line 168
    :cond_2
    check-cast p1, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference$SavedState;

    .line 169
    invoke-virtual {p1}, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/ProfileVolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 170
    sget-object v0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/ProfileVolumePreference$VolumeStore;

    move-result-object v1

    .line 171
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 172
    iget-object v2, p0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v0

    .line 173
    if-eqz v2, :cond_3

    .line 174
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/ProfileVolumePreference$VolumeStore;)V

    .line 171
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onSampleStarting(Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;)V
    .locals 4
    .parameter "volumizer"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/preference/ProfileVolumePreference;->onSampleStarting(Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;)V

    .line 122
    iget-object v0, p0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 123
    .local v3, vol:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 122
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v3           #vol:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 143
    invoke-super {p0}, Landroid/preference/ProfileVolumePreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 144
    .local v2, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    .end local v2           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v2

    .line 149
    .restart local v2       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v1, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference$SavedState;

    invoke-direct {v1, v2}, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 150
    .local v1, myState:Lcom/android/stocksettings/profile/ProfileRingerVolumePreference$SavedState;
    sget-object v5, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    invoke-virtual {v1, v5}, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/ProfileVolumePreference$VolumeStore;

    move-result-object v4

    .line 151
    .local v4, volumeStore:[Landroid/preference/ProfileVolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v5, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 152
    iget-object v5, p0, Lcom/android/stocksettings/profile/ProfileRingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;

    aget-object v3, v5, v0

    .line 153
    .local v3, vol:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_1

    .line 154
    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/ProfileVolumePreference$VolumeStore;)V

    .line 151
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3           #vol:Landroid/preference/ProfileVolumePreference$SeekBarVolumizer;
    :cond_2
    move-object v2, v1

    .line 157
    goto :goto_0
.end method
