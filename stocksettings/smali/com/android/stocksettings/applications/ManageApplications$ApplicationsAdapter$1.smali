.class Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter$1;
.super Landroid/widget/Filter;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4
    .parameter "constraint"

    .prologue
    .line 576
    iget-object v2, p0, Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v3, p0, Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;

    #getter for: Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;->access$500(Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 578
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/stocksettings/applications/ApplicationsState$AppEntry;>;"
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 579
    .local v1, fr:Landroid/widget/Filter$FilterResults;
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 580
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 581
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;

    iput-object p1, v0, Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    .line 587
    iget-object v1, p0, Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    #setter for: Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;
    invoke-static {v1, v0}, Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;->access$602(Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 588
    iget-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 589
    iget-object v0, p0, Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;

    #getter for: Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/stocksettings/applications/ManageApplications$TabInfo;
    invoke-static {v0}, Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;->access$700(Lcom/android/stocksettings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/stocksettings/applications/ManageApplications$TabInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/stocksettings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 590
    return-void
.end method
