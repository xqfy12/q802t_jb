.class Lcom/android/stocksettings/MasterClear$3;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stocksettings/MasterClear;->establishInitialState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stocksettings/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/stocksettings/MasterClear;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/stocksettings/MasterClear$3;->this$0:Lcom/android/stocksettings/MasterClear;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/stocksettings/MasterClear$3;->this$0:Lcom/android/stocksettings/MasterClear;

    #getter for: Lcom/android/stocksettings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/stocksettings/MasterClear;->access$300(Lcom/android/stocksettings/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 201
    return-void
.end method
