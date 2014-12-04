.class public abstract Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;
.super Landroid/os/Binder;
.source "IFMRadioServiceCallbacks.java"

# interfaces
.implements Lcom/caf/fmradio/IFMRadioServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caf/fmradio/IFMRadioServiceCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.caf.fmradio.IFMRadioServiceCallbacks"

    invoke-virtual {p0, p0, v0}, Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/caf/fmradio/IFMRadioServiceCallbacks;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.caf.fmradio.IFMRadioServiceCallbacks"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/caf/fmradio/IFMRadioServiceCallbacks;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v2, "com.caf.fmradio.IFMRadioServiceCallbacks"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.caf.fmradio.IFMRadioServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;->onEnabled()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v2, "com.caf.fmradio.IFMRadioServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;->onDisabled()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    :sswitch_3
    const-string v2, "com.caf.fmradio.IFMRadioServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;->onRadioReset()V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 68
    :sswitch_4
    const-string v2, "com.caf.fmradio.IFMRadioServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;->onTuneStatusChanged()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 75
    :sswitch_5
    const-string v2, "com.caf.fmradio.IFMRadioServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;->onProgramServiceChanged()V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 82
    :sswitch_6
    const-string v2, "com.caf.fmradio.IFMRadioServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;->onRadioTextChanged()V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    :sswitch_7
    const-string v2, "com.caf.fmradio.IFMRadioServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;->onAlternateFrequencyChanged()V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 96
    :sswitch_8
    const-string v2, "com.caf.fmradio.IFMRadioServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;->onSignalStrengthChanged()V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 103
    :sswitch_9
    const-string v2, "com.caf.fmradio.IFMRadioServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;->onSearchComplete()V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 110
    :sswitch_a
    const-string v2, "com.caf.fmradio.IFMRadioServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;->onSearchListComplete()V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 117
    :sswitch_b
    const-string v2, "com.caf.fmradio.IFMRadioServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 120
    .local v0, _arg0:Z
    :cond_0
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;->onMute(Z)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 126
    .end local v0           #_arg0:Z
    :sswitch_c
    const-string v2, "com.caf.fmradio.IFMRadioServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 129
    .restart local v0       #_arg0:Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;->onAudioUpdate(Z)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 135
    .end local v0           #_arg0:Z
    :sswitch_d
    const-string v2, "com.caf.fmradio.IFMRadioServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 138
    .restart local v0       #_arg0:Z
    :cond_2
    invoke-virtual {p0, v0}, Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;->onStationRDSSupported(Z)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 144
    .end local v0           #_arg0:Z
    :sswitch_e
    const-string v2, "com.caf.fmradio.IFMRadioServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;->onRecordingStopped()V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 151
    :sswitch_f
    const-string v2, "com.caf.fmradio.IFMRadioServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;->onExtenRadioTextChanged()V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 158
    :sswitch_10
    const-string v2, "com.caf.fmradio.IFMRadioServiceCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/caf/fmradio/IFMRadioServiceCallbacks$Stub;->onRecordingStarted()V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
