.class public Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;
.super Ljava/lang/Object;
.source "OrderEditorUIItem.java"


# instance fields
.field public final mName:Ljava/lang/String;

.field public final mSelectIconId:I

.field public final mTitle:Ljava/lang/String;

.field public final mUnSelectedIconId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->mName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->mTitle:Ljava/lang/String;

    .line 16
    iput p3, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->mSelectIconId:I

    .line 17
    iput p4, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->mUnSelectedIconId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 22
    instance-of v0, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    if-eqz v0, :cond_0

    .line 23
    check-cast p1, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->mName:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->mName:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 25
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
