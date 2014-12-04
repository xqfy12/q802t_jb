.class public Lcom/android/stocksettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;
.super Lcom/android/stocksettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleScreenMagnificationPreferenceFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 937
    invoke-direct {p0}, Lcom/android/stocksettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected onInstallActionBarToggleSwitch()V
    .locals 2

    .prologue
    .line 947
    invoke-super {p0}, Lcom/android/stocksettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onInstallActionBarToggleSwitch()V

    .line 948
    iget-object v0, p0, Lcom/android/stocksettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/stocksettings/AccessibilitySettings$ToggleSwitch;

    new-instance v1, Lcom/android/stocksettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/android/stocksettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$1;-><init>(Lcom/android/stocksettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/stocksettings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 957
    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "preferenceKey"
    .parameter "enabled"

    .prologue
    .line 941
    invoke-virtual {p0}, Lcom/android/stocksettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_magnification_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 943
    return-void

    .line 941
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
