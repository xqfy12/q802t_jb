.class Lcom/android/stocksettings/users/AppRestrictionsFragment$3;
.super Ljava/lang/Object;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/users/AppRestrictionsFragment;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/users/AppRestrictionsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1066
    iput-object p1, p0, Lcom/android/stocksettings/users/AppRestrictionsFragment$3;->this$0:Lcom/android/stocksettings/users/AppRestrictionsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/stocksettings/users/AppRestrictionsFragment$3;->this$0:Lcom/android/stocksettings/users/AppRestrictionsFragment;

    #calls: Lcom/android/stocksettings/users/AppRestrictionsFragment;->clearEditUserInfoDialog()V
    invoke-static {v0}, Lcom/android/stocksettings/users/AppRestrictionsFragment;->access$1500(Lcom/android/stocksettings/users/AppRestrictionsFragment;)V

    .line 1070
    return-void
.end method