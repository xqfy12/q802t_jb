.class final Landroid/view/accessibility/AccessibilityNodeInfo$1;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/view/accessibility/AccessibilityNodeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2138
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .parameter "parcel"

    .prologue
    .line 2140
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2141
    .local v0, info:Landroid/view/accessibility/AccessibilityNodeInfo;
    #calls: Landroid/view/accessibility/AccessibilityNodeInfo;->initFromParcel(Landroid/os/Parcel;)V
    invoke-static {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->access$000(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/os/Parcel;)V

    .line 2142
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2138
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 2146
    new-array v0, p1, [Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2138
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$1;->newArray(I)[Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method
