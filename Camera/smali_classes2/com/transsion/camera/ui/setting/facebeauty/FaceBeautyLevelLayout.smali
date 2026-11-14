.class public Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;
.super Landroid/widget/FrameLayout;
.source "FaceBeautyLevelLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout$LevelChangeListener;
    }
.end annotation


# instance fields
.field private mChildrenLocationX:[[I

.field private mChildrenOffset:I

.field private mChildrenWidth:I

.field private mCurrentPosition:I

.field private mDownEventX:F

.field private mLevelChangeListener:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout$LevelChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 30
    iput p2, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;->mCurrentPosition:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070105

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;->mChildrenWidth:I

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070103

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;->mChildrenOffset:I

    return-void
.end method

.method private layoutChildren(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 84
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 86
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    .line 87
    div-int/2addr v1, v0

    .line 88
    iget v2, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;->mChildrenWidth:I

    if-ge v2, v1, :cond_0

    move v1, v2

    .line 90
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    :cond_1
    move v2, v4

    goto :goto_0

    .line 92
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    if-ne v2, v4, :cond_1

    move v2, v3

    :goto_0
    move v5, v3

    :goto_1
    if-ge v5, v0, :cond_7

    if-eqz v2, :cond_3

    .line 102
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v6

    div-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;->mChildrenOffset:I

    add-int/2addr v6, v7

    add-int/2addr v7, v1

    mul-int/2addr v7, v5

    add-int/2addr v6, v7

    goto :goto_2

    .line 104
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v7, v1, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;->mChildrenOffset:I

    sub-int/2addr v6, v7

    add-int/2addr v7, v1

    mul-int/2addr v7, v5

    sub-int/2addr v6, v7

    .line 107
    :goto_2
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 108
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    const/4 v9, 0x2

    div-int/2addr v8, v9

    sub-int/2addr v6, v8

    .line 109
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    .line 110
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v10, v6

    .line 111
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 112
    invoke-virtual {v7, v6, v8, v10, v11}, Landroid/view/View;->layout(IIII)V

    move v7, v3

    :goto_3
    if-ge v7, v9, :cond_6

    .line 115
    iget-object v8, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;->mChildrenLocationX:[[I

    new-array v11, v9, [I

    aput-object v11, v8, v5

    if-nez v5, :cond_4

    .line 118
    aget-object v8, v8, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v11

    sub-int v11, v6, v11

    aput v11, v8, v3

    .line 119
    iget-object v8, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;->mChildrenLocationX:[[I

    aget-object v8, v8, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v11

    div-int/2addr v11, v9

    add-int/2addr v11, v10

    aput v11, v8, v4

    goto :goto_4

    :cond_4
    add-int/lit8 v11, v0, -0x1

    if-ne v5, v11, :cond_5

    .line 121
    aget-object v8, v8, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v11

    div-int/2addr v11, v9

    sub-int v11, v6, v11

    aput v11, v8, v3

    .line 122
    iget-object v8, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;->mChildrenLocationX:[[I

    aget-object v8, v8, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v11

    add-int/2addr v11, v10

    aput v11, v8, v4

    goto :goto_4

    .line 124
    :cond_5
    aget-object v8, v8, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v11

    div-int/2addr v11, v9

    sub-int v11, v6, v11

    aput v11, v8, v3

    .line 125
    iget-object v8, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;->mChildrenLocationX:[[I

    aget-object v8, v8, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v11

    div-int/2addr v11, v9

    add-int/2addr v11, v10

    aput v11, v8, v4

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method private updateChildrenLayout()V
    .locals 6

    .line 67
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    new-array v1, v0, [[I

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;->mChildrenLocationX:[[I

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 73
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 74
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 75
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_2
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;->layoutChildren(Ljava/util/ArrayList;)V

    return-void
.end method

.method private updateLevel(F)V
    .locals 5

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;->mChildrenLocationX:[[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 173
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;->mChildrenLocationX:[[I

    array-length v2, v2

    if-ge v1, v2, :cond_4

    move v2, v0

    .line 174
    :goto_1
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;->mChildrenLocationX:[[I

    aget-object v4, v3, v1

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 175
    aget-object v4, v3, v1

    aget v4, v4, v2

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_2

    aget-object v3, v3, v1

    add-int/lit8 v2, v2, 0x1

    aget v3, v3, v2

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_2

    .line 177
    iget p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;->mCurrentPosition:I

    if-eq p1, v1, :cond_1

    .line 178
    iput v1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;->mCurrentPosition:I

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;->mLevelChangeListener:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout$LevelChangeListener;

    invoke-interface {p0, v1}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout$LevelChangeListener;->onChanged(I)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 133
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 134
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 62
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 63
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;->updateChildrenLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 152
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 153
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;->updateLevel(F)V

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 158
    iget v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;->mDownEventX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x42480000    # 50.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 159
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;->updateLevel(F)V

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;->mDownEventX:F

    :cond_3
    :goto_0
    return v1
.end method

.method public setCurrentPosition(I)V
    .locals 0

    .line 188
    iput p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;->mCurrentPosition:I

    return-void
.end method

.method public setLevelChangeListener(Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout$LevelChangeListener;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;->mLevelChangeListener:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout$LevelChangeListener;

    return-void
.end method
