.class public Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyUI;
.super Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;
.source "FaceBeautyUI.java"


# static fields
.field private static final FACEBEAUTY_ANIMATOR_ICON_DELAY_DURATION:I = 0x96

.field private static final FACEBEAUTY_ANIMATOR_ICON_DURATION:I = 0x96


# instance fields
.field private mInterpolator:Landroid/view/animation/PathInterpolator;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3

    .line 33
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;-><init>(Landroid/content/res/Resources;)V

    .line 28
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method private addLevelListFadeInAnimator(Landroid/view/View;Landroid/animation/AnimatorSet;)V
    .locals 6

    .line 105
    instance-of p0, p1, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 106
    check-cast p1, Landroid/view/ViewGroup;

    const/4 p0, 0x0

    move v0, p0

    .line 107
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    .line 109
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 110
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 111
    fill-array-data v3, :array_0

    const-string v4, "scaleX"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v4, v2, [F

    .line 112
    fill-array-data v4, :array_1

    const-string v5, "scaleY"

    invoke-static {v1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v3, v2, p0

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 113
    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addLevelListFadeOutAnimator(Landroid/view/View;Landroid/animation/AnimatorSet;)V
    .locals 6

    .line 119
    instance-of p0, p1, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 120
    check-cast p1, Landroid/view/ViewGroup;

    const/4 p0, 0x0

    move v0, p0

    .line 121
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 123
    fill-array-data v3, :array_0

    const-string v4, "scaleX"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v4, v2, [F

    .line 124
    fill-array-data v4, :array_1

    const-string v5, "scaleY"

    invoke-static {v1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v3, v2, p0

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 125
    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method protected fadeIn(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 43
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 44
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 45
    invoke-direct {p0, p4, p1}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyUI;->addLevelListFadeInAnimator(Landroid/view/View;Landroid/animation/AnimatorSet;)V

    .line 46
    new-instance p3, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyUI$1;

    invoke-direct {p3, p0, p4}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyUI$1;-><init>(Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyUI;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 60
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSettingUISpec:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {p3, p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result p0

    const/4 p3, 0x1

    const/4 p4, -0x1

    if-ne p0, p4, :cond_0

    return p3

    .line 64
    :cond_0
    move-object p0, p2

    check-cast p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyIconView;

    .line 65
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const p4, 0x7f0802d4

    invoke-virtual {p2, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 64
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-wide/16 v0, 0x96

    .line 67
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 68
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 69
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return p3
.end method

.method protected fadeOut(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 75
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 76
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 77
    invoke-direct {p0, p4, p1}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyUI;->addLevelListFadeOutAnimator(Landroid/view/View;Landroid/animation/AnimatorSet;)V

    .line 78
    new-instance p3, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyUI$2;

    invoke-direct {p3, p0, p4}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyUI$2;-><init>(Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyUI;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 91
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSettingUISpec:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {p3, p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result p0

    const/4 p3, 0x1

    const/4 p4, -0x1

    if-ne p0, p4, :cond_0

    return p3

    .line 95
    :cond_0
    move-object p0, p2

    check-cast p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyIconView;

    .line 96
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const p4, 0x7f0802d3

    invoke-virtual {p2, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 95
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-wide/16 v0, 0x96

    .line 98
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 100
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return p3
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSettingUISpec(Landroid/content/res/Resources;)Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;
    .locals 0

    .line 38
    new-instance p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUISpec;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUISpec;-><init>(Landroid/content/res/Resources;)V

    return-object p0
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method protected updateLevel()V
    .locals 0

    return-void
.end method
