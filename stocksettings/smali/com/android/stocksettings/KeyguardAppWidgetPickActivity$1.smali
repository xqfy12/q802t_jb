.class Lcom/android/stocksettings/KeyguardAppWidgetPickActivity$1;
.super Ljava/lang/Object;
.source "KeyguardAppWidgetPickActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/KeyguardAppWidgetPickActivity;->finishDelayedAndShowLockScreen(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/KeyguardAppWidgetPickActivity;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/KeyguardAppWidgetPickActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 614
    iput-object p1, p0, Lcom/android/stocksettings/KeyguardAppWidgetPickActivity$1;->this$0:Lcom/android/stocksettings/KeyguardAppWidgetPickActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/stocksettings/KeyguardAppWidgetPickActivity$1;->this$0:Lcom/android/stocksettings/KeyguardAppWidgetPickActivity;

    invoke-virtual {v0}, Lcom/android/stocksettings/KeyguardAppWidgetPickActivity;->finish()V

    .line 617
    return-void
.end method
