.class Lcom/android/stocksettings/DisplaySettings$2;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/DisplaySettings;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 312
    iput-object p1, p0, Lcom/android/stocksettings/DisplaySettings$2;->this$0:Lcom/android/stocksettings/DisplaySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/stocksettings/DisplaySettings$2;->this$0:Lcom/android/stocksettings/DisplaySettings;

    #getter for: Lcom/android/stocksettings/DisplaySettings;->mFontSizePref:Lcom/android/stocksettings/WarnedListPreference;
    invoke-static {v0}, Lcom/android/stocksettings/DisplaySettings;->access$100(Lcom/android/stocksettings/DisplaySettings;)Lcom/android/stocksettings/WarnedListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/stocksettings/WarnedListPreference;->click()V

    .line 315
    return-void
.end method
