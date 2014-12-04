.class Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference$4;
.super Ljava/lang/Object;
.source "MultiSimEnablerPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference$4;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference$4;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;

    const/4 v1, 0x1

    #calls: Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->setChecked(Z)V
    invoke-static {v0, v1}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->access$1400(Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;Z)V

    .line 565
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/stocksettings/multisimsettings/MultiSimEnablerPreference;->access$1602(Z)Z

    .line 566
    return-void
.end method
