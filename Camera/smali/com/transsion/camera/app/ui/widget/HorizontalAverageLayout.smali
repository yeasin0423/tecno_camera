.class public Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;
.super Landroid/widget/FrameLayout;
.source "HorizontalAverageLayout.java"


# instance fields
.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "type_a"

    .line 30
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mType:Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 47
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mType:Ljava/lang/String;

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

    .line 90
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 92
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    .line 93
    div-int/2addr v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 96
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v3

    mul-int v4, v1, v2

    add-int/2addr v3, v4

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    .line 97
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 98
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    .line 99
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    .line 100
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v3

    .line 101
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 102
    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private layoutChildrenTypeB(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 110
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 112
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    .line 114
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 115
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v4

    add-int/lit8 v2, v0, 0x1

    .line 117
    div-int/2addr v1, v2

    .line 118
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result p0

    add-int/2addr p0, v1

    :goto_1
    if-ge v3, v0, :cond_1

    .line 121
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 124
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    .line 125
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, p0

    .line 126
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 127
    invoke-virtual {v2, p0, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    add-int p0, v5, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private layoutChildrenTypeC(Ljava/util/ArrayList;D)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;D)V"
        }
    .end annotation

    .line 136
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 138
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    .line 139
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v2

    int-to-double v3, v1

    mul-double/2addr p2, v3

    double-to-int v1, p2

    add-int/2addr v2, v1

    .line 140
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result p0

    sub-double/2addr v3, p2

    double-to-int p2, v3

    add-int/2addr p0, p2

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ne v0, p3, :cond_0

    .line 144
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p1

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    add-int/2addr p2, v2

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p3

    .line 149
    invoke-virtual {p0, v2, p1, p2, p3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    :cond_0
    if-le v0, p3, :cond_4

    .line 152
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 154
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v1

    .line 155
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 156
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 157
    invoke-virtual {p3, v2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v1, v0, -0x1

    .line 159
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 160
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr p0, v3

    .line 161
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, p0

    .line 162
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    .line 163
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 164
    invoke-virtual {v2, p0, v4, v3, v5}, Landroid/view/View;->layout(IIII)V

    move p0, p2

    move v3, p0

    :goto_0
    if-ge p0, v0, :cond_2

    if-eqz p0, :cond_1

    if-eq p0, v1, :cond_1

    .line 170
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 171
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr p0, v2

    sub-int/2addr p0, v3

    div-int/2addr p0, v1

    .line 175
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p3

    add-int/2addr p3, p0

    :goto_1
    if-ge p2, v0, :cond_4

    if-eqz p2, :cond_3

    if-eq p2, v1, :cond_3

    .line 179
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 181
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 182
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, p3

    .line 183
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 185
    invoke-virtual {v2, p3, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v4, p0

    move p3, v4

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method private layoutChildrenTypeE(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 196
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 197
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    .line 198
    div-int/2addr v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 200
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 201
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v5

    mul-int v6, v1, v3

    add-int/2addr v5, v6

    add-int v6, v5, v1

    .line 204
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    .line 205
    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateChildrenLayout()V
    .locals 6

    .line 57
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 62
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 63
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 64
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mType:Ljava/lang/String;

    const-string v2, "type_a"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->layoutChildrenTypeA(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mType:Ljava/lang/String;

    const-string v2, "type_b"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->layoutChildrenTypeB(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 72
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mType:Ljava/lang/String;

    const-string v2, "type_c"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide v2, 0x3fac71c71c71c71cL    # 0.05555555555555555

    .line 73
    invoke-direct {p0, v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->layoutChildrenTypeC(Ljava/util/ArrayList;D)V

    goto :goto_1

    .line 74
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mType:Ljava/lang/String;

    const-string v2, "type_d"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v2, 0x0

    .line 75
    invoke-direct {p0, v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->layoutChildrenTypeC(Ljava/util/ArrayList;D)V

    goto :goto_1

    .line 76
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mType:Ljava/lang/String;

    const-string v2, "type_e"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 77
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->layoutChildrenTypeE(Ljava/util/ArrayList;)V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 52
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 53
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->updateChildrenLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
