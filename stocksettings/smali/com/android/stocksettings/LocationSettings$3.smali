.class Lcom/android/stocksettings/LocationSettings$3;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/LocationSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/LocationSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/stocksettings/LocationSettings$3;->this$0:Lcom/android/stocksettings/LocationSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/stocksettings/LocationSettings$3;->this$0:Lcom/android/stocksettings/LocationSettings;

    #calls: Lcom/android/stocksettings/LocationSettings;->updateLocationToggles()V
    invoke-static {v0}, Lcom/android/stocksettings/LocationSettings;->access$400(Lcom/android/stocksettings/LocationSettings;)V

    .line 269
    return-void
.end method
