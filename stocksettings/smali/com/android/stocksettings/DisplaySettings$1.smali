.class Lcom/android/stocksettings/DisplaySettings$1;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/DisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/stocksettings/DisplaySettings$1;->this$0:Lcom/android/stocksettings/DisplaySettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/stocksettings/DisplaySettings$1;->this$0:Lcom/android/stocksettings/DisplaySettings;

    #calls: Lcom/android/stocksettings/DisplaySettings;->updateAccelerometerRotationCheckbox()V
    invoke-static {v0}, Lcom/android/stocksettings/DisplaySettings;->access$000(Lcom/android/stocksettings/DisplaySettings;)V

    .line 113
    return-void
.end method
