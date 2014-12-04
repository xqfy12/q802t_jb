.class Lcom/android/stocksettings/users/UserSettings$7;
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
    .line 491
    iput-object p1, p0, Lcom/android/stocksettings/users/UserSettings$7;->this$0:Lcom/android/stocksettings/users/UserSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/stocksettings/users/UserSettings$7;->this$0:Lcom/android/stocksettings/users/UserSettings;

    iget-object v1, p0, Lcom/android/stocksettings/users/UserSettings$7;->this$0:Lcom/android/stocksettings/users/UserSettings;

    #getter for: Lcom/android/stocksettings/users/UserSettings;->mAddedUserId:I
    invoke-static {v1}, Lcom/android/stocksettings/users/UserSettings;->access$1200(Lcom/android/stocksettings/users/UserSettings;)I

    move-result v1

    #calls: Lcom/android/stocksettings/users/UserSettings;->switchUserNow(I)V
    invoke-static {v0, v1}, Lcom/android/stocksettings/users/UserSettings;->access$1300(Lcom/android/stocksettings/users/UserSettings;I)V

    .line 494
    return-void
.end method
