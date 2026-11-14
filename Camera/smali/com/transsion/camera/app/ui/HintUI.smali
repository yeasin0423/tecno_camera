.class public Lcom/transsion/camera/app/ui/HintUI;
.super Lcom/transsion/camera/app/ui/AbstractHintUI;
.source "HintUI.java"


# instance fields
.field private mAsdHintAlgorithResultImgView:Landroid/widget/ImageView;

.field private mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

.field private mAsdHintAlgorithResultParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mAsdHintAlgorithResultText:Landroid/widget/TextView;

.field private mAsdHintAlgorithResultTextParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mAsdHintEffectImgView:Landroid/widget/ImageView;

.field private mAsdHintEffectLayout:Landroid/widget/LinearLayout;

.field private mAsdHintEffectParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mAsdHintEffectText:Landroid/widget/TextView;

.field private mAsdHintEffectTextParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mAsdHintGap:I

.field private mAsdHintRootLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/MainScreenOriginPosition;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;-><init>(Lcom/transsion/camera/app/ui/MainScreenOriginPosition;)V

    return-void
.end method

.method static synthetic lambda$initExpandAnimator$0(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 75
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 76
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method static synthetic lambda$initHideAnimator$3(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;ILandroid/animation/ValueAnimator;)V
    .locals 6

    .line 274
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const/high16 v2, 0x42480000    # 50.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    neg-int v0, v0

    int-to-float v0, v0

    .line 276
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    if-ne p0, v2, :cond_1

    int-to-float v0, v0

    .line 278
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 280
    :cond_1
    :goto_0
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 281
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    const/16 v5, 0x8

    if-nez v0, :cond_2

    .line 282
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 285
    :cond_2
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    if-eqz p2, :cond_6

    .line 286
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-eq p1, v5, :cond_6

    if-ne p0, v3, :cond_3

    .line 288
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sub-float/2addr v1, p0

    neg-float p0, v1

    int-to-float p1, p3

    mul-float/2addr p0, p1

    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    goto :goto_1

    :cond_3
    if-ne p0, v2, :cond_4

    .line 290
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sub-float/2addr v1, p0

    int-to-float p0, p3

    mul-float/2addr v1, p0

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 292
    :cond_4
    :goto_1
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    cmpl-float p0, p0, v4

    if-nez p0, :cond_5

    .line 293
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 295
    :cond_5
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_6
    return-void
.end method

.method static synthetic lambda$initShrinkAnimator$1(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 102
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 103
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method static synthetic lambda$initShrinkAnimator$2(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 109
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 110
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAsdHintRootLayout()Landroid/view/ViewGroup;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/HintUI;->getAsdHintRootLayout()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getAsdHintRootLayout()Landroid/widget/RelativeLayout;
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintRootLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method getExpandInitValue()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 124
    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method getOverallValue()[I
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 130
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 129
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 132
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 131
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->measure(II)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 133
    iget-object v2, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v0, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectImgView:Landroid/widget/ImageView;

    .line 134
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p0

    add-int/2addr v1, p0

    const/4 p0, 0x1

    aput v1, v0, p0

    return-object v0
.end method

.method getShrinkTargetValue()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 139
    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultImgView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p0

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method hideAsdHintView()V
    .locals 0

    .line 185
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/HintUI;->hideHintAlgorithLayout()V

    .line 186
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/HintUI;->hideHintEffectLayout()V

    .line 187
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->stopAsdAnimatorSet()V

    return-void
.end method

.method protected hideHintAlgorithLayout()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultImgView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultTextParams:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultTextParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultTextParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdAlgorithResultLayoutWidth:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 222
    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method protected hideHintEffectLayout()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectImgView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectTextParams:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectText:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectTextParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectTextParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdEffectLayoutWidth:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 204
    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public initAsdHieAnimator()V
    .locals 5

    .line 228
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 231
    :goto_0
    iget-object v4, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    .line 230
    invoke-virtual {p0, v0, v2, v4, v1}, Lcom/transsion/camera/app/ui/HintUI;->initHideAnimator(IILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    move v0, v2

    .line 235
    :goto_1
    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    .line 234
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/transsion/camera/app/ui/HintUI;->initHideAnimator(IILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    :cond_3
    return-void
.end method

.method initAsdHieAnimatorByInfo(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 8

    .line 241
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 242
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 247
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 248
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 249
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2, v2, p1, v1}, Lcom/transsion/camera/app/ui/HintUI;->initHideAnimator(IILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 252
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2, v2, p1, v1}, Lcom/transsion/camera/app/ui/HintUI;->initHideAnimator(IILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    .line 254
    :cond_2
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdOnly:Z

    return-void

    .line 257
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 258
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdOnly:Z

    .line 259
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v3

    :goto_1
    iget-object v5, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    .line 260
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintGap:I

    add-int/2addr v5, v6

    div-int/2addr v5, v3

    iget-object v6, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    .line 261
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    move-object v7, v1

    goto :goto_2

    :cond_6
    iget-object v7, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    .line 259
    :goto_2
    invoke-virtual {p0, v0, v5, v6, v7}, Lcom/transsion/camera/app/ui/HintUI;->initHideAnimator(IILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    .line 263
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 264
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    move v0, v4

    goto :goto_3

    :cond_8
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdOnly:Z

    .line 265
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    move v2, v4

    :goto_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    .line 266
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    div-int/2addr v0, v3

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    .line 267
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_5

    :cond_a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    .line 265
    :goto_5
    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/transsion/camera/app/ui/HintUI;->initHideAnimator(IILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    :cond_b
    return-void
.end method

.method initExpandAnimator(IILandroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout;)V
    .locals 1

    .line 73
    new-instance v0, Lcom/transsion/camera/app/ui/-$$Lambda$HintUI$HGoldah9kMtIPDchQ_7cGhfNabs;

    invoke-direct {v0, p3, p4}, Lcom/transsion/camera/app/ui/-$$Lambda$HintUI$HGoldah9kMtIPDchQ_7cGhfNabs;-><init>(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout;)V

    const/16 p3, 0x12c

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->createValueAnimator(IIILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 79
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object p3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/animation/Animator;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    invoke-virtual {p0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method initExpandAnimator([I[ILcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 4

    .line 63
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    .line 64
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 65
    aget v1, p1, v0

    aget v0, p2, v0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/transsion/camera/app/ui/HintUI;->initExpandAnimator(IILandroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout;)V

    .line 67
    :cond_0
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    const/4 p3, 0x1

    .line 68
    aget p1, p1, p3

    aget p2, p2, p3

    iget-object p3, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/HintUI;->initExpandAnimator(IILandroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout;)V

    :cond_1
    return-void
.end method

.method initHideAnimator(IILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 1

    .line 272
    new-instance v0, Lcom/transsion/camera/app/ui/-$$Lambda$HintUI$YMwNE_2OnNqRCZxGCOVBs9rChk8;

    invoke-direct {v0, p1, p3, p4, p2}, Lcom/transsion/camera/app/ui/-$$Lambda$HintUI$YMwNE_2OnNqRCZxGCOVBs9rChk8;-><init>(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 p2, 0x0

    const/16 p3, 0x12c

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->createFloatValueAnimator(FFILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 298
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object p3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 299
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/animation/Animator;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    invoke-virtual {p0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method initShrinkAnimator(IILandroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/TextView;)V
    .locals 2

    .line 100
    new-instance v0, Lcom/transsion/camera/app/ui/-$$Lambda$HintUI$Pes9QnE_BEiuBPtgHL6yF9RI9Ss;

    invoke-direct {v0, p3, p4}, Lcom/transsion/camera/app/ui/-$$Lambda$HintUI$Pes9QnE_BEiuBPtgHL6yF9RI9Ss;-><init>(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout;)V

    const/16 p3, 0x12c

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->createValueAnimator(IIILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 107
    invoke-virtual {p6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    const/4 p4, 0x0

    rsub-int/lit8 p2, p2, 0x0

    new-instance v0, Lcom/transsion/camera/app/ui/-$$Lambda$HintUI$tUy12VQYZ_vlXBcA79qR4d3qx4A;

    invoke-direct {v0, p5, p6}, Lcom/transsion/camera/app/ui/-$$Lambda$HintUI$tUy12VQYZ_vlXBcA79qR4d3qx4A;-><init>(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/TextView;)V

    invoke-virtual {p0, p4, p2, p3, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->createValueAnimator(IIILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p2

    const/4 p3, 0x2

    new-array p5, p3, [F

    .line 114
    fill-array-data p5, :array_0

    const-string v0, "alpha"

    invoke-static {p6, v0, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p5

    const-wide/16 v0, 0x12c

    .line 115
    invoke-virtual {p5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p5

    .line 117
    iget-object p6, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p1, v0, p4

    const/4 p1, 0x1

    aput-object p2, v0, p1

    aput-object p5, v0, p3

    invoke-virtual {p6, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 118
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 p2, 0x7d0

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 119
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method initShrinkAnimator([I[ILcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 10

    .line 85
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    .line 86
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/HintUI;->getShrinkTargetValue()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    if-gt v0, v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    :cond_0
    aget v4, p1, v2

    aget v5, p2, v2

    iget-object v6, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultTextParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v9, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/transsion/camera/app/ui/HintUI;->initShrinkAnimator(IILandroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/TextView;)V

    .line 91
    :cond_1
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/HintUI;->getShrinkTargetValue()[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    if-gt v0, v1, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 93
    :cond_2
    aget v4, p1, v2

    aget v5, p2, v2

    iget-object v6, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectTextParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v9, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectText:Landroid/widget/TextView;

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/transsion/camera/app/ui/HintUI;->initShrinkAnimator(IILandroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/TextView;)V

    :cond_3
    return-void
.end method

.method setupAsdHintViews(Landroid/view/ViewGroup;)V
    .locals 1

    const v0, 0x7f09005f

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintRootLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f09005c

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f09005b

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultImgView:Landroid/widget/ImageView;

    const v0, 0x7f090060

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdAlgorithResultLayoutWidth:I

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultTextParams:Landroid/widget/LinearLayout$LayoutParams;

    const v0, 0x7f09005e

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f09005d

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectImgView:Landroid/widget/ImageView;

    const v0, 0x7f09005a

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectText:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectTextParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdEffectLayoutWidth:I

    .line 58
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07007e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintGap:I

    return-void
.end method

.method showAsdHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 151
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->startAsdScaleAnimator(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method startAsdHintAnimator(Landroid/animation/Animator;)V
    .locals 0

    .line 144
    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method protected updateAlgoritLayout(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultImgView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultTextParams:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 158
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 159
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 161
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultTextParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    .line 162
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 163
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultTextParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 165
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method protected updateEffectLayout(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectTextParams:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 173
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 174
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 175
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectTextParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectText:Landroid/widget/TextView;

    .line 176
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 177
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectTextParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 179
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
