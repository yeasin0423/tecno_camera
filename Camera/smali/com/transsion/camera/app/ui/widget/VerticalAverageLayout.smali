.class public Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;
.super Landroid/widget/FrameLayout;
.source "VerticalAverageLayout.java"


# instance fields
.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "type_b"

    .line 16
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->mType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "type_b"

    .line 16
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->mType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "type_b"

    .line 16
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->mType:Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 57
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->mType:Ljava/lang/String;

    return-void
.end method

.method private layoutChildrenTypeA(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 70
    div-int/2addr v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 73
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    mul-int v4, v1, v2

    add-int/2addr v3, v4

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    .line 74
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 75
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    .line 76
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 77
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v3

    .line 78
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v7

    .line 79
    invoke-virtual {v4, v5, v3, v7, v6}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private layoutChildrenTypeB(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 89
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    .line 90
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    const/4 p0, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 94
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 99
    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    :cond_0
    if-le v0, v3, :cond_4

    .line 101
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 102
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 104
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    .line 105
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v1

    .line 106
    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v1, v0, -0x1

    .line 108
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 109
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 110
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v2, v6

    .line 111
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v6

    .line 112
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v2

    .line 113
    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    move v2, p0

    move v5, v2

    :goto_0
    if-ge v2, v0, :cond_2

    if-eqz v2, :cond_1

    if-eq v2, v1, :cond_1

    .line 118
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 119
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v5

    div-int/2addr v2, v1

    .line 124
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v2

    :goto_1
    if-ge p0, v0, :cond_4

    if-eqz p0, :cond_3

    if-eq p0, v1, :cond_3

    .line 128
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 129
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 131
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v6

    .line 132
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v3

    .line 134
    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v7, v2

    move v3, v7

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method private updateChildrenLayout()V
    .locals 6

    .line 38
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 43
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 44
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 45
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->mType:Ljava/lang/String;

    const-string v2, "type_a"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->layoutChildrenTypeA(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->mType:Ljava/lang/String;

    const-string v2, "type_b"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 52
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->layoutChildrenTypeB(Ljava/util/ArrayList;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 33
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 34
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->updateChildrenLayout()V

    return-void
.end method
