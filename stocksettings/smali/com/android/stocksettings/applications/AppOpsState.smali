.class public Lcom/android/stocksettings/applications/AppOpsState;
.super Ljava/lang/Object;
.source "AppOpsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stocksettings/applications/AppOpsState$AppOpEntry;,
        Lcom/android/stocksettings/applications/AppOpsState$AppEntry;,
        Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;
    }
.end annotation


# static fields
.field public static final ALL_TEMPLATES:[Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;

.field public static final APP_OP_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/stocksettings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final BOOTUP_TEMPLATE:Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;

.field public static final DEVICE_TEMPLATE:Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;

.field public static final LOCATION_TEMPLATE:Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;

.field public static final MESSAGING_TEMPLATE:Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;

.field public static final PERSONAL_TEMPLATE:Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;


# instance fields
.field final mAppOps:Landroid/app/AppOpsManager;

.field final mContext:Landroid/content/Context;

.field final mOpLabels:[Ljava/lang/CharSequence;

.field final mOpSummaries:[Ljava/lang/CharSequence;

.field final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x5

    const/4 v5, 0x0

    const/16 v4, 0xc

    const/4 v3, 0x1

    .line 99
    new-instance v0, Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    new-array v2, v6, [Z

    fill-array-data v2, :array_1

    invoke-direct {v0, v1, v2}, Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/stocksettings/applications/AppOpsState;->LOCATION_TEMPLATE:Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;

    .line 112
    new-instance v0, Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;

    new-array v1, v7, [I

    fill-array-data v1, :array_2

    new-array v2, v7, [Z

    fill-array-data v2, :array_3

    invoke-direct {v0, v1, v2}, Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/stocksettings/applications/AppOpsState;->PERSONAL_TEMPLATE:Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;

    .line 131
    new-instance v0, Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;

    new-array v1, v4, [I

    fill-array-data v1, :array_4

    new-array v2, v4, [Z

    fill-array-data v2, :array_5

    invoke-direct {v0, v1, v2}, Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/stocksettings/applications/AppOpsState;->MESSAGING_TEMPLATE:Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;

    .line 158
    new-instance v0, Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;

    new-array v1, v4, [I

    fill-array-data v1, :array_6

    new-array v2, v4, [Z

    fill-array-data v2, :array_7

    invoke-direct {v0, v1, v2}, Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/stocksettings/applications/AppOpsState;->DEVICE_TEMPLATE:Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;

    .line 185
    new-instance v0, Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;

    new-array v1, v3, [I

    const/16 v2, 0x25

    aput v2, v1, v5

    new-array v2, v3, [Z

    aput-boolean v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/stocksettings/applications/AppOpsState;->BOOTUP_TEMPLATE:Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;

    .line 190
    new-array v0, v6, [Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;

    sget-object v1, Lcom/android/stocksettings/applications/AppOpsState;->LOCATION_TEMPLATE:Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/stocksettings/applications/AppOpsState;->PERSONAL_TEMPLATE:Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lcom/android/stocksettings/applications/AppOpsState;->MESSAGING_TEMPLATE:Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/stocksettings/applications/AppOpsState;->DEVICE_TEMPLATE:Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/stocksettings/applications/AppOpsState;->BOOTUP_TEMPLATE:Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/stocksettings/applications/AppOpsState;->ALL_TEMPLATES:[Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;

    .line 403
    new-instance v0, Lcom/android/stocksettings/applications/AppOpsState$1;

    invoke-direct {v0}, Lcom/android/stocksettings/applications/AppOpsState$1;-><init>()V

    sput-object v0, Lcom/android/stocksettings/applications/AppOpsState;->APP_OP_COMPARATOR:Ljava/util/Comparator;

    return-void

    .line 99
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 112
    nop

    :array_2
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 131
    :array_4
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 158
    :array_6
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/stocksettings/applications/AppOpsState;->mContext:Landroid/content/Context;

    .line 57
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/stocksettings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/applications/AppOpsState;->mOpSummaries:[Ljava/lang/CharSequence;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stocksettings/applications/AppOpsState;->mOpLabels:[Ljava/lang/CharSequence;

    .line 61
    return-void
.end method

.method private addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/stocksettings/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V
    .locals 8
    .parameter
    .parameter "pkgOps"
    .parameter "appEntry"
    .parameter "opEntry"
    .parameter "allowMerge"
    .parameter "switchOrder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/stocksettings/applications/AppOpsState$AppOpEntry;",
            ">;",
            "Landroid/app/AppOpsManager$PackageOps;",
            "Lcom/android/stocksettings/applications/AppOpsState$AppEntry;",
            "Landroid/app/AppOpsManager$OpEntry;",
            "ZI)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, entries:Ljava/util/List;,"Ljava/util/List<Lcom/android/stocksettings/applications/AppOpsState$AppOpEntry;>;"
    if-eqz p5, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 426
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/stocksettings/applications/AppOpsState$AppOpEntry;

    .line 427
    .local v2, last:Lcom/android/stocksettings/applications/AppOpsState$AppOpEntry;
    invoke-virtual {v2}, Lcom/android/stocksettings/applications/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/stocksettings/applications/AppOpsState$AppEntry;

    move-result-object v4

    if-ne v4, p3, :cond_2

    .line 428
    invoke-virtual {v2}, Lcom/android/stocksettings/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 429
    .local v3, lastExe:Z
    :goto_0
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 430
    .local v1, entryExe:Z
    :goto_1
    if-ne v3, v1, :cond_2

    .line 433
    invoke-virtual {v2, p4}, Lcom/android/stocksettings/applications/AppOpsState$AppOpEntry;->addOp(Landroid/app/AppOpsManager$OpEntry;)V

    .line 447
    .end local v1           #entryExe:Z
    .end local v2           #last:Lcom/android/stocksettings/applications/AppOpsState$AppOpEntry;
    .end local v3           #lastExe:Z
    :goto_2
    return-void

    .line 428
    .restart local v2       #last:Lcom/android/stocksettings/applications/AppOpsState$AppOpEntry;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 429
    .restart local v3       #lastExe:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 438
    .end local v2           #last:Lcom/android/stocksettings/applications/AppOpsState$AppOpEntry;
    .end local v3           #lastExe:Z
    :cond_2
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v4

    invoke-virtual {p3, v4}, Lcom/android/stocksettings/applications/AppOpsState$AppEntry;->getOpSwitch(I)Lcom/android/stocksettings/applications/AppOpsState$AppOpEntry;

    move-result-object v0

    .line 439
    .local v0, entry:Lcom/android/stocksettings/applications/AppOpsState$AppOpEntry;
    if-eqz v0, :cond_3

    .line 440
    invoke-virtual {v0, p4}, Lcom/android/stocksettings/applications/AppOpsState$AppOpEntry;->addOp(Landroid/app/AppOpsManager$OpEntry;)V

    goto :goto_2

    .line 443
    :cond_3
    new-instance v0, Lcom/android/stocksettings/applications/AppOpsState$AppOpEntry;

    .end local v0           #entry:Lcom/android/stocksettings/applications/AppOpsState$AppOpEntry;
    invoke-direct {v0, p2, p4, p3, p6}, Lcom/android/stocksettings/applications/AppOpsState$AppOpEntry;-><init>(Landroid/app/AppOpsManager$PackageOps;Landroid/app/AppOpsManager$OpEntry;Lcom/android/stocksettings/applications/AppOpsState$AppEntry;I)V

    .line 446
    .restart local v0       #entry:Lcom/android/stocksettings/applications/AppOpsState$AppOpEntry;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/stocksettings/applications/AppOpsState$AppEntry;
    .locals 5
    .parameter "context"
    .parameter
    .parameter "packageName"
    .parameter "appInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/stocksettings/applications/AppOpsState$AppEntry;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Lcom/android/stocksettings/applications/AppOpsState$AppEntry;"
        }
    .end annotation

    .prologue
    .line 455
    .local p2, appEntries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/stocksettings/applications/AppOpsState$AppEntry;>;"
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stocksettings/applications/AppOpsState$AppEntry;

    .line 456
    .local v0, appEntry:Lcom/android/stocksettings/applications/AppOpsState$AppEntry;
    if-nez v0, :cond_1

    .line 457
    if-nez p4, :cond_0

    .line 459
    :try_start_0
    iget-object v2, p0, Lcom/android/stocksettings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2200

    invoke-virtual {v2, p3, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    .line 467
    :cond_0
    new-instance v0, Lcom/android/stocksettings/applications/AppOpsState$AppEntry;

    .end local v0           #appEntry:Lcom/android/stocksettings/applications/AppOpsState$AppEntry;
    invoke-direct {v0, p0, p4}, Lcom/android/stocksettings/applications/AppOpsState$AppEntry;-><init>(Lcom/android/stocksettings/applications/AppOpsState;Landroid/content/pm/ApplicationInfo;)V

    .line 468
    .restart local v0       #appEntry:Lcom/android/stocksettings/applications/AppOpsState$AppEntry;
    invoke-virtual {v0, p1}, Lcom/android/stocksettings/applications/AppOpsState$AppEntry;->loadLabel(Landroid/content/Context;)V

    .line 469
    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v2, v0

    .line 471
    :goto_0
    return-object v2

    .line 462
    :catch_0
    move-exception v1

    .line 463
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AppOpsState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find info for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public buildState(Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;)Ljava/util/List;
    .locals 2
    .parameter "tpl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/stocksettings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/stocksettings/applications/AppOpsState;->buildState(Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public buildState(Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;
    .locals 29
    .parameter "tpl"
    .parameter "uid"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/stocksettings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stocksettings/applications/AppOpsState;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 477
    .local v17, context:Landroid/content/Context;
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 478
    .local v14, appEntries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/stocksettings/applications/AppOpsState$AppEntry;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v3, entries:Ljava/util/List;,"Ljava/util/List<Lcom/android/stocksettings/applications/AppOpsState$AppOpEntry;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v25, perms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 482
    .local v24, permOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v2, 0x26

    new-array v0, v2, [I

    move-object/from16 v22, v0

    .line 483
    .local v22, opToOrder:[I
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;->ops:[I

    array-length v2, v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_1

    .line 484
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;->showPerms:[Z

    aget-boolean v2, v2, v19

    if-eqz v2, :cond_0

    .line 485
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v2, v2, v19

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v23

    .line 486
    .local v23, perm:Ljava/lang/String;
    if-eqz v23, :cond_0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 487
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v2, v2, v19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v2, v2, v19

    aput v19, v22, v2

    .line 483
    .end local v23           #perm:Ljava/lang/String;
    :cond_0
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 495
    :cond_1
    if-eqz p3, :cond_3

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/stocksettings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;->ops:[I

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1, v7}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v28

    .line 501
    .local v28, pkgs:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_1
    if-eqz v28, :cond_7

    .line 502
    const/16 v19, 0x0

    :goto_2
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_7

    .line 503
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    .line 504
    .local v4, pkgOps:Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14, v2, v7}, Lcom/android/stocksettings/applications/AppOpsState;->getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/stocksettings/applications/AppOpsState$AppEntry;

    move-result-object v5

    .line 505
    .local v5, appEntry:Lcom/android/stocksettings/applications/AppOpsState$AppEntry;
    if-nez v5, :cond_4

    .line 502
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 498
    .end local v4           #pkgOps:Landroid/app/AppOpsManager$PackageOps;
    .end local v5           #appEntry:Lcom/android/stocksettings/applications/AppOpsState$AppEntry;
    .end local v28           #pkgs:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/stocksettings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/stocksettings/applications/AppOpsState$OpsTemplate;->ops:[I

    invoke-virtual {v2, v7}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v28

    .restart local v28       #pkgs:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_1

    .line 508
    .restart local v4       #pkgOps:Landroid/app/AppOpsManager$PackageOps;
    .restart local v5       #appEntry:Lcom/android/stocksettings/applications/AppOpsState$AppEntry;
    :cond_4
    const/16 v20, 0x0

    .local v20, j:I
    :goto_3
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_2

    .line 509
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    move/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    .line 510
    .local v6, opEntry:Landroid/app/AppOpsManager$OpEntry;
    if-nez p3, :cond_5

    const/4 v7, 0x1

    :goto_4
    if-nez p3, :cond_6

    const/4 v8, 0x0

    :goto_5
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/stocksettings/applications/AppOpsState;->addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/stocksettings/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    .line 508
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 510
    :cond_5
    const/4 v7, 0x0

    goto :goto_4

    :cond_6
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v2

    aget v8, v22, v2

    goto :goto_5

    .line 517
    .end local v4           #pkgOps:Landroid/app/AppOpsManager$PackageOps;
    .end local v5           #appEntry:Lcom/android/stocksettings/applications/AppOpsState$AppEntry;
    .end local v6           #opEntry:Landroid/app/AppOpsManager$OpEntry;
    .end local v20           #j:I
    :cond_7
    if-eqz p3, :cond_9

    .line 518
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v16, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/stocksettings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v7, 0x1000

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v27

    .line 521
    .local v27, pi:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    .end local v27           #pi:Landroid/content/pm/PackageInfo;
    :goto_6
    const/16 v19, 0x0

    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_12

    .line 530
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageInfo;

    .line 531
    .local v15, appInfo:Landroid/content/pm/PackageInfo;
    iget-object v2, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v7, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14, v2, v7}, Lcom/android/stocksettings/applications/AppOpsState;->getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/stocksettings/applications/AppOpsState$AppEntry;

    move-result-object v5

    .line 533
    .restart local v5       #appEntry:Lcom/android/stocksettings/applications/AppOpsState$AppEntry;
    if-nez v5, :cond_a

    .line 529
    :cond_8
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    .line 525
    .end local v5           #appEntry:Lcom/android/stocksettings/applications/AppOpsState$AppEntry;
    .end local v15           #appInfo:Landroid/content/pm/PackageInfo;
    .end local v16           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_9
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v26, v0

    .line 526
    .local v26, permsArray:[Ljava/lang/String;
    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/stocksettings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v2, v0, v7}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v16

    .restart local v16       #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    goto :goto_6

    .line 536
    .end local v26           #permsArray:[Ljava/lang/String;
    .restart local v5       #appEntry:Lcom/android/stocksettings/applications/AppOpsState$AppEntry;
    .restart local v15       #appInfo:Landroid/content/pm/PackageInfo;
    :cond_a
    const/16 v18, 0x0

    .line 537
    .local v18, dummyOps:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v4, 0x0

    .line 538
    .restart local v4       #pkgOps:Landroid/app/AppOpsManager$PackageOps;
    iget-object v2, v15, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 539
    const/16 v20, 0x0

    .restart local v20       #j:I
    :goto_8
    iget-object v2, v15, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_8

    .line 540
    iget-object v2, v15, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v2, :cond_b

    .line 541
    iget-object v2, v15, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v2, v2, v20

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_8

    .line 550
    :cond_b
    const/16 v21, 0x0

    .local v21, k:I
    :goto_9
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_11

    .line 551
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v7, v15, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v7, v7, v20

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 550
    :cond_c
    :goto_a
    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    .line 556
    :cond_d
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/android/stocksettings/applications/AppOpsState$AppEntry;->hasOp(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 559
    if-nez v18, :cond_e

    .line 560
    new-instance v18, Ljava/util/ArrayList;

    .end local v18           #dummyOps:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 561
    .restart local v18       #dummyOps:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    new-instance v4, Landroid/app/AppOpsManager$PackageOps;

    .end local v4           #pkgOps:Landroid/app/AppOpsManager$PackageOps;
    iget-object v2, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v7, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v18

    invoke-direct {v4, v2, v7, v0}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 565
    .restart local v4       #pkgOps:Landroid/app/AppOpsManager$PackageOps;
    :cond_e
    new-instance v6, Landroid/app/AppOpsManager$OpEntry;

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJI)V

    .line 567
    .restart local v6       #opEntry:Landroid/app/AppOpsManager$OpEntry;
    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    if-nez p3, :cond_f

    const/4 v7, 0x1

    :goto_b
    if-nez p3, :cond_10

    const/4 v8, 0x0

    :goto_c
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/stocksettings/applications/AppOpsState;->addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/stocksettings/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    goto :goto_a

    :cond_f
    const/4 v7, 0x0

    goto :goto_b

    :cond_10
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v2

    aget v8, v22, v2

    goto :goto_c

    .line 539
    .end local v6           #opEntry:Landroid/app/AppOpsManager$OpEntry;
    :cond_11
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_8

    .line 576
    .end local v4           #pkgOps:Landroid/app/AppOpsManager$PackageOps;
    .end local v5           #appEntry:Lcom/android/stocksettings/applications/AppOpsState$AppEntry;
    .end local v15           #appInfo:Landroid/content/pm/PackageInfo;
    .end local v18           #dummyOps:Ljava/util/List;,"Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v20           #j:I
    .end local v21           #k:I
    :cond_12
    sget-object v2, Lcom/android/stocksettings/applications/AppOpsState;->APP_OP_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 579
    return-object v3

    .line 522
    :catch_0
    move-exception v2

    goto/16 :goto_6
.end method
