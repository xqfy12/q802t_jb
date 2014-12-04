.class Lcom/android/stocksettings/AccessibilitySettings$1;
.super Landroid/os/Handler;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/stocksettings/AccessibilitySettings$1;->this$0:Lcom/android/stocksettings/AccessibilitySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 149
    iget-object v0, p0, Lcom/android/stocksettings/AccessibilitySettings$1;->this$0:Lcom/android/stocksettings/AccessibilitySettings;

    #calls: Lcom/android/stocksettings/AccessibilitySettings;->loadInstalledServices()V
    invoke-static {v0}, Lcom/android/stocksettings/AccessibilitySettings;->access$100(Lcom/android/stocksettings/AccessibilitySettings;)V

    .line 150
    iget-object v0, p0, Lcom/android/stocksettings/AccessibilitySettings$1;->this$0:Lcom/android/stocksettings/AccessibilitySettings;

    #calls: Lcom/android/stocksettings/AccessibilitySettings;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/android/stocksettings/AccessibilitySettings;->access$200(Lcom/android/stocksettings/AccessibilitySettings;)V

    .line 151
    return-void
.end method
