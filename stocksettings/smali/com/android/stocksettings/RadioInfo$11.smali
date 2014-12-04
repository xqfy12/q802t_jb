.class Lcom/android/stocksettings/RadioInfo$11;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 962
    iput-object p1, p0, Lcom/android/stocksettings/RadioInfo$11;->this$0:Lcom/android/stocksettings/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 964
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 965
    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo$11;->this$0:Lcom/android/stocksettings/RadioInfo;

    const-class v2, Lcom/android/stocksettings/BandMode;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 966
    iget-object v1, p0, Lcom/android/stocksettings/RadioInfo$11;->this$0:Lcom/android/stocksettings/RadioInfo;

    invoke-virtual {v1, v0}, Lcom/android/stocksettings/RadioInfo;->startActivity(Landroid/content/Intent;)V

    .line 967
    const/4 v0, 0x1

    return v0
.end method
