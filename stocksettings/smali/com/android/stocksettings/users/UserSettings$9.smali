.class Lcom/android/stocksettings/users/UserSettings$9;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/users/UserSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/users/UserSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/stocksettings/users/UserSettings$9;->this$0:Lcom/android/stocksettings/users/UserSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/stocksettings/users/UserSettings$9;->this$0:Lcom/android/stocksettings/users/UserSettings;

    #calls: Lcom/android/stocksettings/users/UserSettings;->launchChooseLockscreen()V
    invoke-static {v0}, Lcom/android/stocksettings/users/UserSettings;->access$1500(Lcom/android/stocksettings/users/UserSettings;)V

    .line 533
    return-void
.end method