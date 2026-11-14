.class public abstract Lcom/transsion/camera/app/ui/AbstractShutterUI;
.super Ljava/lang/Object;
.source "AbstractShutterUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IShutterUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;
    }
.end annotation


# instance fields
.field private mDrawableState:I

.field private mIdleToProcessingDrawable:Landroid/graphics/drawable/Drawable;

.field private mIdleToSmileDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsResumed:Z

.field private mProcessingToIdleDrawable:Landroid/graphics/drawable/Drawable;

.field private mRegularToSmallDrawable:Landroid/graphics/drawable/Drawable;

.field private mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

.field private mShutterListener:Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

.field private mShutterType:I

.field private mShutterTypeSelftimerOff:I

.field private mShutterTypeSelftimerOn:I

.field private mSizeState:I

.field private mSmallToRegularDrawable:Landroid/graphics/drawable/Drawable;

.field private mSmallToSmileDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    .line 35
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    .line 39
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterTypeSelftimerOff:I

    .line 40
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterTypeSelftimerOn:I

    .line 51
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterListener:Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateImageResourceByState()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/ui/view/ShutterButtonView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    return-object p0
.end method

.method private getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private loadAnimatorDrawables()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->loadAnimatorDrawables(Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;)V

    return-void
.end method

.method private loadAnimatorDrawables(Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;)V
    .locals 4

    if-eqz p2, :cond_12

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->stopAllAnimations()V

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 372
    iget v2, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    iget v3, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    if-eq v2, v3, :cond_3

    .line 373
    :cond_1
    iget v2, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    if-lez v2, :cond_2

    .line 374
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToProcessingDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 376
    :cond_2
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToProcessingDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 380
    iget v2, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    iget v3, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    if-eq v2, v3, :cond_6

    .line 381
    :cond_4
    iget v2, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    if-lez v2, :cond_5

    .line 382
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mProcessingToIdleDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 384
    :cond_5
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mProcessingToIdleDrawable:Landroid/graphics/drawable/Drawable;

    :cond_6
    :goto_1
    if-eqz p1, :cond_7

    .line 388
    iget v2, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    iget v3, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    if-eq v2, v3, :cond_9

    .line 389
    :cond_7
    iget v2, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    if-lez v2, :cond_8

    .line 390
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRegularToSmallDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 392
    :cond_8
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRegularToSmallDrawable:Landroid/graphics/drawable/Drawable;

    :cond_9
    :goto_2
    if-eqz p1, :cond_a

    .line 396
    iget v2, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    iget v3, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    if-eq v2, v3, :cond_c

    .line 397
    :cond_a
    iget v2, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    if-lez v2, :cond_b

    .line 398
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSmallToRegularDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 400
    :cond_b
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSmallToRegularDrawable:Landroid/graphics/drawable/Drawable;

    :cond_c
    :goto_3
    if-eqz p1, :cond_d

    .line 404
    iget v2, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToSmileDrawableId:I

    iget v3, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToSmileDrawableId:I

    if-eq v2, v3, :cond_f

    .line 405
    :cond_d
    iget v2, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToSmileDrawableId:I

    if-lez v2, :cond_e

    .line 406
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToSmileDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 408
    :cond_e
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToSmileDrawable:Landroid/graphics/drawable/Drawable;

    :cond_f
    :goto_4
    if-eqz p1, :cond_10

    .line 412
    iget p1, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToSmileDrawableId:I

    iget v2, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToSmileDrawableId:I

    if-eq p1, v2, :cond_12

    .line 413
    :cond_10
    iget p1, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToSmileDrawableId:I

    if-lez p1, :cond_11

    .line 414
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSmallToSmileDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 416
    :cond_11
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSmallToSmileDrawable:Landroid/graphics/drawable/Drawable;

    :cond_12
    :goto_5
    return-void
.end method

.method private loadSpecToView()V
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz v0, :cond_0

    .line 423
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateImageResourceByState()V

    :cond_0
    return-void
.end method

.method private stopAllAnimations()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 74
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToProcessingDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mProcessingToIdleDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRegularToSmallDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSmallToRegularDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToSmileDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSmallToSmileDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->stopAnimations([Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private varargs stopAnimations([Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 434
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 436
    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateImageResourceByState()V
    .locals 3

    .line 345
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    iget p0, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 348
    :cond_0
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    iget v0, v0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleSmallDrawableId:I

    if-lez v0, :cond_1

    .line 349
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShutterButtonView isPressed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->isPressed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isPressed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    iget p0, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getShutterTypeSelftimerOff()I
    .locals 0

    .line 162
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterTypeSelftimerOff:I

    return p0
.end method

.method public getShutterTypeSelftimerOn()I
    .locals 0

    .line 172
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterTypeSelftimerOn:I

    return p0
.end method

.method protected abstract getUISpecFromType(I)Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c00df

    const/4 v1, 0x1

    .line 56
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901f5

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    return-object p1
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "mShutterButtonView clear pressed"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 101
    :cond_1
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsResumed:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsResumed:Z

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 428
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz p0, :cond_0

    .line 429
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setOnShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterListener:Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    return-void
.end method

.method public setShutterTypeSelftimerOff(I)V
    .locals 0

    .line 157
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterTypeSelftimerOff:I

    return-void
.end method

.method public setShutterTypeSelftimerOn(I)V
    .locals 0

    .line 167
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterTypeSelftimerOn:I

    return-void
.end method

.method public setupViews()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;Lcom/transsion/camera/app/ui/AbstractShutterUI$1;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setOnShutterListener(Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;)V

    .line 64
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->loadAnimatorDrawables()V

    .line 65
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->loadSpecToView()V

    return-void
.end method

.method public transitionToIdle()V
    .locals 6

    .line 279
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 280
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transitionToIdle, state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " --> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 281
    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 283
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    return-void

    .line 287
    :cond_1
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mProcessingToIdleDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v5, v4, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz v3, :cond_2

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsResumed:Z

    if-eqz v5, :cond_2

    .line 289
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    .line 290
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    .line 292
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 293
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 294
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void

    .line 297
    :cond_2
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    .line 298
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v2, :cond_3

    goto :goto_1

    .line 302
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    .line 304
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    if-ne v2, v1, :cond_4

    .line 305
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateImageResourceByState()V

    return-void

    :cond_4
    if-eqz v0, :cond_5

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mProcessingToIdleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 310
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mProcessingToIdleDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$4;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    goto :goto_1

    .line 319
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateImageResourceByState()V

    :cond_6
    :goto_1
    return-void
.end method

.method public transitionToProcessing()V
    .locals 5

    .line 247
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 248
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transitionToProcessing, state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 249
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    .line 250
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v2, :cond_1

    goto :goto_1

    .line 254
    :cond_1
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToProcessingDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v4, v3, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v4, :cond_2

    .line 255
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    .line 257
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 258
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 259
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void

    .line 263
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    if-eqz v0, :cond_3

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToProcessingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 265
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToProcessingDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$3;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    goto :goto_1

    .line 273
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateImageResourceByState()V

    :cond_4
    :goto_1
    return-void
.end method

.method public transitionToRegular()V
    .locals 6

    .line 219
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 220
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transitionToRegular, state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " --> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 221
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    .line 222
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v2, :cond_1

    goto :goto_1

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 228
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "transitionToRegular, cancel Animation"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setEnable(Z)V

    :cond_2
    if-eqz v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSmallToRegularDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 233
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSmallToRegularDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    goto :goto_1

    .line 241
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateImageResourceByState()V

    :cond_4
    :goto_1
    return-void
.end method

.method public transitionToSmall()V
    .locals 5

    .line 181
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 182
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transitionToSmall, state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 183
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    .line 184
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v2, :cond_1

    goto :goto_1

    .line 188
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "transitionToSmall, cancel Animation"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setEnable(Z)V

    :cond_2
    if-eqz v0, :cond_3

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRegularToSmallDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 195
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRegularToSmallDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$1;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    goto :goto_1

    .line 213
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateImageResourceByState()V

    :cond_4
    :goto_1
    return-void
.end method

.method public transitionToSmile()V
    .locals 5

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transitionToSmile, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSizeState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToSmileDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSmallToSmileDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    .line 330
    iput v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    .line 331
    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 332
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 334
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 336
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    .line 337
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 338
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 339
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method public unInit()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->stopAllAnimations()V

    return-void
.end method

.method public updateShutterType(IZ)V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateShutterType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    if-eq v0, p1, :cond_1

    .line 143
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 146
    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    .line 148
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    .line 149
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->getUISpecFromType(I)Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    .line 150
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->loadAnimatorDrawables(Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;)V

    .line 151
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->loadSpecToView()V

    :cond_1
    return-void
.end method
