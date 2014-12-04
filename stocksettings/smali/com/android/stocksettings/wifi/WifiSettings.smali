.class public Lcom/android/stocksettings/wifi/WifiSettings;
.super Lcom/android/stocksettings/SettingsPreferenceFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stocksettings/wifi/WifiSettings$ProportionalOuterFrame;,
        Lcom/android/stocksettings/wifi/WifiSettings$Scanner;,
        Lcom/android/stocksettings/wifi/WifiSettings$Multimap;
    }
.end annotation


# instance fields
.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAutoConnect:Z

.field private mAutoFinishOnConnection:Z

.field private mConfigedAP:Landroid/preference/PreferenceCategory;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDefaultTrustAP:Landroid/preference/PreferenceCategory;

.field private mDialog:Lcom/android/stocksettings/wifi/WifiDialog;

.field private mDisableApList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/stocksettings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mDlgAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableNextOnConnection:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mP2pSupported:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mScanner:Lcom/android/stocksettings/wifi/WifiSettings$Scanner;

.field private mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

.field private mSetupWizardMode:Z

.field private mUnKnownAP:Landroid/preference/PreferenceCategory;

.field private mUserManager:Landroid/os/UserManager;

.field private mWifiEnabler:Lcom/android/stocksettings/wifi/WifiEnabler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;-><init>()V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mAutoConnect:Z

    .line 152
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDisableApList:Ljava/util/ArrayList;

    .line 209
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 210
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    new-instance v0, Lcom/android/stocksettings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/wifi/WifiSettings$1;-><init>(Lcom/android/stocksettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 226
    new-instance v0, Lcom/android/stocksettings/wifi/WifiSettings$Scanner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/stocksettings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/stocksettings/wifi/WifiSettings;Lcom/android/stocksettings/wifi/WifiSettings$1;)V

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mScanner:Lcom/android/stocksettings/wifi/WifiSettings$Scanner;

    .line 227
    return-void
.end method

.method static synthetic access$000(Lcom/android/stocksettings/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/stocksettings/wifi/WifiSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/stocksettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/stocksettings/wifi/WifiSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/android/stocksettings/wifi/WifiSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/stocksettings/wifi/WifiSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/android/stocksettings/wifi/WifiSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/stocksettings/wifi/WifiSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/android/stocksettings/wifi/WifiSettings;->showDialog(I)V

    return-void
.end method

.method private addMessagePreference(I)V
    .locals 2
    .parameter "messageId"

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 878
    :cond_0
    const-string v0, "persist.env.settings.wifiprior"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 879
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDefaultTrustAP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 880
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mConfigedAP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 881
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mUnKnownAP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 885
    :goto_0
    return-void

    .line 883
    :cond_1
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto :goto_0
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .parameter "connected"

    .prologue
    .line 1160
    iget-boolean v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1161
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1163
    :cond_0
    return-void
.end method

.method private constructAccessPoints()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/stocksettings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 889
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 892
    new-instance v6, Lcom/android/stocksettings/wifi/WifiSettings$Multimap;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/android/stocksettings/wifi/WifiSettings$Multimap;-><init>(Lcom/android/stocksettings/wifi/WifiSettings;Lcom/android/stocksettings/wifi/WifiSettings$1;)V

    .line 894
    const-string v0, "persist.env.settings.wifiprior"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->emptyCategory()V

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 898
    if-eqz v0, :cond_7

    .line 899
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 900
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 901
    new-instance v4, Lcom/android/stocksettings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7, v0}, Lcom/android/stocksettings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 902
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v7, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v4, v0, v7}, Lcom/android/stocksettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 903
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    iget-object v0, v4, Lcom/android/stocksettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v0, v4}, Lcom/android/stocksettings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 905
    const-string v0, "persist.env.settings.wifiprior"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 906
    invoke-static {v4}, Lcom/android/stocksettings/wifi/AccessPoint;->isCarrierAp(Lcom/android/stocksettings/wifi/AccessPoint;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 907
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v7, "default_credible"

    invoke-virtual {v0, v7, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 910
    iget-object v0, v4, Lcom/android/stocksettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {v7, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 912
    const-string v9, "WifiSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "is Default Credible ap:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-ne v8, v2, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    invoke-virtual {v4}, Lcom/android/stocksettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Lcom/android/stocksettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v9, :cond_3

    .line 917
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDefaultTrustAP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 918
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v4, v4, Lcom/android/stocksettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_2
    move v0, v3

    .line 912
    goto :goto_1

    .line 920
    :cond_3
    if-ne v8, v2, :cond_4

    .line 921
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDefaultTrustAP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 923
    :cond_4
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mConfigedAP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 927
    :cond_5
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mConfigedAP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 932
    :cond_6
    const-string v0, "persist.env.settings.wifiprior"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 933
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mConfigedAP:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mConfigedAP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 934
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mConfigedAP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 939
    :cond_7
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 940
    if-eqz v0, :cond_e

    .line 941
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 943
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v4, "[IBSS]"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 949
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/android/stocksettings/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v4, v3

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/stocksettings/wifi/AccessPoint;

    .line 950
    invoke-virtual {v1, v0}, Lcom/android/stocksettings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v2

    :goto_4
    move v4, v1

    .line 951
    goto :goto_3

    .line 953
    :cond_9
    if-nez v4, :cond_8

    .line 954
    new-instance v1, Lcom/android/stocksettings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/android/stocksettings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 955
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    iget-object v0, v1, Lcom/android/stocksettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Lcom/android/stocksettings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 957
    const-string v0, "persist.env.settings.wifiprior"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 958
    invoke-static {v1}, Lcom/android/stocksettings/wifi/AccessPoint;->isCarrierAp(Lcom/android/stocksettings/wifi/AccessPoint;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 959
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v4, "default_credible"

    invoke-virtual {v0, v4, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 962
    iget-object v4, v1, Lcom/android/stocksettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 964
    invoke-virtual {v1}, Lcom/android/stocksettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v1}, Lcom/android/stocksettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v8, v9, :cond_a

    .line 966
    iget-object v4, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDefaultTrustAP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 967
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, v1, Lcom/android/stocksettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 969
    :cond_a
    if-ne v4, v2, :cond_b

    .line 970
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDefaultTrustAP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 972
    :cond_b
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mUnKnownAP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 976
    :cond_c
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mUnKnownAP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 981
    :cond_d
    const-string v0, "persist.env.settings.wifiprior"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 982
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mUnKnownAP:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mUnKnownAP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_e

    .line 983
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mUnKnownAP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 989
    :cond_e
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 990
    return-object v5

    :cond_f
    move v1, v4

    goto/16 :goto_4
.end method

.method private disconnectDuetoAutoConnectMode()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1409
    const-string v0, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter disconnectDuetoAutoConnectMode mAutoConnect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mAutoConnect:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    iget-boolean v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mAutoConnect:Z

    if-eqz v0, :cond_5

    .line 1411
    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDisableApList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1412
    :try_start_0
    const-string v3, "WifiSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDisableApList.size = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDisableApList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDisableApList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDisableApList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/wifi/AccessPoint;

    .line 1414
    const-string v4, "WifiSettings"

    const-string v5, "===Enable network for all ap in disable list==="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    iget-object v4, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v0, v0, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto :goto_1

    .line 1423
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    move v0, v1

    .line 1412
    goto :goto_0

    .line 1417
    :cond_1
    :try_start_1
    const-string v3, "WifiSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after enable mDisableApList.size = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDisableApList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDisableApList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 1419
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDisableApList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1420
    const-string v3, "WifiSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after clear mDisableApList.size = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDisableApList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDisableApList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDisableApList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1422
    const-string v3, "WifiSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after add mDisableApList.size = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDisableApList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDisableApList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1428
    :goto_5
    return-void

    :cond_2
    move v0, v1

    .line 1417
    goto :goto_2

    :cond_3
    move v0, v1

    .line 1420
    goto :goto_3

    :cond_4
    move v0, v1

    .line 1422
    goto :goto_4

    .line 1425
    :cond_5
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 1426
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto :goto_5
.end method

.method private enableAvailableNetwork()V
    .locals 6

    .prologue
    .line 1434
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1435
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1437
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto :goto_0

    .line 1440
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    return-void
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1013
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1014
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1015
    const-string v0, "wifi_state"

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/stocksettings/wifi/WifiSettings;->updateWifiState(I)V

    .line 1056
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1020
    :cond_2
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->updateAccessPoints()V

    goto :goto_0

    .line 1021
    :cond_3
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1028
    const-string v0, "newState"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    .line 1030
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isHandshakeState(Landroid/net/wifi/SupplicantState;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1031
    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/stocksettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 1036
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/stocksettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 1038
    :cond_5
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1039
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1041
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1042
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/stocksettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 1043
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 1044
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/stocksettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1045
    iget-boolean v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1047
    if-eqz v0, :cond_0

    .line 1048
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 1049
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1053
    :cond_6
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    invoke-direct {p0, v2}, Lcom/android/stocksettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0
.end method

.method private setOffMessage()V
    .locals 3

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f0b0204

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 858
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_scan_always_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 860
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 862
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 864
    const v0, 0x7f0b01f1

    .line 868
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/stocksettings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 869
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 872
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 873
    return-void

    .line 866
    :cond_1
    const v0, 0x7f0b01f2

    goto :goto_0
.end method

.method private showDialog(Lcom/android/stocksettings/wifi/AccessPoint;Z)V
    .locals 2
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v1, 0x1

    .line 727
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDialog:Lcom/android/stocksettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 728
    invoke-virtual {p0, v1}, Lcom/android/stocksettings/wifi/WifiSettings;->removeDialog(I)V

    .line 729
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDialog:Lcom/android/stocksettings/wifi/WifiDialog;

    .line 733
    :cond_0
    iput-object p1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    .line 734
    iput-boolean p2, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDlgEdit:Z

    .line 736
    invoke-virtual {p0, v1}, Lcom/android/stocksettings/wifi/WifiSettings;->showDialog(I)V

    .line 737
    return-void
.end method

.method private updateAccessPoints()V
    .locals 5

    .prologue
    const v4, 0x7f0b0205

    const/4 v2, 0x0

    .line 808
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_config_wifi"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 811
    const v0, 0x7f0b0206

    invoke-direct {p0, v0}, Lcom/android/stocksettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 814
    :cond_2
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 816
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 846
    :pswitch_0
    const v0, 0x7f0b01e5

    invoke-direct {p0, v0}, Lcom/android/stocksettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 819
    :pswitch_1
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->constructAccessPoints()Ljava/util/List;

    move-result-object v1

    .line 820
    const-string v0, "persist.env.settings.wifiprior"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 821
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 823
    :cond_3
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 824
    invoke-direct {p0, v4}, Lcom/android/stocksettings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 826
    :cond_4
    const-string v0, "persist.env.settings.wifiprior"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 827
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/wifi/AccessPoint;

    .line 828
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 831
    :cond_5
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    invoke-direct {p0, v4}, Lcom/android/stocksettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 837
    :pswitch_2
    const-string v0, "persist.env.settings.wifiprior"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 838
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->emptyCategory()V

    goto :goto_0

    .line 841
    :cond_6
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto :goto_0

    .line 850
    :pswitch_3
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->setOffMessage()V

    goto :goto_0

    .line 816
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 1060
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1061
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mScanner:Lcom/android/stocksettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/stocksettings/wifi/WifiSettings$Scanner;->pause()V

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1065
    :cond_1
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_3

    .line 1066
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mScanner:Lcom/android/stocksettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/stocksettings/wifi/WifiSettings$Scanner;->pause()V

    .line 1071
    :goto_1
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 1072
    if-eqz p1, :cond_2

    .line 1073
    iput-object p1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 1076
    :cond_2
    const-string v3, "persist.env.settings.wifiprior"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1077
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDefaultTrustAP:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/wifi/WifiSettings;->updateAP(Landroid/preference/PreferenceCategory;)V

    .line 1078
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mConfigedAP:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/wifi/WifiSettings;->updateAP(Landroid/preference/PreferenceCategory;)V

    .line 1079
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mUnKnownAP:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/wifi/WifiSettings;->updateAP(Landroid/preference/PreferenceCategory;)V

    goto :goto_0

    .line 1068
    :cond_3
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mScanner:Lcom/android/stocksettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/stocksettings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_1

    .line 1081
    :cond_4
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_0

    .line 1083
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 1084
    .local v2, preference:Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/stocksettings/wifi/AccessPoint;

    if-eqz v3, :cond_5

    move-object v0, v2

    .line 1085
    check-cast v0, Lcom/android/stocksettings/wifi/AccessPoint;

    .line 1086
    .local v0, accessPoint:Lcom/android/stocksettings/wifi/AccessPoint;
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Lcom/android/stocksettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 1081
    .end local v0           #accessPoint:Lcom/android/stocksettings/wifi/AccessPoint;
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method private updateWifiState(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1093
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1094
    if-eqz v0, :cond_0

    .line 1095
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1098
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1112
    :goto_0
    iput-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 1113
    iput-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 1114
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mScanner:Lcom/android/stocksettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/stocksettings/wifi/WifiSettings$Scanner;->pause()V

    .line 1115
    :goto_1
    return-void

    .line 1100
    :pswitch_0
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mScanner:Lcom/android/stocksettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/stocksettings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_1

    .line 1104
    :pswitch_1
    const v0, 0x7f0b01e4

    invoke-direct {p0, v0}, Lcom/android/stocksettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 1108
    :pswitch_2
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->setOffMessage()V

    goto :goto_0

    .line 1098
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public emptyCategory()V
    .locals 2

    .prologue
    .line 1345
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDefaultTrustAP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1346
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mConfigedAP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1347
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mUnKnownAP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1348
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDefaultTrustAP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 1349
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mConfigedAP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 1350
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mUnKnownAP:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 1351
    return-void
.end method

.method forget()V
    .locals 3

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1210
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/stocksettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :goto_0
    return-void

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1216
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1217
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mScanner:Lcom/android/stocksettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/stocksettings/wifi/WifiSettings$Scanner;->resume()V

    .line 1219
    :cond_1
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 1222
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/stocksettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1289
    iget-boolean v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v0, :cond_0

    .line 1290
    const/4 v0, 0x0

    .line 1292
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0b0773

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/16 v12, 0x10

    const/4 v11, -0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 318
    invoke-super {p0, p1}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.wifi.direct"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mP2pSupported:Z

    .line 321
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 322
    const-string v7, "user"

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    iput-object v7, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mUserManager:Landroid/os/UserManager;

    .line 324
    new-instance v7, Lcom/android/stocksettings/wifi/WifiSettings$5;

    invoke-direct {v7, p0}, Lcom/android/stocksettings/wifi/WifiSettings$5;-><init>(Lcom/android/stocksettings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 339
    new-instance v7, Lcom/android/stocksettings/wifi/WifiSettings$6;

    invoke-direct {v7, p0}, Lcom/android/stocksettings/wifi/WifiSettings$6;-><init>(Lcom/android/stocksettings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 354
    new-instance v7, Lcom/android/stocksettings/wifi/WifiSettings$7;

    invoke-direct {v7, p0}, Lcom/android/stocksettings/wifi/WifiSettings$7;-><init>(Lcom/android/stocksettings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 369
    if-eqz p1, :cond_0

    const-string v7, "wifi_ap_state"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 371
    const-string v7, "edit_mode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDlgEdit:Z

    .line 372
    const-string v7, "wifi_ap_state"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 376
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 379
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "wifi_auto_finish_on_connect"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    .line 381
    iget-boolean v7, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v7, :cond_2

    .line 383
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->hasNextButton()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 384
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 387
    :cond_1
    const-string v7, "connectivity"

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 389
    .local v2, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_2

    invoke-virtual {v2, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 391
    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Landroid/app/Activity;->setResult(I)V

    .line 392
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 461
    .end local v2           #connectivity:Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 399
    :cond_2
    const-string v7, "wifi_enable_next_on_connect"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 401
    iget-boolean v7, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v7, :cond_3

    .line 402
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->hasNextButton()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 403
    const-string v7, "connectivity"

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 405
    .restart local v2       #connectivity:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_3

    .line 406
    invoke-virtual {v2, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 408
    .local v3, info:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/stocksettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 412
    .end local v2           #connectivity:Landroid/net/ConnectivityManager;
    .end local v3           #info:Landroid/net/NetworkInfo;
    :cond_3
    const-string v7, "persist.env.settings.wifiprior"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 413
    const v7, 0x7f05004b

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 414
    const-string v7, "default_trust_access_points"

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDefaultTrustAP:Landroid/preference/PreferenceCategory;

    .line 416
    const-string v7, "configed_access_points"

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mConfigedAP:Landroid/preference/PreferenceCategory;

    .line 417
    const-string v7, "unknown_access_points"

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mUnKnownAP:Landroid/preference/PreferenceCategory;

    .line 423
    :goto_1
    iget-boolean v7, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v7, :cond_4

    .line 424
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v7

    const/high16 v8, 0x1a4

    invoke-virtual {v7, v8}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 433
    :cond_4
    iget-boolean v7, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v7, :cond_7

    .line 434
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 436
    .local v0, actionBarSwitch:Landroid/widget/Switch;
    instance-of v7, v1, Landroid/preference/PreferenceActivity;

    if-eqz v7, :cond_6

    move-object v6, v1

    .line 437
    check-cast v6, Landroid/preference/PreferenceActivity;

    .line 438
    .local v6, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v7

    if-nez v7, :cond_6

    .line 439
    :cond_5
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 441
    .local v5, padding:I
    invoke-virtual {v0, v9, v9, v5, v9}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 442
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v12, v12}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 444
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const v9, 0x800015

    invoke-direct {v8, v11, v11, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v0, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 451
    .end local v5           #padding:I
    .end local v6           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_6
    new-instance v7, Lcom/android/stocksettings/wifi/WifiEnabler;

    invoke-direct {v7, v1, v0}, Lcom/android/stocksettings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v7, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/stocksettings/wifi/WifiEnabler;

    .line 454
    .end local v0           #actionBarSwitch:Landroid/widget/Switch;
    :cond_7
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    .line 455
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 457
    iget-boolean v7, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v7, :cond_8

    .line 458
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 460
    :cond_8
    invoke-virtual {p0, v10}, Lcom/android/stocksettings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    goto/16 :goto_0

    .line 420
    :cond_9
    const v7, 0x7f05004a

    invoke-virtual {p0, v7}, Lcom/android/stocksettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1
.end method

.method onAddNetworkPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1244
    iput-object v2, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    .line 1245
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDialog:Lcom/android/stocksettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDialog:Lcom/android/stocksettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/stocksettings/wifi/WifiDialog;->dismiss()V

    .line 1247
    iput-object v2, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDialog:Lcom/android/stocksettings/wifi/WifiDialog;

    .line 1249
    :cond_0
    iput-object v2, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    .line 1250
    iput-boolean v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDlgEdit:Z

    .line 1251
    new-instance v0, Lcom/android/stocksettings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/stocksettings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/stocksettings/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDialog:Lcom/android/stocksettings/wifi/WifiDialog;

    .line 1252
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDialog:Lcom/android/stocksettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/stocksettings/wifi/WifiDialog;->show()V

    .line 1253
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    .line 1167
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 1168
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->forget()V

    .line 1174
    :cond_0
    :goto_0
    return-void

    .line 1169
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDialog:Lcom/android/stocksettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDialog:Lcom/android/stocksettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/stocksettings/wifi/WifiDialog;->getController()Lcom/android/stocksettings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/wifi/WifiSettings;->submit(Lcom/android/stocksettings/wifi/WifiConfigController;)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 654
    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    if-nez v2, :cond_1

    .line 655
    invoke-super {p0, p1}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 704
    :cond_0
    :goto_0
    return v1

    .line 657
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 704
    invoke-super {p0, p1}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 659
    :pswitch_0
    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 660
    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    iget-object v4, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 662
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->enableAvailableNetwork()V

    goto :goto_0

    .line 664
    :cond_2
    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/stocksettings/wifi/AccessPoint;->security:I

    if-nez v2, :cond_3

    .line 666
    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/stocksettings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 667
    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/stocksettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 669
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->enableAvailableNetwork()V

    goto :goto_0

    .line 671
    :cond_3
    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    invoke-direct {p0, v2, v1}, Lcom/android/stocksettings/wifi/WifiSettings;->showDialog(Lcom/android/stocksettings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 676
    :pswitch_1
    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    iget-object v4, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 680
    :pswitch_2
    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    invoke-direct {p0, v2, v1}, Lcom/android/stocksettings/wifi/WifiSettings;->showDialog(Lcom/android/stocksettings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 684
    :pswitch_3
    const-string v2, "persist.env.settings.autocon"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 687
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->disconnectDuetoAutoConnectMode()V

    .line 688
    iget-boolean v2, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mAutoConnect:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 695
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "default_credible"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 697
    .local v0, sharedPreference:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/stocksettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 699
    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 700
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete Default Credible ap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/stocksettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 657
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "firstRun"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSetupWizardMode:Z

    .line 234
    invoke-super {p0, p1}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 235
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    const/16 v9, 0x9

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 611
    instance-of v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v3, :cond_3

    .line 612
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v4, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 615
    .local v1, preference:Landroid/preference/Preference;
    instance-of v3, v1, Lcom/android/stocksettings/wifi/AccessPoint;

    if-eqz v3, :cond_3

    .line 616
    check-cast v1, Lcom/android/stocksettings/wifi/AccessPoint;

    .end local v1           #preference:Landroid/preference/Preference;
    iput-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    .line 617
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/stocksettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 618
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/stocksettings/wifi/AccessPoint;->getLevel()I

    move-result v3

    if-eq v3, v6, :cond_0

    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/stocksettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-nez v3, :cond_0

    .line 620
    const/4 v3, 0x7

    const v4, 0x7f0b0200

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 623
    :cond_0
    const-string v3, "persist.env.settings.autocon"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 624
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/stocksettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 625
    const/16 v3, 0xa

    const v4, 0x7f0b07f7

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 628
    :cond_1
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    if-eq v3, v6, :cond_3

    .line 629
    const-string v3, "persist.env.settings.wifiprior"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 630
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    invoke-static {v3}, Lcom/android/stocksettings/wifi/AccessPoint;->isCarrierAp(Lcom/android/stocksettings/wifi/AccessPoint;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 631
    const v3, 0x7f0b0201

    invoke-interface {p1, v5, v8, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 641
    :cond_2
    :goto_0
    const v3, 0x7f0b0202

    invoke-interface {p1, v5, v9, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 650
    :cond_3
    :goto_1
    return-void

    .line 633
    :cond_4
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "default_credible"

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 635
    .local v2, sharedPreference:Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/stocksettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 637
    .local v0, isDefCredible:I
    if-ne v0, v7, :cond_2

    .line 638
    const/16 v3, 0xb

    const v4, 0x7f0b0203

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 644
    .end local v0           #isDefCredible:I
    .end local v2           #sharedPreference:Landroid/content/SharedPreferences;
    :cond_5
    const v3, 0x7f0b0201

    invoke-interface {p1, v5, v8, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 645
    const v3, 0x7f0b0202

    invoke-interface {p1, v5, v9, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0b0252

    const v3, 0x7f0b0251

    const/4 v2, 0x0

    .line 741
    packed-switch p1, :pswitch_data_0

    .line 799
    invoke-super {p0, p1}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 743
    :pswitch_0
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    .line 744
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 745
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 746
    new-instance v0, Lcom/android/stocksettings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/android/stocksettings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 748
    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    .line 752
    :cond_0
    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    .line 753
    new-instance v1, Lcom/android/stocksettings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/stocksettings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/stocksettings/wifi/AccessPoint;Z)V

    iput-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDialog:Lcom/android/stocksettings/wifi/WifiDialog;

    .line 754
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDialog:Lcom/android/stocksettings/wifi/WifiDialog;

    goto :goto_0

    .line 756
    :pswitch_1
    new-instance v0, Lcom/android/stocksettings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/android/stocksettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 758
    :pswitch_2
    new-instance v0, Lcom/android/stocksettings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/stocksettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 760
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0253

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/stocksettings/wifi/WifiSettings$9;

    invoke-direct {v1, p0}, Lcom/android/stocksettings/wifi/WifiSettings$9;-><init>(Lcom/android/stocksettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/stocksettings/wifi/WifiSettings$8;

    invoke-direct {v1, p0}, Lcom/android/stocksettings/wifi/WifiSettings$8;-><init>(Lcom/android/stocksettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 779
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0254

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/stocksettings/wifi/WifiSettings$11;

    invoke-direct {v1, p0}, Lcom/android/stocksettings/wifi/WifiSettings$11;-><init>(Lcom/android/stocksettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/stocksettings/wifi/WifiSettings$10;

    invoke-direct {v1, p0}, Lcom/android/stocksettings/wifi/WifiSettings$10;-><init>(Lcom/android/stocksettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 741
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v7, 0x7f0200bc

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 506
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_config_wifi"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 509
    .local v0, wifiIsEnabled:Z
    iget-boolean v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v1, :cond_1

    .line 511
    const v1, 0x7f0b01fa

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 515
    const v1, 0x7f0b01f8

    invoke-interface {p1, v3, v6, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 543
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    .line 519
    :cond_1
    const v1, 0x7f0b01fa

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 523
    const v1, 0x7f0b01f8

    invoke-interface {p1, v3, v6, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02005c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 527
    const/4 v1, 0x6

    const v2, 0x7f0b01fe

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 531
    const v1, 0x7f0b01fc

    invoke-interface {p1, v3, v5, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 534
    iget-boolean v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v1, :cond_2

    .line 535
    const/4 v1, 0x3

    const v2, 0x7f0b01fd

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 539
    :cond_2
    const/4 v1, 0x5

    const v2, 0x7f0b01ff

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 240
    iget-boolean v5, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v5, :cond_3

    .line 241
    const v5, 0x7f040084

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 242
    .local v4, view:Landroid/view/View;
    const v5, 0x7f08016c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 243
    .local v3, other:Landroid/view/View;
    new-instance v5, Lcom/android/stocksettings/wifi/WifiSettings$2;

    invoke-direct {v5, p0}, Lcom/android/stocksettings/wifi/WifiSettings$2;-><init>(Lcom/android/stocksettings/wifi/WifiSettings;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    const v5, 0x7f08004c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 252
    .local v0, b:Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 253
    new-instance v5, Lcom/android/stocksettings/wifi/WifiSettings$3;

    invoke-direct {v5, p0, p1, v0}, Lcom/android/stocksettings/wifi/WifiSettings$3;-><init>(Lcom/android/stocksettings/wifi/WifiSettings;Landroid/view/LayoutInflater;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 276
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "wifi_show_custom_button"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 277
    const v5, 0x7f08016f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 278
    const v5, 0x7f080170

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 279
    const v5, 0x7f080172

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 280
    const v5, 0x7f08002a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 282
    const v5, 0x7f080171

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 283
    .local v1, customButton:Landroid/widget/Button;
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 284
    new-instance v5, Lcom/android/stocksettings/wifi/WifiSettings$4;

    invoke-direct {v5, p0}, Lcom/android/stocksettings/wifi/WifiSettings$4;-><init>(Lcom/android/stocksettings/wifi/WifiSettings;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    .end local v1           #customButton:Landroid/widget/Button;
    :cond_1
    const-string v5, "wifi_show_wifi_required_info"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 307
    const v5, 0x7f08016b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 312
    .end local v0           #b:Landroid/widget/ImageButton;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #other:Landroid/view/View;
    .end local v4           #view:Landroid/view/View;
    :cond_2
    :goto_0
    return-object v4

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 493
    invoke-super {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onDestroy()V

    .line 494
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDialog:Lcom/android/stocksettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDialog:Lcom/android/stocksettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/stocksettings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDialog:Lcom/android/stocksettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/stocksettings/wifi/WifiDialog;->dismiss()V

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDisableApList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 499
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDisableApList:Ljava/util/ArrayList;

    .line 501
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 564
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_config_wifi"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    :goto_0
    return v6

    .line 566
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 606
    invoke-super {p0, p1}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto :goto_0

    .line 568
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/wifi/WifiSettings;->showDialog(I)V

    move v6, v7

    .line 569
    goto :goto_0

    .line 571
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1

    .line 572
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/stocksettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0283

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v6, v7

    .line 580
    goto :goto_0

    .line 578
    :cond_1
    const-class v0, Lcom/android/stocksettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0, v3, v2}, Lcom/android/stocksettings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 582
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/wifi/WifiSettings;->showDialog(I)V

    move v6, v7

    .line 583
    goto :goto_0

    .line 585
    :pswitch_3
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 586
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mScanner:Lcom/android/stocksettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/stocksettings/wifi/WifiSettings$Scanner;->forceScan()V

    :cond_2
    move v6, v7

    .line 588
    goto :goto_0

    .line 590
    :pswitch_4
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 591
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->onAddNetworkPressed()V

    :cond_3
    move v6, v7

    .line 593
    goto :goto_0

    .line 595
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_4

    .line 596
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b026e

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_2
    move v6, v7

    .line 604
    goto :goto_0

    .line 602
    :cond_4
    const-class v0, Lcom/android/stocksettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0, v3, v2}, Lcom/android/stocksettings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_2

    .line 566
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 483
    invoke-super {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onPause()V

    .line 484
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/stocksettings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/stocksettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/stocksettings/wifi/WifiEnabler;->pause()V

    .line 487
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 488
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mScanner:Lcom/android/stocksettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/stocksettings/wifi/WifiSettings$Scanner;->pause()V

    .line 489
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 709
    instance-of v0, p2, Lcom/android/stocksettings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 710
    check-cast p2, Lcom/android/stocksettings/wifi/AccessPoint;

    .end local p2
    iput-object p2, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    .line 712
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/stocksettings/wifi/AccessPoint;->security:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 714
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/stocksettings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 715
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/stocksettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 716
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->enableAvailableNetwork()V

    .line 723
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/stocksettings/wifi/WifiSettings;->showDialog(Lcom/android/stocksettings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 721
    .restart local p2
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 465
    invoke-super {p0}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onResume()V

    .line 466
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/stocksettings/wifi/WifiEnabler;

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/stocksettings/wifi/WifiEnabler;

    invoke-virtual {v1}, Lcom/android/stocksettings/wifi/WifiEnabler;->resume()V

    .line 470
    :cond_0
    const-string v1, "persist.env.settings.autocon"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 471
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_auto_connect_type"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mAutoConnect:Z

    .line 477
    :cond_2
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 478
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 479
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 548
    invoke-super {p0, p1}, Lcom/android/stocksettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 551
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDialog:Lcom/android/stocksettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDialog:Lcom/android/stocksettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/stocksettings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 553
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 554
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 555
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 556
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 559
    :cond_0
    return-void
.end method

.method refreshAccessPoints()V
    .locals 2

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mScanner:Lcom/android/stocksettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/stocksettings/wifi/WifiSettings$Scanner;->resume()V

    .line 1232
    :cond_0
    const-string v0, "persist.env.settings.wifiprior"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1233
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->emptyCategory()V

    .line 1237
    :goto_0
    return-void

    .line 1235
    :cond_1
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto :goto_0
.end method

.method resumeWifiScan()V
    .locals 1

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mScanner:Lcom/android/stocksettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/stocksettings/wifi/WifiSettings$Scanner;->resume()V

    .line 1285
    :cond_0
    return-void
.end method

.method submit(Lcom/android/stocksettings/wifi/WifiConfigController;)V
    .locals 4
    .parameter "configController"

    .prologue
    const/4 v2, -0x1

    .line 1178
    invoke-virtual {p1}, Lcom/android/stocksettings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1180
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_2

    .line 1181
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    if-eq v1, v2, :cond_0

    .line 1183
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1185
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->enableAvailableNetwork()V

    .line 1201
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1202
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mScanner:Lcom/android/stocksettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/stocksettings/wifi/WifiSettings$Scanner;->resume()V

    .line 1204
    :cond_1
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 1205
    return-void

    .line 1188
    :cond_2
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v2, :cond_3

    .line 1189
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/stocksettings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 1190
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1193
    :cond_3
    invoke-virtual {p1}, Lcom/android/stocksettings/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1194
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1196
    :cond_4
    iget-object v1, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1197
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/WifiSettings;->enableAvailableNetwork()V

    goto :goto_0
.end method

.method public updateAP(Landroid/preference/PreferenceCategory;)V
    .locals 5
    .parameter "screen"

    .prologue
    .line 1335
    invoke-virtual {p1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 1336
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 1337
    .local v2, preference:Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/stocksettings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 1338
    check-cast v0, Lcom/android/stocksettings/wifi/AccessPoint;

    .line 1339
    .local v0, accessPoint:Lcom/android/stocksettings/wifi/AccessPoint;
    iget-object v3, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/stocksettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Lcom/android/stocksettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 1335
    .end local v0           #accessPoint:Lcom/android/stocksettings/wifi/AccessPoint;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1342
    .end local v2           #preference:Landroid/preference/Preference;
    :cond_1
    return-void
.end method
