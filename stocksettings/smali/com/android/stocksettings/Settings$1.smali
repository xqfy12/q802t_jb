.class Lcom/android/stocksettings/Settings$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/Settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/Settings;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/stocksettings/Settings$1;->this$0:Lcom/android/stocksettings/Settings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/stocksettings/Settings$1;->this$0:Lcom/android/stocksettings/Settings;

    iget-object v1, p0, Lcom/android/stocksettings/Settings$1;->this$0:Lcom/android/stocksettings/Settings;

    #getter for: Lcom/android/stocksettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/stocksettings/Settings;->access$000(Lcom/android/stocksettings/Settings;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    #calls: Lcom/android/stocksettings/Settings;->switchToParent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/stocksettings/Settings;->access$100(Lcom/android/stocksettings/Settings;Ljava/lang/String;)V

    .line 188
    return-void
.end method
