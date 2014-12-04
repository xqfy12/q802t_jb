.class public Lcom/android/stocksettings/deviceinfo/UsbSettings;
.super Lcom/android/stocksettings/SettingsPreferenceFragment;
.source "UsbSettings.java"


# instance fields
.field private mCharging:Landroid/preference/CheckBoxPreference;

.field private mMtp:Landroid/preference/CheckBoxPreference;

.field private mPtp:Landroid/preference/CheckBoxPreference;

.field private mSDCard:Landroid/preference/CheckBoxPreference;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUsbAccessoryMode:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private operateInprogress:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->operateInprogress:Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 69
    new-instance v0, Lcom/android/stocksettings/deviceinfo/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/deviceinfo/UsbSettings$1;-><init>(Lcom/android/stocksettings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    new-instance v0, Lcom/android/stocksettings/deviceinfo/UsbSettings$2;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/deviceinfo/UsbSettings$2;-><init>(Lcom/android/stocksettings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/stocksettings/deviceinfo/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/stocksettings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/stocksettings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->operateInprogress:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/stocksettings/deviceinfo/UsbSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/UsbSettings;->updateUsbFunctionState()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 100
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 103
    :cond_0
    const v2, 0x7f050040

    invoke-virtual {p0, v2}, Lcom/android/stocksettings/deviceinfo/UsbSettings;->addPreferencesFromResource(I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 106
    const-string v2, "usb_mtp"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    .line 107
    const-string v2, "usb_ptp"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    .line 108
    const-string v2, "usb_sdcard"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    .line 109
    const-string v2, "usb_charging"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    .line 112
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 113
    .local v1, um:Landroid/os/UserManager;
    const-string v2, "no_usb_file_transfer"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 116
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 117
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 120
    :cond_1
    return-object v0
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 5
    .parameter "function"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 191
    const-string v1, "mtp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 193
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 194
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 195
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 218
    :goto_0
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_4

    .line 236
    :goto_1
    return-void

    .line 196
    :cond_0
    const-string v1, "ptp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 198
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 199
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 200
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 201
    :cond_1
    const-string v1, "mass_storage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 203
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 204
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 205
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 206
    :cond_2
    const-string v1, "charging"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 207
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 208
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 209
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 210
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 212
    :cond_3
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 213
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 214
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 215
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 221
    :cond_4
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 222
    .local v0, um:Landroid/os/UserManager;
    const-string v1, "no_usb_file_transfer"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 223
    const-string v1, "UsbSettings"

    const-string v2, "USB is locked down"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 226
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 227
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 228
    :cond_5
    iget-boolean v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->operateInprogress:Z

    if-nez v1, :cond_6

    .line 230
    const-string v1, "UsbSettings"

    const-string v2, "USB Normal Mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1

    .line 233
    :cond_6
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method private updateUsbFunctionState()V
    .locals 3

    .prologue
    .line 90
    const-string v1, "persist.sys.usb.config"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, functions:Ljava/lang/String;
    const-string v1, "diag,serial_smd,serial_tty,rmnet_bam,mass_storage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const-string v1, "diag,serial_smd,serial_tty,rmnet_bam,mass_storage"

    invoke-direct {p0, v1}, Lcom/android/stocksettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/stocksettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 126
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 127
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 128
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 129
    const-string v0, "UsbSettings"

    const-string v1, "Failed to get StorageManager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onPause()V

    .line 167
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 168
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 171
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    .line 243
    invoke-static {}, Lcom/android/stocksettings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v4

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 250
    .local v1, um:Landroid/os/UserManager;
    const-string v2, "no_usb_file_transfer"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 255
    const-string v0, "diag,serial_smd,serial_tty,rmnet_bam,mass_storage"

    .line 256
    .local v0, function:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 257
    const-string v0, "mtp"

    .line 266
    :cond_2
    :goto_1
    iput-boolean v4, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->operateInprogress:Z

    .line 267
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, v0, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 268
    invoke-direct {p0, v0}, Lcom/android/stocksettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_3
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 259
    const-string v0, "ptp"

    goto :goto_1

    .line 260
    :cond_4
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 261
    const-string v0, "mass_storage"

    goto :goto_1

    .line 262
    :cond_5
    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 263
    const-string v0, "charging"

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 175
    invoke-super {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onResume()V

    .line 179
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/UsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 182
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/UsbSettings;->updateUsbFunctionState()V

    .line 188
    return-void
.end method
