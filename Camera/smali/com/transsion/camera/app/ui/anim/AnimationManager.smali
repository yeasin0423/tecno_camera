.class public Lcom/transsion/camera/app/ui/anim/AnimationManager;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/anim/AnimationManager$AnimationHandler;
    }
.end annotation


# static fields
.field private static final ACTION_HIDE_ANIM_DELAY_MS_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTION_HIDE_ANIM_TYPE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTION_SHOW_ANIM_TYPE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAnimationCount:I

.field private final mContext:Landroid/content/Context;

.field private mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Lcom/transsion/common/blur/GaussianBlur;",
            ">;"
        }
    .end annotation
.end field

.field private mGaussianBlur:Lcom/transsion/common/blur/GaussianBlur;

.field private final mGaussianBlurThread:Ljava/lang/Thread;

.field private mHandler:Landroid/os/Handler;

.field private volatile mIsAnimating:Z

.field private mIsStarted:Z

.field private volatile mNeedWideScaleAnim:Z

.field private mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

.field private mPreviewRenderCallback:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

.field private mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AnimationManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 84
    new-instance v0, Lcom/transsion/camera/app/ui/anim/AnimationManager$3;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$3;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_SHOW_ANIM_TYPE_MAP:Ljava/util/HashMap;

    .line 98
    new-instance v0, Lcom/transsion/camera/app/ui/anim/AnimationManager$4;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$4;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_HIDE_ANIM_TYPE_MAP:Ljava/util/HashMap;

    .line 111
    new-instance v0, Lcom/transsion/camera/app/ui/anim/AnimationManager$5;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$5;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_HIDE_ANIM_DELAY_MS_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    .line 54
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    .line 55
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedWideScaleAnim:Z

    .line 61
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsStarted:Z

    .line 62
    new-instance v0, Lcom/transsion/camera/app/ui/anim/AnimationManager$AnimationHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$AnimationHandler;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Lcom/transsion/camera/app/ui/anim/AnimationManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$1;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewRenderCallback:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    .line 75
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$2;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 82
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mGaussianBlurThread:Ljava/lang/Thread;

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mContext:Landroid/content/Context;

    const v0, 0x7f09019b

    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedWideScaleAnim:Z

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->startWideAnim(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->hidePreviewCover()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->drawBlackPreviewCover()V

    return-void
.end method

.method private drawBlackPreviewCover()V
    .locals 2

    .line 358
    iget v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    if-eqz v0, :cond_0

    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const v1, 0x7f0601a9

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(ILandroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method private getGaussianBlur()Lcom/transsion/common/blur/GaussianBlur;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mFuture:Ljava/util/concurrent/FutureTask;

    const-wide/16 v1, 0xfa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/common/blur/GaussianBlur;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 251
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->launderThrowable(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private getPreviewRect()Landroid/graphics/Rect;
    .locals 1

    .line 366
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewView()Landroid/view/View;

    move-result-object p0

    .line 367
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 368
    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    return-object v0
.end method

.method private hidePreviewCover()V
    .locals 3

    .line 345
    iget v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    if-eqz v0, :cond_0

    return-void

    .line 346
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hidePreviewCover switchAnimView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 352
    iput v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    .line 353
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    .line 354
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedWideScaleAnim:Z

    return-void
.end method

.method private launderThrowable(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1

    .line 256
    instance-of p0, p1, Ljava/lang/RuntimeException;

    if-eqz p0, :cond_0

    .line 257
    check-cast p1, Ljava/lang/RuntimeException;

    return-object p1

    .line 258
    :cond_0
    instance-of p0, p1, Ljava/lang/Error;

    if-eqz p0, :cond_1

    .line 259
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 261
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not unchecked "

    invoke-direct {p0, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method private showPreviewCover(I)V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    if-eqz v0, :cond_3

    .line 287
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 293
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 294
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 295
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->clear()V

    .line 296
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 297
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 299
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 301
    invoke-interface {p1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->stopRenderRequest()V

    .line 303
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->updateBlurBitmap(Landroid/view/View;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private startPreviewCoverAnim(II)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const/16 v2, 0x34

    if-eq p1, v2, :cond_2

    :cond_0
    if-nez p2, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    if-ne p1, v0, :cond_3

    .line 224
    :cond_2
    iget v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    .line 226
    :cond_3
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    if-eqz v2, :cond_7

    if-eq p2, v0, :cond_4

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_5

    .line 231
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedWideScaleAnim:Z

    :cond_5
    const/16 v0, 0x3f

    if-ne p1, v0, :cond_6

    const/4 v0, 0x0

    .line 234
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->startWideAnim(Z)V

    .line 236
    :cond_6
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreviewCoverAnim type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", action:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mIsAnimating :"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", animationCount:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " return."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 241
    :cond_7
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    .line 242
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreviewCoverAnim action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", type:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",animationCount:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->showPreviewCover(I)V

    return-void
.end method

.method private startWideAnim(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 375
    new-instance v0, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 383
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v1}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewView()Landroid/view/View;

    move-result-object v1

    .line 384
    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 386
    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->updateBlurBitmap(Landroid/view/View;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V

    .line 389
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->startWideChangeAnim(ZLcom/transsion/camera/app/ui/view/SwitchAnimView$AnimEndCallback;)V

    return-void
.end method

.method private stopPreviewCoverAnim(III)V
    .locals 9

    .line 181
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    const-string v1, "stopPreviewCoverAnim action:"

    if-nez v0, :cond_0

    .line 182
    sget-object p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", return."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    if-eq p1, v0, :cond_3

    const/16 v3, 0x35

    if-eq p1, v3, :cond_3

    :cond_1
    if-nez p2, :cond_2

    if-eq p1, v2, :cond_3

    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_4

    const/4 v3, 0x5

    if-ne p1, v3, :cond_4

    .line 190
    :cond_3
    iget v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    :cond_4
    const/16 v3, 0x1b

    const/16 v4, 0x9

    if-eq p1, v4, :cond_5

    if-ne p1, v3, :cond_6

    :cond_5
    const/4 v5, 0x0

    .line 193
    iput v5, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    .line 195
    :cond_6
    iget v5, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    const-string v6, ", animationCount:"

    const-string v7, ", type:"

    if-lez v5, :cond_7

    .line 196
    sget-object p3, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not zero, return."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 200
    :cond_7
    sget-object v5, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 201
    iget-object p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p2

    if-eqz p2, :cond_a

    if-ne p1, v3, :cond_8

    .line 204
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    int-to-long v0, p3

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p0, 0x0

    .line 206
    invoke-interface {p2, p0, p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V

    goto :goto_0

    :cond_8
    if-ne p1, v4, :cond_9

    .line 208
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    int-to-long v1, p3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 210
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewRenderCallback:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p2, p1, p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V

    goto :goto_0

    .line 212
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewRenderCallback:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p2, p1, p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V

    goto :goto_0

    .line 215
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    int-to-long p1, p3

    invoke-virtual {p0, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method private updateBlurBitmap(Landroid/view/View;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V
    .locals 8

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mGaussianBlur:Lcom/transsion/common/blur/GaussianBlur;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 312
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->getGaussianBlur()Lcom/transsion/common/blur/GaussianBlur;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mGaussianBlur:Lcom/transsion/common/blur/GaussianBlur;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 314
    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mGaussianBlur:Lcom/transsion/common/blur/GaussianBlur;

    .line 315
    sget-object v2, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGaussianBlur RuntimeException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 318
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 320
    sget-object v3, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateBlurBitmap preview width "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " height "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    if-eqz p2, :cond_1

    .line 322
    invoke-interface {p2, v0, v2, v5}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 323
    :cond_1
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateBlurBitmap getPreview bitmap spent time: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz v1, :cond_2

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mGaussianBlur:Lcom/transsion/common/blur/GaussianBlur;

    if-eqz v0, :cond_2

    const/4 p2, 0x5

    .line 326
    invoke-virtual {v0, v1, p2}, Lcom/transsion/common/blur/GaussianBlur;->blurBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 327
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBlurBitmap blurBitmap spent time:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 328
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 329
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 330
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 332
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 333
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    if-nez p2, :cond_3

    .line 335
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const p2, 0x7f0601a9

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(ILandroid/graphics/Rect;)V

    goto :goto_1

    .line 337
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const p2, 0x7f0802a2

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(ILandroid/graphics/Rect;)V

    .line 340
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 341
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/high16 p1, -0x1000000

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public cameraOperateAction(I)V
    .locals 3

    .line 160
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cameraOperateAction action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 161
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mGaussianBlurThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsStarted:Z

    .line 166
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_SHOW_ANIM_TYPE_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_SHOW_ANIM_TYPE_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->startPreviewCoverAnim(II)V

    goto :goto_0

    .line 168
    :cond_1
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_HIDE_ANIM_DELAY_MS_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_HIDE_ANIM_TYPE_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_HIDE_ANIM_DELAY_MS_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->stopPreviewCoverAnim(III)V

    :cond_2
    :goto_0
    return-void
.end method

.method public hideCustomPreviewCover()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 280
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->clear()V

    :cond_0
    return-void
.end method

.method public setPreviewController(Lcom/transsion/camera/app/ui/preview/IPreviewController;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    return-void
.end method

.method public showCustomPreviewCover(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewView()Landroid/view/View;

    move-result-object v0

    .line 268
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 269
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 271
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 272
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/high16 p1, -0x1000000

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 417
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mGaussianBlur:Lcom/transsion/common/blur/GaussianBlur;

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0}, Lcom/transsion/common/blur/GaussianBlur;->destoryBlur()V

    .line 419
    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mGaussianBlur:Lcom/transsion/common/blur/GaussianBlur;

    :cond_0
    const/4 v0, 0x0

    .line 421
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsStarted:Z

    return-void
.end method

.method public updateTargetRect(II)V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTargetRect, top="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->updateTargetRect(II)V

    :cond_0
    return-void
.end method
