.class Lcom/android/stocksettings/multisimsettings/ImageListPreference$1;
.super Ljava/lang/Object;
.source "ImageListPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/multisimsettings/ImageListPreference;->onCreateDialogView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/multisimsettings/ImageListPreference;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/multisimsettings/ImageListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$1;->this$0:Lcom/android/stocksettings/multisimsettings/ImageListPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$1;->this$0:Lcom/android/stocksettings/multisimsettings/ImageListPreference;

    #setter for: Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mCheckedItemEntryIndex:I
    invoke-static {v0, p3}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->access$002(Lcom/android/stocksettings/multisimsettings/ImageListPreference;I)I

    .line 137
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$1;->this$0:Lcom/android/stocksettings/multisimsettings/ImageListPreference;

    #calls: Lcom/android/stocksettings/multisimsettings/ImageListPreference;->setTagCheckedEntryIndices()V
    invoke-static {v0}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->access$100(Lcom/android/stocksettings/multisimsettings/ImageListPreference;)V

    .line 138
    iget-object v0, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$1;->this$0:Lcom/android/stocksettings/multisimsettings/ImageListPreference;

    #getter for: Lcom/android/stocksettings/multisimsettings/ImageListPreference;->mAdapter:Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;
    invoke-static {v0}, Lcom/android/stocksettings/multisimsettings/ImageListPreference;->access$200(Lcom/android/stocksettings/multisimsettings/ImageListPreference;)Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;->notifyDataSetChanged()V

    .line 140
    return-void
.end method
