.class Lcom/android/stocksettings/applications/ManageApplications$1;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/applications/ManageApplications;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/applications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/applications/ManageApplications;)V
    .locals 0
    .parameter

    .prologue
    .line 952
    iput-object p1, p0, Lcom/android/stocksettings/applications/ManageApplications$1;->this$0:Lcom/android/stocksettings/applications/ManageApplications;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 966
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 962
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 955
    iget-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications$1;->this$0:Lcom/android/stocksettings/applications/ManageApplications;

    iget-object v0, v0, Lcom/android/stocksettings/applications/ManageApplications;->mCurTab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications$1;->this$0:Lcom/android/stocksettings/applications/ManageApplications;

    iget-object v0, v0, Lcom/android/stocksettings/applications/ManageApplications;->mCurTab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications$1;->this$0:Lcom/android/stocksettings/applications/ManageApplications;

    iget-object v0, v0, Lcom/android/stocksettings/applications/ManageApplications;->mCurTab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications$1;->this$0:Lcom/android/stocksettings/applications/ManageApplications;

    iget-object v1, v1, Lcom/android/stocksettings/applications/ManageApplications;->mTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;->setFilterPrefix(Ljava/lang/String;)V

    .line 958
    :cond_0
    return-void
.end method
