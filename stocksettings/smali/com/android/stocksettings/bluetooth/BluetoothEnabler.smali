.class public final Lcom/android/stocksettings/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v1, Lcom/android/stocksettings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/stocksettings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/stocksettings/bluetooth/BluetoothEnabler;)V

    iput-object v1, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    iput-object p1, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    .line 60
    iput-boolean v2, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mContentResolver:Landroid/content/ContentResolver;

    .line 63
    invoke-static {p1}, Lcom/android/stocksettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/stocksettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 64
    .local v0, manager:Lcom/android/stocksettings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;

    .line 67
    iget-object v1, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 71
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 72
    return-void

    .line 69
    :cond_0
    invoke-virtual {v0}, Lcom/android/stocksettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method

.method private setChecked(Z)V
    .locals 2
    .parameter "isChecked"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 159
    iget-boolean v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 163
    iget-boolean v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 167
    :cond_1
    return-void
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 134
    packed-switch p1, :pswitch_data_0

    .line 150
    invoke-direct {p0, v1}, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 151
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 153
    :goto_0
    return-void

    .line 136
    :pswitch_0
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 139
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 143
    :pswitch_2
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 146
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x0

    .line 114
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/android/stocksettings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01e7

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 120
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p2}, Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 131
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 94
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 86
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 83
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    iget-object v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 8
    .parameter "switch_"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 99
    iget-object v6, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v6, p1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v6, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    iput-object p1, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    .line 102
    iget-object v6, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    iget-boolean v7, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v7, :cond_1

    move-object v3, p0

    :cond_1
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 104
    const/16 v0, 0xa

    .line 105
    .local v0, bluetoothState:I
    iget-object v3, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/stocksettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 106
    :cond_2
    const/16 v3, 0xc

    if-ne v0, v3, :cond_5

    move v2, v4

    .line 107
    .local v2, isOn:Z
    :goto_1
    const/16 v3, 0xa

    if-ne v0, v3, :cond_6

    move v1, v4

    .line 108
    .local v1, isOff:Z
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 109
    iget-object v3, p0, Lcom/android/stocksettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    move v5, v4

    :cond_4
    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .end local v1           #isOff:Z
    .end local v2           #isOn:Z
    :cond_5
    move v2, v5

    .line 106
    goto :goto_1

    .restart local v2       #isOn:Z
    :cond_6
    move v1, v5

    .line 107
    goto :goto_2
.end method
