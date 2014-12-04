.class Lcom/android/stocksettings/inputmethod/SpellCheckersSettings$2;
.super Ljava/lang/Object;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/inputmethod/SpellCheckersSettings;->showSecurityWarnDialog(Lcom/android/stocksettings/inputmethod/SingleSpellCheckerPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/inputmethod/SpellCheckersSettings;

.field final synthetic val$scp:Lcom/android/stocksettings/inputmethod/SingleSpellCheckerPreference;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/inputmethod/SpellCheckersSettings;Lcom/android/stocksettings/inputmethod/SingleSpellCheckerPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/stocksettings/inputmethod/SpellCheckersSettings$2;->this$0:Lcom/android/stocksettings/inputmethod/SpellCheckersSettings;

    iput-object p2, p0, Lcom/android/stocksettings/inputmethod/SpellCheckersSettings$2;->val$scp:Lcom/android/stocksettings/inputmethod/SingleSpellCheckerPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/stocksettings/inputmethod/SpellCheckersSettings$2;->this$0:Lcom/android/stocksettings/inputmethod/SpellCheckersSettings;

    iget-object v1, p0, Lcom/android/stocksettings/inputmethod/SpellCheckersSettings$2;->val$scp:Lcom/android/stocksettings/inputmethod/SingleSpellCheckerPreference;

    #calls: Lcom/android/stocksettings/inputmethod/SpellCheckersSettings;->changeCurrentSpellChecker(Lcom/android/stocksettings/inputmethod/SingleSpellCheckerPreference;)V
    invoke-static {v0, v1}, Lcom/android/stocksettings/inputmethod/SpellCheckersSettings;->access$000(Lcom/android/stocksettings/inputmethod/SpellCheckersSettings;Lcom/android/stocksettings/inputmethod/SingleSpellCheckerPreference;)V

    .line 132
    return-void
.end method
