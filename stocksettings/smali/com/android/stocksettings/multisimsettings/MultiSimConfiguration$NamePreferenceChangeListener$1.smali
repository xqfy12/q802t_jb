.class Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener$1;
.super Ljava/lang/Object;
.source "MultiSimConfiguration.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener$1;->this$1:Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$NamePreferenceChangeListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 127
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 128
    return-void
.end method
