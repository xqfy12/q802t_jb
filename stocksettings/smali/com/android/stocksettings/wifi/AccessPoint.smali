.class Lcom/android/stocksettings/wifi/AccessPoint;
.super Landroid/preference/Preference;
.source "AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stocksettings/wifi/AccessPoint$1;,
        Lcom/android/stocksettings/wifi/AccessPoint$PskType;
    }
.end annotation


# static fields
.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I


# instance fields
.field bssid:Ljava/lang/String;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mRssi:I

.field mScanResult:Landroid/net/wifi/ScanResult;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field networkId:I

.field pskType:Lcom/android/stocksettings/wifi/AccessPoint$PskType;

.field security:I

.field ssid:Ljava/lang/String;

.field wpsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/android/stocksettings/wifi/AccessPoint;->STATE_SECURED:[I

    .line 50
    new-array v0, v2, [I

    sput-object v0, Lcom/android/stocksettings/wifi/AccessPoint;->STATE_NONE:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 1
    .parameter "context"
    .parameter "result"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 78
    sget-object v0, Lcom/android/stocksettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/stocksettings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->pskType:Lcom/android/stocksettings/wifi/AccessPoint$PskType;

    .line 188
    const v0, 0x7f04006f

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 189
    invoke-direct {p0, p2}, Lcom/android/stocksettings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 190
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/AccessPoint;->refresh()V

    .line 191
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "context"
    .parameter "config"

    .prologue
    .line 180
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 78
    sget-object v0, Lcom/android/stocksettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/stocksettings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->pskType:Lcom/android/stocksettings/wifi/AccessPoint$PskType;

    .line 181
    const v0, 0x7f04006f

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 182
    invoke-direct {p0, p2}, Lcom/android/stocksettings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 183
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/AccessPoint;->refresh()V

    .line 184
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .parameter "context"
    .parameter "savedState"

    .prologue
    .line 194
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 78
    sget-object v0, Lcom/android/stocksettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/stocksettings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->pskType:Lcom/android/stocksettings/wifi/AccessPoint$PskType;

    .line 195
    const v0, 0x7f04006f

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 197
    const-string v0, "key_config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 198
    iget-object v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/stocksettings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 201
    :cond_0
    const-string v0, "key_scanresult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 202
    iget-object v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v0}, Lcom/android/stocksettings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 205
    :cond_1
    const-string v0, "key_wifiinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 206
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/stocksettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 210
    return-void
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/stocksettings/wifi/AccessPoint$PskType;
    .locals 5
    .parameter "result"

    .prologue
    .line 165
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 166
    .local v0, wpa:Z
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 167
    .local v1, wpa2:Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 168
    sget-object v2, Lcom/android/stocksettings/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/android/stocksettings/wifi/AccessPoint$PskType;

    .line 175
    :goto_0
    return-object v2

    .line 169
    :cond_0
    if-eqz v1, :cond_1

    .line 170
    sget-object v2, Lcom/android/stocksettings/wifi/AccessPoint$PskType;->WPA2:Lcom/android/stocksettings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 171
    :cond_1
    if-eqz v0, :cond_2

    .line 172
    sget-object v2, Lcom/android/stocksettings/wifi/AccessPoint$PskType;->WPA:Lcom/android/stocksettings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 174
    :cond_2
    const-string v2, "Settings.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received abnormal flag string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v2, Lcom/android/stocksettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/stocksettings/wifi/AccessPoint$PskType;

    goto :goto_0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .parameter "result"

    .prologue
    .line 108
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    .line 110
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const/4 v0, 0x2

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    const/4 v0, 0x3

    goto :goto_0

    .line 115
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    const/4 v0, 0x4

    goto :goto_0

    .line 117
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 118
    const/4 v0, 0x5

    goto :goto_0

    .line 121
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .parameter "config"

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v2

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v4

    .line 93
    goto :goto_0

    .line 96
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v3

    .line 97
    goto :goto_0

    .line 99
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 100
    const/4 v0, 0x5

    goto :goto_0

    .line 104
    :cond_5
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static isCarrierAp(Lcom/android/stocksettings/wifi/AccessPoint;)Z
    .locals 4
    .parameter "mAccessPoint"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 449
    if-nez p0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return v0

    .line 452
    :cond_1
    const-string v2, "persist.env.settings.wifiprior"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    const-string v2, "CMCC"

    iget-object v3, p0, Lcom/android/stocksettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "CMCC-EDU"

    iget-object v3, p0, Lcom/android/stocksettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 457
    :cond_2
    iget v2, p0, Lcom/android/stocksettings/wifi/AccessPoint;->security:I

    if-nez v2, :cond_3

    move v0, v1

    .line 458
    goto :goto_0

    .line 462
    :cond_3
    const-string v2, "CMCC-AUTO"

    iget-object v3, p0, Lcom/android/stocksettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    iget v2, p0, Lcom/android/stocksettings/wifi/AccessPoint;->security:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 464
    goto :goto_0
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 222
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 223
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 224
    invoke-static {p1}, Lcom/android/stocksettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->security:I

    .line 225
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    .line 226
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mRssi:I

    .line 227
    iput-object p1, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 228
    return-void

    .line 222
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/stocksettings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadResult(Landroid/net/wifi/ScanResult;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 231
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 232
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 233
    invoke-static {p1}, Lcom/android/stocksettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->security:I

    .line 234
    iget v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->security:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 235
    iget v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 236
    invoke-static {p1}, Lcom/android/stocksettings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/stocksettings/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->pskType:Lcom/android/stocksettings/wifi/AccessPoint$PskType;

    .line 237
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    .line 238
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mRssi:I

    .line 239
    iput-object p1, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 240
    return-void

    .line 234
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refresh()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 384
    iget-object v3, p0, Lcom/android/stocksettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 386
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 387
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v3, v5, :cond_0

    .line 388
    iget-object v3, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    packed-switch v3, :pswitch_data_0

    .line 431
    :goto_0
    return-void

    .line 390
    :pswitch_0
    const v3, 0x7f0b022f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 394
    :pswitch_1
    const v3, 0x7f0b022e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 397
    :pswitch_2
    const v3, 0x7f0b0230

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 400
    :pswitch_3
    const v3, 0x7f0b022d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 402
    :cond_0
    iget v3, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mRssi:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1

    .line 403
    const v3, 0x7f0b0231

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 404
    :cond_1
    iget-object v3, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v3, :cond_2

    .line 405
    iget-object v3, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v3}, Lcom/android/stocksettings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 407
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    .local v2, summary:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_3

    .line 409
    const v3, 0x7f0b022c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_3
    iget v3, p0, Lcom/android/stocksettings/wifi/AccessPoint;->security:I

    if-eqz v3, :cond_4

    .line 414
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 415
    const v3, 0x7f0b0234

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, securityStrFormat:Ljava/lang/String;
    :goto_1
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0, v5}, Lcom/android/stocksettings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .end local v1           #securityStrFormat:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/stocksettings/wifi/AccessPoint;->wpsAvailable:Z

    if-eqz v3, :cond_5

    .line 423
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 424
    const v3, 0x7f0b0232

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :cond_5
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/stocksettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 417
    :cond_6
    const v3, 0x7f0b0235

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #securityStrFormat:Ljava/lang/String;
    goto :goto_1

    .line 426
    .end local v1           #securityStrFormat:Ljava/lang/String;
    :cond_7
    const v3, 0x7f0b0233

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 388
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 370
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 371
    .local v0, length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 373
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 375
    .end local p0
    :cond_0
    return-object p0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 6
    .parameter "preference"

    .prologue
    const v5, 0x7fffffff

    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 258
    instance-of v3, p1, Lcom/android/stocksettings/wifi/AccessPoint;

    if-nez v3, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v0

    :cond_1
    move-object v1, p1

    .line 261
    check-cast v1, Lcom/android/stocksettings/wifi/AccessPoint;

    .line 263
    .local v1, other:Lcom/android/stocksettings/wifi/AccessPoint;
    iget-object v3, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/stocksettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    .line 264
    :cond_2
    iget-object v3, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/android/stocksettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_0

    .line 266
    :cond_3
    const-string v3, "persist.env.settings.wifiprior"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 267
    invoke-static {p0}, Lcom/android/stocksettings/wifi/AccessPoint;->isCarrierAp(Lcom/android/stocksettings/wifi/AccessPoint;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 268
    invoke-static {v1}, Lcom/android/stocksettings/wifi/AccessPoint;->isCarrierAp(Lcom/android/stocksettings/wifi/AccessPoint;)Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v2

    .line 269
    goto :goto_0

    .line 271
    :cond_4
    invoke-static {v1}, Lcom/android/stocksettings/wifi/AccessPoint;->isCarrierAp(Lcom/android/stocksettings/wifi/AccessPoint;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 277
    :cond_5
    iget v3, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mRssi:I

    if-eq v3, v5, :cond_6

    iget v3, v1, Lcom/android/stocksettings/wifi/AccessPoint;->mRssi:I

    if-ne v3, v5, :cond_6

    move v0, v2

    goto :goto_0

    .line 278
    :cond_6
    iget v3, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mRssi:I

    if-ne v3, v5, :cond_7

    iget v3, v1, Lcom/android/stocksettings/wifi/AccessPoint;->mRssi:I

    if-ne v3, v5, :cond_0

    .line 281
    :cond_7
    iget v3, p0, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    if-eq v3, v2, :cond_8

    iget v3, v1, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    if-ne v3, v2, :cond_8

    move v0, v2

    .line 282
    goto :goto_0

    .line 283
    :cond_8
    iget v3, p0, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    if-ne v3, v2, :cond_9

    iget v3, v1, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    if-ne v3, v2, :cond_0

    .line 287
    :cond_9
    iget v2, v1, Lcom/android/stocksettings/wifi/AccessPoint;->mRssi:I

    iget v3, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mRssi:I

    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    .line 288
    .local v0, difference:I
    if-nez v0, :cond_0

    .line 292
    iget-object v2, p0, Lcom/android/stocksettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/stocksettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/stocksettings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 297
    instance-of v1, p1, Lcom/android/stocksettings/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 298
    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    check-cast p1, Lcom/android/stocksettings/wifi/AccessPoint;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/stocksettings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected generateOpenNetworkConfig()V
    .locals 2

    .prologue
    .line 439
    iget v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_0

    .line 440
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 446
    :goto_0
    return-void

    .line 443
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 444
    iget-object v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/stocksettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/stocksettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 445
    iget-object v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 351
    iget v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 352
    const/4 v0, -0x1

    .line 354
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 3
    .parameter "concise"

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 126
    .local v0, context:Landroid/content/Context;
    iget v1, p0, Lcom/android/stocksettings/wifi/AccessPoint;->security:I

    packed-switch v1, :pswitch_data_0

    .line 160
    if-eqz p1, :cond_8

    const-string v1, ""

    :goto_0
    return-object v1

    .line 128
    :pswitch_0
    if-eqz p1, :cond_0

    const v1, 0x7f0b023b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f0b0244

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 131
    :pswitch_1
    sget-object v1, Lcom/android/stocksettings/wifi/AccessPoint$1;->$SwitchMap$com$android$settings$wifi$AccessPoint$PskType:[I

    iget-object v2, p0, Lcom/android/stocksettings/wifi/AccessPoint;->pskType:Lcom/android/stocksettings/wifi/AccessPoint$PskType;

    invoke-virtual {v2}, Lcom/android/stocksettings/wifi/AccessPoint$PskType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 143
    if-eqz p1, :cond_4

    const v1, 0x7f0b023a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 133
    :pswitch_2
    if-eqz p1, :cond_1

    const v1, 0x7f0b0237

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v1, 0x7f0b0240

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 136
    :pswitch_3
    if-eqz p1, :cond_2

    const v1, 0x7f0b0238

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const v1, 0x7f0b0241

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 139
    :pswitch_4
    if-eqz p1, :cond_3

    const v1, 0x7f0b0239

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const v1, 0x7f0b0242

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 143
    :cond_4
    const v1, 0x7f0b0243

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 147
    :pswitch_5
    if-eqz p1, :cond_5

    const v1, 0x7f0b0236

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const v1, 0x7f0b023f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 151
    :pswitch_6
    if-eqz p1, :cond_6

    const v1, 0x7f0b023c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    const v1, 0x7f0b0245

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 154
    :pswitch_7
    if-eqz p1, :cond_7

    const v1, 0x7f0b023d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    const v1, 0x7f0b0246

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 160
    :cond_8
    const v1, 0x7f0b023e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 131
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method getState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, result:I
    iget-object v1, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    .line 305
    :cond_0
    iget v1, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mRssi:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    .line 306
    iget v1, p0, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    .line 307
    iget-object v1, p0, Lcom/android/stocksettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    .line 308
    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 245
    const v1, 0x7f080123

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 246
    .local v0, signal:Landroid/widget/ImageView;
    iget v1, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mRssi:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 247
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AccessPoint;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 250
    const v1, 0x7f0200e4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 251
    iget v1, p0, Lcom/android/stocksettings/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/stocksettings/wifi/AccessPoint;->STATE_SECURED:[I

    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/stocksettings/wifi/AccessPoint;->STATE_NONE:[I

    goto :goto_1
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 213
    const-string v0, "key_config"

    iget-object v1, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 214
    const-string v0, "key_scanresult"

    iget-object v1, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 215
    const-string v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 216
    iget-object v0, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_0

    .line 217
    const-string v0, "key_detailedstate"

    iget-object v1, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_0
    return-void
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter "info"
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, reorder:Z
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/android/stocksettings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 334
    iget-object v1, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 335
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mRssi:I

    .line 336
    iput-object p1, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 337
    iput-object p2, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 338
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/AccessPoint;->refresh()V

    .line 345
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AccessPoint;->notifyHierarchyChanged()V

    .line 348
    :cond_1
    return-void

    .line 334
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 339
    :cond_3
    iget-object v1, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    .line 340
    const/4 v0, 0x1

    .line 341
    iput-object v3, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 342
    iput-object v3, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 343
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/AccessPoint;->refresh()V

    goto :goto_1
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .parameter "result"

    .prologue
    .line 312
    iget-object v1, p0, Lcom/android/stocksettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/stocksettings/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/stocksettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 313
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v2, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mRssi:I

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v1

    if-lez v1, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 315
    .local v0, oldLevel:I
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/android/stocksettings/wifi/AccessPoint;->mRssi:I

    .line 316
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/android/stocksettings/wifi/AccessPoint;->notifyChanged()V

    .line 321
    .end local v0           #oldLevel:I
    :cond_0
    iget v1, p0, Lcom/android/stocksettings/wifi/AccessPoint;->security:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 322
    invoke-static {p1}, Lcom/android/stocksettings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/stocksettings/wifi/AccessPoint$PskType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stocksettings/wifi/AccessPoint;->pskType:Lcom/android/stocksettings/wifi/AccessPoint$PskType;

    .line 324
    :cond_1
    invoke-direct {p0}, Lcom/android/stocksettings/wifi/AccessPoint;->refresh()V

    .line 325
    const/4 v1, 0x1

    .line 327
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
