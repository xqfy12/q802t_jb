.class Lcom/android/stocksettings/profile/EditProfile$1;
.super Ljava/lang/Object;
.source "EditProfile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/profile/EditProfile;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/profile/EditProfile;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/profile/EditProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 652
    iput-object p1, p0, Lcom/android/stocksettings/profile/EditProfile$1;->this$0:Lcom/android/stocksettings/profile/EditProfile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 654
    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile$1;->this$0:Lcom/android/stocksettings/profile/EditProfile;

    invoke-virtual {v0}, Lcom/android/stocksettings/profile/EditProfile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stocksettings/profile/EditProfile$1;->this$0:Lcom/android/stocksettings/profile/EditProfile;

    #getter for: Lcom/android/stocksettings/profile/EditProfile;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/stocksettings/profile/EditProfile;->access$100(Lcom/android/stocksettings/profile/EditProfile;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 655
    iget-object v0, p0, Lcom/android/stocksettings/profile/EditProfile$1;->this$0:Lcom/android/stocksettings/profile/EditProfile;

    invoke-virtual {v0}, Lcom/android/stocksettings/profile/EditProfile;->finish()V

    .line 656
    return-void
.end method
