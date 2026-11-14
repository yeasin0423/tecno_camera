.class Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;
.super Ljava/lang/Object;
.source "ModeScrollUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ModeScrollUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModeView"
.end annotation


# instance fields
.field private final mIcon:Landroid/widget/ImageView;

.field private final mRoot:Landroid/view/View;

.field private final mRotateWrap:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->mRoot:Landroid/view/View;

    .line 336
    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->mRotateWrap:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 337
    iput-object p3, p0, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->mIcon:Landroid/widget/ImageView;

    .line 338
    iput-object p4, p0, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->mTitle:Landroid/widget/TextView;

    return-void
.end method

.method private castToSquare(Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;)V
    .locals 6

    const/4 p0, 0x0

    .line 350
    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 351
    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 350
    invoke-virtual {p1, v0, p0}, Landroid/widget/FrameLayout;->measure(II)V

    .line 352
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 353
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 354
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 355
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private varargs createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/Animator;
    .locals 0

    .line 368
    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0x12c

    .line 369
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private varargs createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;
    .locals 0

    .line 374
    invoke-static {p1, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p2

    .line 375
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method


# virtual methods
.method createFadeInAnimator()Landroid/animation/Animator;
    .locals 3

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->mRotateWrap:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-direct {p0, v0, v2, v1}, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method createFadeOutAnimator()Landroid/animation/Animator;
    .locals 4

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->mRotateWrap:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/16 v2, 0x64

    const-string v3, "alpha"

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method createLeftEnterAnimator()Landroid/animation/Animator;
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->mRoot:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "translationX"

    invoke-direct {p0, v0, v2, v1}, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        -0x3e100000    # -30.0f
        0x0
    .end array-data
.end method

.method createRightEnterAnimator()Landroid/animation/Animator;
    .locals 3

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->mRoot:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "translationX"

    invoke-direct {p0, v0, v2, v1}, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x41f00000    # 30.0f
        0x0
    .end array-data
.end method

.method hide()V
    .locals 1

    .line 360
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->mRotateWrap:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method setOrientation(I)V
    .locals 1

    .line 364
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->mRotateWrap:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    return-void
.end method

.method show(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->mIcon:Landroid/widget/ImageView;

    iget v1, p1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mUnSelectedIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->mTitle:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->mRotateWrap:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->castToSquare(Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;)V

    .line 345
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->mRotateWrap:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 346
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeScrollUI$ModeView;->mRoot:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method
