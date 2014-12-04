.class Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$2;
.super Ljava/lang/Object;
.source "MultiSimConfiguration.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;

.field final synthetic val$icons:Landroid/content/res/TypedArray;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;Landroid/content/res/TypedArray;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$2;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;

    iput-object p2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$2;->val$icons:Landroid/content/res/TypedArray;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$2;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;

    #getter for: Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mIconPreference:Lcom/android/stocksettings/multisimsettings/ImageListPreference;
    invoke-static {v0}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->access$700(Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;)Lcom/android/stocksettings/multisimsettings/ImageListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$2;->val$icons:Landroid/content/res/TypedArray;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->setSimIcon(Landroid/graphics/drawable/Drawable;)V

    .line 217
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$2;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;

    iget-object v1, p0, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration$2;->this$0:Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;

    #getter for: Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->mSubscription:I
    invoke-static {v1}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->access$200(Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;)I

    move-result v1

    check-cast p2, Ljava/lang/String;

    .end local p2
    #calls: Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->setMultiSimIconIndex(ILjava/lang/String;)V
    invoke-static {v0, v1, p2}, Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;->access$800(Lcom/android/stocksettings/multisimsettings/MultiSimConfiguration;ILjava/lang/String;)V

    .line 218
    const/4 v0, 0x1

    return v0
.end method
