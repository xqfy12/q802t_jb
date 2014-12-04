.class public Lcom/android/stocksettings/deviceinfo/CheckPackage;
.super Landroid/app/Activity;
.source "CheckPackage.java"


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field mBatteryOk:Z

.field m_OK:Landroid/widget/Button;

.field m_promt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage;->mBatteryOk:Z

    .line 46
    new-instance v0, Lcom/android/stocksettings/deviceinfo/CheckPackage$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/deviceinfo/CheckPackage$1;-><init>(Lcom/android/stocksettings/deviceinfo/CheckPackage;)V

    iput-object v0, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/stocksettings/deviceinfo/CheckPackage;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/stocksettings/deviceinfo/CheckPackage;->getVersionInfor(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/stocksettings/deviceinfo/CheckPackage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/stocksettings/deviceinfo/CheckPackage;->showAlert()V

    return-void
.end method

.method private getVersionInfor(Ljava/lang/String;)Z
    .locals 8
    .parameter "DevicePath"

    .prologue
    const/4 v4, 0x0

    .line 236
    const/4 v1, 0x0

    .line 237
    .local v1, reader:Ljava/io/BufferedReader;
    const-string v3, ""

    .line 240
    .local v3, temp:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x100

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 241
    .end local v1           #reader:Ljava/io/BufferedReader;
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 243
    const-string v5, "HWY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "version infor="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 247
    if-eqz v3, :cond_0

    .line 250
    const/4 v4, 0x1

    move-object v1, v2

    .line 260
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :goto_0
    return v4

    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :cond_0
    move-object v1, v2

    .line 253
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 258
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 259
    .local v0, e:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 258
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 254
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private showAlert()V
    .locals 6

    .prologue
    .line 177
    iget-boolean v3, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage;->mBatteryOk:Z

    if-nez v3, :cond_0

    .line 230
    :goto_0
    return-void

    .line 181
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 182
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 183
    .local v1, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f04005e

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 184
    .local v2, textEntryView:Landroid/view/View;
    const v3, 0x7f02008b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 185
    const v3, 0x7f0b0817

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 186
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 187
    const-string v3, "UpdatingPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/CheckPackage;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const v3, 0x7f0b047c

    new-instance v4, Lcom/android/stocksettings/deviceinfo/CheckPackage$3;

    invoke-direct {v4, p0, v2}, Lcom/android/stocksettings/deviceinfo/CheckPackage$3;-><init>(Lcom/android/stocksettings/deviceinfo/CheckPackage;Landroid/view/View;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 221
    const v3, 0x7f0b047d

    new-instance v4, Lcom/android/stocksettings/deviceinfo/CheckPackage$4;

    invoke-direct {v4, p0}, Lcom/android/stocksettings/deviceinfo/CheckPackage$4;-><init>(Lcom/android/stocksettings/deviceinfo/CheckPackage;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 226
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/high16 v6, 0x4190

    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const v1, 0x7f05000b

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/CheckPackage;->setContentView(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/stocksettings/deviceinfo/CheckPackage;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 110
    .local v0, display:Landroid/view/Display;
    const v1, 0x7f080224

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/CheckPackage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage;->m_promt:Landroid/widget/TextView;

    .line 112
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage;->m_promt:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe6666666666666L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 113
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage;->m_promt:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 114
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage;->m_promt:Landroid/widget/TextView;

    const v2, 0x7f0b081b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 119
    const v1, 0x7f080225

    invoke-virtual {p0, v1}, Lcom/android/stocksettings/deviceinfo/CheckPackage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage;->m_OK:Landroid/widget/Button;

    .line 120
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage;->m_OK:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fd3333333333333L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setWidth(I)V

    .line 121
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage;->m_OK:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setTextSize(F)V

    .line 122
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage;->m_OK:Landroid/widget/Button;

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage;->m_OK:Landroid/widget/Button;

    new-instance v2, Lcom/android/stocksettings/deviceinfo/CheckPackage$2;

    invoke-direct {v2, p0}, Lcom/android/stocksettings/deviceinfo/CheckPackage$2;-><init>(Lcom/android/stocksettings/deviceinfo/CheckPackage;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 95
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/deviceinfo/CheckPackage;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 100
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/CheckPackage;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/stocksettings/deviceinfo/CheckPackage;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    return-void
.end method
