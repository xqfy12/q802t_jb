.class Lcom/android/stocksettings/AccessibilitySettings$4;
.super Landroid/preference/Preference;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/AccessibilitySettings;->updateServicesPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/AccessibilitySettings;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/stocksettings/AccessibilitySettings$4;->this$0:Lcom/android/stocksettings/AccessibilitySettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 434
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 435
    const v2, 0x7f0800ee

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 436
    .local v0, summaryView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/stocksettings/AccessibilitySettings$4;->this$0:Lcom/android/stocksettings/AccessibilitySettings;

    const v3, 0x7f0b0562

    invoke-virtual {v2, v3}, Lcom/android/stocksettings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, title:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    return-void
.end method