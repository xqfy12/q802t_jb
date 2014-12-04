.class public Lcom/android/stocksettings/MasterClearConfirm;
.super Landroid/app/Fragment;
.source "MasterClearConfirm.java"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mEraseInternalSdCard:Z

.field private mEraseSdCard:Z

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 114
    new-instance v0, Lcom/android/stocksettings/MasterClearConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/stocksettings/MasterClearConfirm$1;-><init>(Lcom/android/stocksettings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/stocksettings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/stocksettings/MasterClearConfirm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/stocksettings/MasterClearConfirm;->mEraseSdCard:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/stocksettings/MasterClearConfirm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/stocksettings/MasterClearConfirm;->mEraseInternalSdCard:Z

    return v0
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/stocksettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/stocksettings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    .line 155
    iget-object v0, p0, Lcom/android/stocksettings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/stocksettings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/stocksettings/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 171
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v1, "erase_sd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/android/stocksettings/MasterClearConfirm;->mEraseSdCard:Z

    .line 172
    if-eqz v0, :cond_0

    const-string v1, "erase_internal_sd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_0
    iput-boolean v2, p0, Lcom/android/stocksettings/MasterClearConfirm;->mEraseInternalSdCard:Z

    .line 174
    return-void

    :cond_1
    move v1, v2

    .line 171
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 161
    const v0, 0x7f040049

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    .line 162
    invoke-direct {p0}, Lcom/android/stocksettings/MasterClearConfirm;->establishFinalConfirmationState()V

    .line 163
    iget-object v0, p0, Lcom/android/stocksettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "filepath"

    .prologue
    const/4 v4, 0x0

    .line 87
    const/4 v3, 0x0

    .line 89
    .local v3, mode:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_0

    .line 106
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return-object v4

    .line 94
    .restart local v1       #file:Ljava/io/File;
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chmod 777 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    :goto_1
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 99
    .local v2, input:Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 101
    const-string v5, "MasterClearConfirm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changzhe mRingerMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 106
    goto :goto_0

    .line 95
    .end local v2           #input:Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 96
    .local v0, ex:Ljava/lang/Exception;
    const-string v5, "MasterClearConfirm"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 102
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #file:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 103
    .local v0, ex:Ljava/io/IOException;
    const-string v5, "MasterClearConfirm"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeFile(Ljava/lang/String;)V
    .locals 6
    .parameter "mode"

    .prologue
    .line 68
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/persist/autorun_check.conf"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    :cond_0
    :try_start_1
    const-string v3, "MasterClearConfirm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeFile() mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "chmod 777 /persist/autorun_check.conf"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 76
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 77
    .local v2, output:Ljava/io/BufferedWriter;
    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    .end local v1           #file:Ljava/io/File;
    .end local v2           #output:Ljava/io/BufferedWriter;
    :goto_0
    return-void

    .line 79
    .restart local v1       #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 80
    .local v0, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "MasterClearConfirm"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 82
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #file:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 83
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v3, "MasterClearConfirm"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
