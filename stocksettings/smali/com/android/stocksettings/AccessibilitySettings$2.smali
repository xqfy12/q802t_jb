.class Lcom/android/stocksettings/AccessibilitySettings$2;
.super Lcom/android/stocksettings/AccessibilitySettings$SettingsContentObserver;
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
.method constructor <init>(Lcom/android/stocksettings/AccessibilitySettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/stocksettings/AccessibilitySettings$2;->this$0:Lcom/android/stocksettings/AccessibilitySettings;

    invoke-direct {p0, p2}, Lcom/android/stocksettings/AccessibilitySettings$SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/stocksettings/AccessibilitySettings$2;->this$0:Lcom/android/stocksettings/AccessibilitySettings;

    #calls: Lcom/android/stocksettings/AccessibilitySettings;->loadInstalledServices()V
    invoke-static {v0}, Lcom/android/stocksettings/AccessibilitySettings;->access$100(Lcom/android/stocksettings/AccessibilitySettings;)V

    .line 159
    iget-object v0, p0, Lcom/android/stocksettings/AccessibilitySettings$2;->this$0:Lcom/android/stocksettings/AccessibilitySettings;

    #calls: Lcom/android/stocksettings/AccessibilitySettings;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/android/stocksettings/AccessibilitySettings;->access$200(Lcom/android/stocksettings/AccessibilitySettings;)V

    .line 160
    return-void
.end method
