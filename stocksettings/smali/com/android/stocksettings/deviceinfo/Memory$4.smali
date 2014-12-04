.class Lcom/android/stocksettings/deviceinfo/Memory$4;
.super Ljava/lang/Object;
.source "Memory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/deviceinfo/Memory;)V
    .locals 0
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/stocksettings/deviceinfo/Memory$4;->this$0:Lcom/android/stocksettings/deviceinfo/Memory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/stocksettings/deviceinfo/Memory$4;->this$0:Lcom/android/stocksettings/deviceinfo/Memory;

    #calls: Lcom/android/stocksettings/deviceinfo/Memory;->dynamicShowDefaultWriteCategory()V
    invoke-static {v0}, Lcom/android/stocksettings/deviceinfo/Memory;->access$700(Lcom/android/stocksettings/deviceinfo/Memory;)V

    .line 556
    return-void
.end method
