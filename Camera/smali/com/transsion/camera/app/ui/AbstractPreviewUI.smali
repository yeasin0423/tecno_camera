.class public abstract Lcom/transsion/camera/app/ui/AbstractPreviewUI;
.super Ljava/lang/Object;
.source "AbstractPreviewUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IPreviewUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;,
        Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;,
        Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;,
        Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field AuxFadeInListener:Landroid/view/animation/Animation$AnimationListener;

.field AuxFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

.field ExpandFadeInListener:Landroid/view/animation/Animation$AnimationListener;

.field ExpandFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

.field private mAbsolutePreviewRect:Landroid/graphics/Rect;

.field private mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

.field private mAuxExpandView:Landroid/view/View;

.field private mAuxFadeInAnimator:Landroid/view/animation/Animation;

.field private mAuxFadeOutAnimator:Landroid/view/animation/Animation;

.field private mAuxPreviewHeight:I

.field private mAuxPreviewLensSupport:Z

.field private mAuxPreviewMarginLeft:I

.field private mAuxPreviewMarginTop:I

.field private mAuxPreviewSatSupport:Z

.field private mAuxPreviewView:Landroid/view/View;

.field private mAuxPreviewWidth:I

.field private mAuxShowZoomValue:I

.field private mAuxSurfaceModeSupport:Z

.field private mAuxSurfaceShow:Z

.field private mBaseZoomRatio:I

.field private mBottomOffset:I

.field private mCurrentCameraZoomRatio:I

.field private mExpandFadeInAnimator:Landroid/view/animation/Animation;

.field private mExpandFadeOutAnimator:Landroid/view/animation/Animation;

.field private mExpandViewShow:Z

.field private mLocateAuxView:Lcom/transsion/camera/app/ui/view/AuxLocateView;

.field private mMarginBottom:I

.field private mMarginTop:I

.field private mNeedShowCover:Z

.field private mOnLayoutChangeListenerImpl:Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPreviewAspectRatio:D

.field private mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private final mPreviewRectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewView:Landroid/view/View;

.field private mRelativePreviewRect:Landroid/graphics/Rect;

.field private mRootView:Landroid/view/ViewGroup;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

.field private mTargetHeight:I

.field private mTopOffset:I

.field private final mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

.field private mZoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AbstractPreviewUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAbsolutePreviewRect:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRelativePreviewRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    .line 92
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mZoomValue:I

    const/16 v1, 0x140

    .line 94
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewWidth:I

    const/16 v1, 0xf0

    .line 95
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewHeight:I

    .line 96
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginLeft:I

    .line 97
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginTop:I

    const/4 v1, 0x1

    .line 98
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mBaseZoomRatio:I

    .line 99
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mCurrentCameraZoomRatio:I

    const/16 v2, 0x7d0

    .line 100
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxShowZoomValue:I

    .line 102
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewLensSupport:Z

    .line 103
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewSatSupport:Z

    .line 104
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceModeSupport:Z

    .line 105
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandViewShow:Z

    .line 113
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    .line 114
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    .line 115
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    .line 116
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mNeedShowCover:Z

    .line 544
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$4;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->AuxFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 563
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$5;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->AuxFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 583
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$6;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->ExpandFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 600
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$7;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$7;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->ExpandFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 711
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 119
    new-instance v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    .line 120
    new-instance p1, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Lcom/transsion/camera/app/ui/AbstractPreviewUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mOnLayoutChangeListenerImpl:Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;

    .line 121
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewRectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 122
    new-instance p1, Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getAuxPreviewSurface()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getAuxSurfaceShow()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getExpandViewShow()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/app/ui/AbstractPreviewUI;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->doSetPreviewSize(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getAuxPreviewLensSupport()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getAuxPreviewSatSupport()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getAuxPreviewModeSupport()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->fadeOutAuxPreview()V

    return-void
.end method

.method static synthetic access$1800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->fadeOutExpandPreview()V

    return-void
.end method

.method static synthetic access$1900(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->fadeInExpandPreview()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->fadeInAuxPreview()V

    return-void
.end method

.method static synthetic access$2100(Lcom/transsion/camera/app/ui/AbstractPreviewUI;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->doSetAuxPreviewSize(II)V

    return-void
.end method

.method static synthetic access$2200(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateLocateViewSize()V

    return-void
.end method

.method static synthetic access$2300(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setExpandViewShow(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewLensSupport:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewSatSupport:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceModeSupport:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    return p0
.end method

.method static synthetic access$2702(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateShowZoomValue()V

    return-void
.end method

.method static synthetic access$3000(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mZoomValue:I

    return p0
.end method

.method static synthetic access$3002(Lcom/transsion/camera/app/ui/AbstractPreviewUI;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mZoomValue:I

    return p1
.end method

.method static synthetic access$3100(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxShowZoomValue:I

    return p0
.end method

.method static synthetic access$3200(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View$OnTouchListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/graphics/Rect;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRelativePreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/graphics/Rect;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAbsolutePreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$3500()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 47
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->notifyPreviewRectChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/ui/preview/IPreviewController;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandViewShow:Z

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateAuxPreview()V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxExpandView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getExpandView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private doSetAuxPreviewSize(II)V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 384
    :cond_0
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewWidth:I

    .line 385
    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewHeight:I

    .line 386
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateAuxPreviewLayout()V

    .line 387
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->setAuxPreviewSize(II)V

    .line 388
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updateLocateViewSize()V

    return-void
.end method

.method private doSetPreviewSize(II)V
    .locals 4

    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    int-to-float v1, p2

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 436
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->isSameAspectRatio(DD)Z

    move-result v2

    if-nez v2, :cond_0

    .line 437
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    .line 438
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->updatePreviewLayout()V

    .line 441
    :cond_0
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mNeedShowCover:Z

    if-eqz v2, :cond_1

    .line 442
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->showCover()V

    .line 445
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v2, p1, p2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->setPreviewSize(II)V

    .line 446
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    new-instance v3, Lcom/transsion/camera/app/ui/AbstractPreviewUI$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$3;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;II)V

    const-wide/16 p0, 0x32

    invoke-virtual {v2, v3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 452
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "%.3f"

    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setPictureRatioValue(Ljava/lang/String;)V

    return-void
.end method

.method private fadeInAuxPreview()V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxFadeInAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private fadeInExpandPreview()V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxExpandView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandFadeInAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private fadeOutAuxPreview()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxFadeOutAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private fadeOutExpandPreview()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxExpandView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandFadeOutAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private getAuxPreviewLensSupport()Z
    .locals 0

    .line 533
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewLensSupport:Z

    return p0
.end method

.method private getAuxPreviewModeSupport()Z
    .locals 0

    .line 541
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceModeSupport:Z

    return p0
.end method

.method private getAuxPreviewSatSupport()Z
    .locals 0

    .line 537
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewSatSupport:Z

    return p0
.end method

.method private getAuxPreviewSurface()Landroid/view/View;
    .locals 0

    .line 513
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    return-object p0
.end method

.method private getAuxSurfaceShow()Z
    .locals 0

    .line 529
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    return p0
.end method

.method private getCameraPreviewType(Landroid/content/res/Resources;)I
    .locals 0

    const p0, 0x7f0a000c

    .line 456
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method private getExpandView()Landroid/view/View;
    .locals 0

    .line 517
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxExpandView:Landroid/view/View;

    return-object p0
.end method

.method private getExpandViewShow()Z
    .locals 0

    .line 521
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandViewShow:Z

    return p0
.end method

.method private static isSameAspectRatio(DD)Z
    .locals 0

    sub-double/2addr p0, p2

    .line 509
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide p2, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$setAuxPreviewLensSupport$0()V
    .locals 1

    .line 330
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$setAuxPreviewModeSupport$1()V
    .locals 1

    .line 340
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private notifyPreviewRectChanged()V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewRectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    .line 461
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->notifyPreviewRectChanged(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyPreviewRectChanged(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAbsolutePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAbsolutePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAbsolutePreviewRect:Landroid/graphics/Rect;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;->onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRelativePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRelativePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_3

    .line 470
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRelativePreviewRect:Landroid/graphics/Rect;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;->onRelativePreviewRectChanged(Landroid/graphics/Rect;)V

    :cond_3
    return-void
.end method

.method private setExpandViewShow(Z)V
    .locals 0

    .line 525
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandViewShow:Z

    return-void
.end method

.method private showCover()V
    .locals 4

    .line 365
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showCover"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewViewCover()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 368
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    if-nez v1, :cond_0

    const/16 p0, 0x8

    .line 370
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 372
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 373
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3, p0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 374
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateAuxPreview()V
    .locals 2

    .line 707
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 708
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private updateAuxPreviewLayout()V
    .locals 5

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 393
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 394
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginLeft:I

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTopOffset:I

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginTop:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 396
    :cond_0
    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginLeft:I

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginTop:I

    add-int/2addr v1, v4

    invoke-virtual {v0, v3, v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 398
    :goto_0
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 399
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 400
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 401
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxExpandView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 405
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    if-nez v1, :cond_2

    .line 406
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginLeft:I

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTopOffset:I

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginTop:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 408
    :cond_2
    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginLeft:I

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginTop:I

    add-int/2addr v1, v4

    invoke-virtual {v0, v3, v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 410
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxExpandView:Landroid/view/View;

    if-eqz p0, :cond_3

    .line 411
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private updateLocateViewSize()V
    .locals 4

    .line 417
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mZoomValue:I

    if-eqz v0, :cond_1

    .line 419
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewSatSupport:Z

    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz v1, :cond_0

    int-to-float v0, v0

    .line 420
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mBaseZoomRatio:I

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mCurrentCameraZoomRatio:I

    mul-int/2addr v1, v3

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    .line 422
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mBaseZoomRatio:I

    :goto_0
    int-to-float v1, v1

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 425
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 426
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mLocateAuxView:Lcom/transsion/camera/app/ui/view/AuxLocateView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mLocateAuxView:Lcom/transsion/camera/app/ui/view/AuxLocateView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mLocateAuxView:Lcom/transsion/camera/app/ui/view/AuxLocateView;

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewWidth:I

    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewHeight:I

    invoke-virtual {v0, v3, p0, v1, v2}, Lcom/transsion/camera/app/ui/view/AuxLocateView;->setAuxLocateViewSize(IIFF)V

    :cond_1
    return-void
.end method

.method private updatePreviewLayout()V
    .locals 8

    .line 476
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    .line 477
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 478
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v2, v0

    .line 480
    iget-wide v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    .line 481
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenRatio()D

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->isSameAspectRatio(DD)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 482
    iput v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    goto :goto_0

    .line 483
    :cond_0
    iget-wide v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    const-wide v6, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-static {v4, v5, v6, v7}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->isSameAspectRatio(DD)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 484
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTopOffset:I

    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    goto :goto_0

    .line 485
    :cond_1
    iget-wide v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v6, v7}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->isSameAspectRatio(DD)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 486
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTopOffset:I

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mBottomOffset:I

    sub-int v4, v1, v4

    sub-int/2addr v4, v2

    iget v5, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    goto :goto_0

    .line 487
    :cond_2
    iget-wide v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    const-wide v6, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    invoke-static {v4, v5, v6, v7}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->isSameAspectRatio(DD)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 488
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTopOffset:I

    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    goto :goto_0

    .line 489
    :cond_3
    iget-wide v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->isSameAspectRatio(DD)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 490
    iput v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    goto :goto_0

    .line 491
    :cond_4
    iget-wide v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    const-wide v6, 0x4000aaaaaaaaaaabL    # 2.0833333333333335

    invoke-static {v4, v5, v6, v7}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->isSameAspectRatio(DD)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 492
    iput v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    goto :goto_0

    .line 493
    :cond_5
    iget-wide v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    const-wide v6, 0x4000e38e38e38e39L    # 2.111111111111111

    invoke-static {v4, v5, v6, v7}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->isSameAspectRatio(DD)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 494
    iput v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    .line 496
    :cond_6
    :goto_0
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    sub-int v2, v1, v2

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    .line 497
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 498
    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    iget v5, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    invoke-virtual {v2, v3, v4, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 499
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz v2, :cond_7

    .line 501
    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginTop:I

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mMarginBottom:I

    sub-int/2addr v1, v4

    invoke-virtual {v2, v3, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->updateTargetRect(II)V

    .line 503
    :cond_7
    sget-object v1, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreviewLayout targetWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",targetHeight:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTargetHeight:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mTopOffset:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTopOffset:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mBottomOffset:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mBottomOffset:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mPreviewAspectRatio:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewAspectRatio:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateShowZoomValue()V
    .locals 2

    .line 233
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewLensSupport:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    .line 234
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mCurrentCameraZoomRatio:I

    div-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxShowZoomValue:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d0

    .line 236
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxShowZoomValue:I

    :goto_0
    return-void
.end method


# virtual methods
.method public cameraOperateAction(I)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->cameraOperateAction(I)V

    .line 162
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    if-eqz p0, :cond_1

    .line 163
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->cameraOperateAction(I)V

    :cond_1
    return-void
.end method

.method public getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method public getPreviewSurfaceType()I
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewSurfaceType()I

    move-result p0

    return p0
.end method

.method public hideCustomPreviewCover()V
    .locals 0

    .line 352
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->hideCustomPreviewCover()V

    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 176
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 177
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->getCameraPreviewType(Landroid/content/res/Resources;)I

    move-result v1

    const v2, 0x7f070084

    .line 178
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginLeft:I

    const v2, 0x7f070085

    .line 179
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewMarginTop:I

    const v2, 0x7f0a0006

    .line 180
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mBaseZoomRatio:I

    const v2, 0x7f0a0007

    .line 181
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mCurrentCameraZoomRatio:I

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    .line 190
    new-instance v0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    goto :goto_0

    .line 184
    :cond_0
    new-instance v0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    goto :goto_0

    .line 187
    :cond_1
    new-instance v0, Lcom/transsion/camera/app/ui/preview/TextureViewController;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/preview/TextureViewController;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Lcom/transsion/camera/app/ui/AbstractPreviewUI$1;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)Landroid/view/View;

    move-result-object p1

    .line 194
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRootView:Landroid/view/ViewGroup;

    .line 195
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewView()Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    .line 196
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 197
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getAuxPreviewView()Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    .line 198
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getAuxExpandView()Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxExpandView:Landroid/view/View;

    .line 199
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getLocateAuxView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/view/AuxLocateView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mLocateAuxView:Lcom/transsion/camera/app/ui/view/AuxLocateView;

    .line 200
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getAuxPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 201
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz p2, :cond_2

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->setPreviewController(Lcom/transsion/camera/app/ui/preview/IPreviewController;)V

    .line 204
    :cond_2
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxExpandView:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$1;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$2;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f01000f

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxFadeInAnimator:Landroid/view/animation/Animation;

    .line 221
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f010010

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxFadeOutAnimator:Landroid/view/animation/Animation;

    .line 222
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f010027

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandFadeInAnimator:Landroid/view/animation/Animation;

    .line 223
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f010028

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandFadeOutAnimator:Landroid/view/animation/Animation;

    .line 225
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxFadeInAnimator:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->AuxFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 226
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxFadeOutAnimator:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->AuxFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 227
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandFadeInAnimator:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->ExpandFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 228
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mExpandFadeOutAnimator:Landroid/view/animation/Animation;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->ExpandFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object p1
.end method

.method public synthetic lambda$setAuxPreviewLensSupport$0$AbstractPreviewUI()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->lambda$setAuxPreviewLensSupport$0()V

    return-void
.end method

.method public synthetic lambda$setAuxPreviewModeSupport$1$AbstractPreviewUI()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->lambda$setAuxPreviewModeSupport$1()V

    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewViewCover()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 359
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 361
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mNeedShowCover:Z

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->onPause()V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    if-eqz v2, :cond_1

    .line 148
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxExpandView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mNeedShowCover:Z

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p0, :cond_0

    .line 138
    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->onResume()V

    :cond_0
    return-void
.end method

.method public registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewRectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewRectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->notifyPreviewRectChanged(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    :cond_0
    return-void
.end method

.method public setAuxPreviewLensSupport(ZZ)V
    .locals 0

    .line 326
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewSatSupport:Z

    .line 327
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewLensSupport:Z

    .line 328
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 329
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    new-instance p2, Lcom/transsion/camera/app/ui/-$$Lambda$AbstractPreviewUI$81iYf1fLHmWqiv11sm31dFzsVxU;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/-$$Lambda$AbstractPreviewUI$81iYf1fLHmWqiv11sm31dFzsVxU;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setAuxPreviewModeSupport(Z)V
    .locals 1

    .line 337
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceModeSupport:Z

    .line 338
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxSurfaceShow:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAuxPreviewView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 339
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    new-instance v0, Lcom/transsion/camera/app/ui/-$$Lambda$AbstractPreviewUI$tNO3q2LXdxuaiSnew0iJZsqhYVA;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/-$$Lambda$AbstractPreviewUI$tNO3q2LXdxuaiSnew0iJZsqhYVA;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setAuxPreviewSize(II)V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 321
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRootView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 170
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setPreviewOffset(II)V
    .locals 0

    .line 308
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mTopOffset:I

    .line 309
    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mBottomOffset:I

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 315
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 1

    .line 259
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    .line 261
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_camera_zoom"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method public setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    return-void
.end method

.method public setupViews()V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mRootView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Lcom/transsion/camera/app/ui/AbstractPreviewUI$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mOnLayoutChangeListenerImpl:Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public showCustomPreviewCover(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->showCustomPreviewCover(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_camera_zoom"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mOnLayoutChangeListenerImpl:Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 276
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz p0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->unInit()V

    :cond_0
    return-void
.end method

.method public unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewRectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mPreviewRectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
