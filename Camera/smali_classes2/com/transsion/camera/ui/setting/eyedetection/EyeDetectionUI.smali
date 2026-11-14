.class public Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "EyeDetectionUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;,
        Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;,
        Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;
    }
.end annotation


# static fields
.field private static final EYEVIEW_HIDE_TIME:I = 0x1388

.field private static final EYE_FOCUS_SVGA:Ljava/lang/String; = "eye_focus.svga"

.field private static final EYE_FOCUS_WEAK_SVGA:Ljava/lang/String; = "eye_focus_weak.svga"

.field private static final KEY:Ljava/lang/String; = "key_eye_detection"

.field private static final MSG_HIDE_EYE:I = 0x66

.field private static final MSG_SHOW_EYE:I = 0x65

.field private static final MSG_UPDATE_EYE:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mActiveEyeView:Z

.field private mCanShowEyeView:Z

.field private mCurrentEyeId:I

.field private mCurrentRect:Landroid/graphics/Rect;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mEyeResultCallbackImpl:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;

.field private mEyeSvga:Lcom/opensource/svgaplayer/SVGAImageView;

.field private mFaceCount:I

.field private volatile mIsCapturing:Z

.field private mIsEyeViewShowing:Z

.field private mOrientation:I

.field private mPreviewViewRect:Landroid/graphics/Rect;

.field private mSVGAParser:Lcom/opensource/svgaplayer/SVGAParser;

.field private mStartTime:J

.field private mStatusChangeListener:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSvgaAnimFlag:Z

.field private mSvgaWeakAnimFlag:Z

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3

    .line 83
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const-wide/16 v0, 0x0

    .line 63
    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStartTime:J

    const/4 p1, -0x1

    .line 64
    iput p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCurrentEyeId:I

    .line 65
    iput p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceCount:I

    .line 69
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 71
    new-instance p1, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;

    .line 72
    new-instance p1, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeResultCallbackImpl:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mActiveEyeView:Z

    const/4 v1, 0x0

    .line 74
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCanShowEyeView:Z

    .line 75
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mIsCapturing:Z

    .line 77
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCurrentRect:Landroid/graphics/Rect;

    .line 79
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mSvgaAnimFlag:Z

    .line 80
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mSvgaWeakAnimFlag:Z

    .line 81
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mIsEyeViewShowing:Z

    .line 84
    new-instance p1, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    return-void
.end method

.method static synthetic access$1002(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mActiveEyeView:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCurrentEyeId:I

    return p1
.end method

.method static synthetic access$300()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 53
    sget-object v0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;[I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->doUpdateFaceView([I)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mIsCapturing:Z

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Lcom/opensource/svgaplayer/SVGAImageView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mOrientation:I

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->notifyEyeViewState(Z)V

    return-void
.end method

.method private changeRect(Landroid/graphics/Rect;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 343
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int v2, v0, v1

    .line 344
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int v4, v3, p1

    const-wide v5, 0x3fc999999999999aL    # 0.2

    if-le v2, v4, :cond_1

    .line 346
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCurrentRect:Landroid/graphics/Rect;

    int-to-double v7, v1

    int-to-double v9, v2

    mul-double/2addr v9, v5

    sub-double/2addr v7, v9

    double-to-int v1, v7

    iput v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    .line 347
    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    int-to-double v4, p1

    sub-double/2addr v4, v9

    double-to-int p1, v4

    iput p1, p0, Landroid/graphics/Rect;->top:I

    int-to-double v0, v0

    add-double/2addr v0, v9

    double-to-int p1, v0

    .line 348
    iput p1, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    int-to-double v0, v3

    add-double/2addr v0, v9

    double-to-int p1, v0

    .line 349
    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 351
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCurrentRect:Landroid/graphics/Rect;

    sub-int v2, v4, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-double v7, v1

    int-to-double v9, v4

    mul-double/2addr v9, v5

    sub-double/2addr v7, v9

    double-to-int v1, v7

    iput v1, p0, Landroid/graphics/Rect;->left:I

    int-to-double v4, p1

    sub-double/2addr v4, v9

    double-to-int p1, v4

    .line 352
    iput p1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    int-to-double v0, v0

    add-double/2addr v0, v9

    double-to-int p1, v0

    .line 353
    iput p1, p0, Landroid/graphics/Rect;->right:I

    int-to-double v0, v3

    add-double/2addr v0, v9

    double-to-int p1, v0

    .line 354
    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-void
.end method

.method private doSvgaAnim(Ljava/lang/String;)V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mSVGAParser:Lcom/opensource/svgaplayer/SVGAParser;

    new-instance v1, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$1;-><init>(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)V

    invoke-virtual {v0, p1, v1}, Lcom/opensource/svgaplayer/SVGAParser;->parse(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    return-void
.end method

.method private doUpdateFaceView([I)V
    .locals 9

    .line 269
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mActiveEyeView:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCanShowEyeView:Z

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 279
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    aget v3, p1, v1

    aget v4, p1, v2

    const/4 v5, 0x2

    aget v5, p1, v5

    const/4 v6, 0x3

    aget v6, p1, v6

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 280
    iget v3, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCurrentEyeId:I

    const/4 v4, 0x4

    aget v5, p1, v4

    const/4 v6, 0x5

    if-ne v3, v5, :cond_1

    iget v3, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceCount:I

    aget v5, p1, v6

    if-eq v3, v5, :cond_2

    .line 281
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStartTime:J

    .line 282
    aget v3, p1, v4

    iput v3, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCurrentEyeId:I

    .line 283
    aget p1, p1, v6

    iput p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceCount:I

    .line 284
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mSvgaAnimFlag:Z

    .line 285
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mSvgaWeakAnimFlag:Z

    .line 287
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 288
    iget-wide v5, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStartTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-ltz p1, :cond_3

    const-wide/16 v5, 0x1388

    cmp-long p1, v3, v5

    if-gez p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 291
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 292
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 291
    invoke-static {v0, p1, v3}, Lcom/transsion/camera/utils/CoordinatesUtil;->referenceToViewSpace(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object p1

    .line 293
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->changeRect(Landroid/graphics/Rect;)V

    .line 294
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCurrentRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v3, v4, v5, v0}, Landroid/widget/ImageView;->setLeftTopRightBottom(IIII)V

    if-eqz v2, :cond_4

    .line 297
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mSvgaAnimFlag:Z

    if-eqz p1, :cond_7

    .line 298
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mSvgaAnimFlag:Z

    const-string p1, "eye_focus.svga"

    .line 299
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->doSvgaAnim(Ljava/lang/String;)V

    goto :goto_2

    .line 302
    :cond_4
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mSvgaWeakAnimFlag:Z

    if-eqz p1, :cond_7

    .line 303
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mSvgaWeakAnimFlag:Z

    const-string p1, "eye_focus_weak.svga"

    .line 304
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->doSvgaAnim(Ljava/lang/String;)V

    goto :goto_2

    .line 270
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 271
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    .line 272
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->notifyEyeViewState(Z)V

    :cond_6
    const/4 p1, -0x1

    .line 274
    iput p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCurrentEyeId:I

    .line 275
    iput p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceCount:I

    .line 276
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mSvgaAnimFlag:Z

    .line 277
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mSvgaWeakAnimFlag:Z

    :cond_7
    :goto_2
    return-void
.end method

.method private notifyEyeViewState(Z)V
    .locals 2

    .line 221
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mIsEyeViewShowing:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 222
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 223
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mIsEyeViewShowing:Z

    if-eqz p1, :cond_1

    const-string p1, "show_eye_view"

    goto :goto_1

    :cond_1
    const-string p1, "hide_eye_view"

    .line 225
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_eye_view_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private updateRootLayoutRect()V
    .locals 5

    .line 259
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 261
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 262
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 263
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 264
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c003f

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900c6

    .line 123
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 124
    new-instance p2, Lcom/opensource/svgaplayer/SVGAParser;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/opensource/svgaplayer/SVGAParser;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mSVGAParser:Lcom/opensource/svgaplayer/SVGAParser;

    return-object p1
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_eye_detection"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 177
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .locals 3

    .line 140
    sget-object v0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MSG_HIDE_EYE hideEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCanShowEyeView:Z

    .line 142
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    .line 143
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->notifyEyeViewState(Z)V

    :cond_0
    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x9

    if-eq v1, p1, :cond_1

    const/4 v2, 0x5

    if-eq v2, p1, :cond_1

    const/4 v2, 0x7

    if-eq v2, p1, :cond_1

    const/4 v2, 0x3

    if-eq v2, p1, :cond_1

    if-eq v0, p1, :cond_1

    const/16 v2, 0x14

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x1b

    if-ne v2, p1, :cond_2

    .line 369
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->hideEntryView()V

    goto :goto_1

    .line 366
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->updateRootLayoutRect()V

    const/4 v2, -0x1

    .line 367
    iput v2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCurrentEyeId:I

    :cond_2
    :goto_1
    const/16 v2, 0xd

    if-ne v2, p1, :cond_3

    .line 372
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mIsCapturing:Z

    goto :goto_2

    :cond_3
    const/16 v0, 0xe

    if-eq v0, p1, :cond_4

    if-ne v1, p1, :cond_5

    :cond_4
    const/4 p1, 0x0

    .line 375
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mIsCapturing:Z

    :cond_5
    :goto_2
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 332
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 333
    iput p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mOrientation:I

    .line 334
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 335
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    iget p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mOrientation:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_0
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 206
    sget-object p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 209
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeResultCallbackImpl:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    const-string p1, "key_focus_state"

    .line 216
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->registerKeyToMonitor(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setupEntryView()V
    .locals 2

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCanShowEyeView:Z

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 133
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->notifyEyeViewState(Z)V

    :cond_0
    return-void
.end method

.method public showEntryView()V
    .locals 2

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCanShowEyeView:Z

    .line 150
    sget-object v0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MSG_SHOW_EYE showEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 2

    .line 183
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mEyeSvga:Lcom/opensource/svgaplayer/SVGAImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 193
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->notifyEyeViewState(Z)V

    :cond_2
    const/4 v0, -0x1

    .line 195
    iput v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mCurrentEyeId:I

    .line 196
    iput v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mFaceCount:I

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_3

    const-string v0, "key_focus_state"

    .line 198
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
