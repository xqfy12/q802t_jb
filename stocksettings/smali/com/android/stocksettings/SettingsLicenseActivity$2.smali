.class Lcom/android/stocksettings/SettingsLicenseActivity$2;
.super Ljava/lang/Object;
.source "SettingsLicenseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/SettingsLicenseActivity;->showPageOfText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/SettingsLicenseActivity;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/SettingsLicenseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/stocksettings/SettingsLicenseActivity$2;->this$0:Lcom/android/stocksettings/SettingsLicenseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dlgi"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/stocksettings/SettingsLicenseActivity$2;->this$0:Lcom/android/stocksettings/SettingsLicenseActivity;

    invoke-virtual {v0}, Lcom/android/stocksettings/SettingsLicenseActivity;->finish()V

    .line 197
    return-void
.end method