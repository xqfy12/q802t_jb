.class public final Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ImageListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field public netTypeIcon:Landroid/widget/ImageView;

.field public netTypeName:Landroid/widget/CheckedTextView;

.field final synthetic this$1:Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;


# direct methods
.method public constructor <init>(Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter$ViewHolder;->this$1:Lcom/android/stocksettings/multisimsettings/ImageListPreference$NetTypeAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
