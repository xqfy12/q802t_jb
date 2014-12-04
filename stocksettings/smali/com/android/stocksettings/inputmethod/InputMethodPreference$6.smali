.class Lcom/android/stocksettings/inputmethod/InputMethodPreference$6;
.super Ljava/lang/Object;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/inputmethod/InputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Lcom/android/stocksettings/inputmethod/InputMethodPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/inputmethod/InputMethodPreference;

.field final synthetic val$chkPref:Lcom/android/stocksettings/inputmethod/InputMethodPreference;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/inputmethod/InputMethodPreference;Lcom/android/stocksettings/inputmethod/InputMethodPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/stocksettings/inputmethod/InputMethodPreference$6;->this$0:Lcom/android/stocksettings/inputmethod/InputMethodPreference;

    iput-object p2, p0, Lcom/android/stocksettings/inputmethod/InputMethodPreference$6;->val$chkPref:Lcom/android/stocksettings/inputmethod/InputMethodPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 265
    iget-object v0, p0, Lcom/android/stocksettings/inputmethod/InputMethodPreference$6;->val$chkPref:Lcom/android/stocksettings/inputmethod/InputMethodPreference;

    invoke-virtual {v0, v1, v1}, Lcom/android/stocksettings/inputmethod/InputMethodPreference;->setChecked(ZZ)V

    .line 266
    return-void
.end method
