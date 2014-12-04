.class Lcom/android/stocksettings/RadioInfo$21;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1134
    iput-object p1, p0, Lcom/android/stocksettings/RadioInfo$21;->this$0:Lcom/android/stocksettings/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/android/stocksettings/RadioInfo$21;->this$0:Lcom/android/stocksettings/RadioInfo;

    #calls: Lcom/android/stocksettings/RadioInfo;->refreshSmsc()V
    invoke-static {v0}, Lcom/android/stocksettings/RadioInfo;->access$4600(Lcom/android/stocksettings/RadioInfo;)V

    .line 1137
    return-void
.end method
