.class public Lcom/faceunity/FURenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/faceunity/FURenderer$c;,
        Lcom/faceunity/FURenderer$b;
    }
.end annotation


# static fields
.field private static final GESTURE_BIND_BUNDLES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "FURenderer"

.field private static mBlurLevel:F = 0.7f

.field private static mBlurType:F = 2.0f

.field private static mCheekNarrow:F = 0.0f

.field private static mCheekSmall:F = 0.0f

.field private static mCheekThinning:F = 0.0f

.field private static mCheekV:F = 0.5f

.field private static mColorLevel:F = 0.3f

.field private static mEyeBright:F = 0.0f

.field private static mEyeCircle:F = 0.0f

.field private static mEyeEnlarging:F = 0.4f

.field private static mFaceShape:F = 4.0f

.field private static mFaceShapeLevel:F = 1.0f

.field private static mFilterLevel:F = 0.4f

.field private static mIntensityCheekbones:F = 0.0f

.field private static mIntensityChin:F = 0.3f

.field private static mIntensityForehead:F = 0.3f

.field private static mIntensityLowerJaw:F = 0.0f

.field private static mIntensityMouth:F = 0.4f

.field private static mIntensityNose:F = 0.5f

.field private static mRedLevel:F = 0.3f

.field private static mSharpen:F = 0.2f

.field private static mToothWhiten:F = 0.0f

.field private static sFilterName:Ljava/lang/String; = "ziran2"

.field private static sIsBeautyOn:F = 1.0f

.field private static sMicroCanthus:F = 0.0f

.field private static sMicroEyeRotate:F = 0.5f

.field private static sMicroEyeSpace:F = 0.5f

.field private static sMicroLongNose:F = 0.5f

.field private static sMicroNasolabialFolds:F = 0.0f

.field private static sMicroPhiltrum:F = 0.5f

.field private static sMicroPouch:F

.field private static sMicroSmile:F


# instance fields
.field private isNeedAnimoji3D:Z

.field private isNeedBeautyHair:Z

.field private isNeedBodySlim:Z

.field private isNeedFaceBeauty:Z

.field private isNeedPosterFace:Z

.field private mAlphaL:F

.field private mBgSegGreenItem:I

.field private mBodySlimStrength:F

.field private mCameraFacing:I

.field private mCartoonFilterStyle:I

.field private mChromaThres:F

.field private mChromaThresT:F

.field private mContext:Landroid/content/Context;

.field private mControllerBoundItems:[I

.field public mCurrentFrameCnt:I

.field private mDefaultEffect:Lcom/faceunity/entity/Effect;

.field private mDeviceOrientation:I

.field private mEndX:F

.field private mEndY:F

.field private mEventQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalInputType:I

.field private mFrameId:I

.field public mFuCallStartTime:J

.field private mFuItemHandler:Landroid/os/Handler;

.field private mHairColorIndex:I

.field private mHairColorStrength:F

.field private mHairColorType:I

.field private mHeadSlimStrength:F

.field private mHipSlimStrength:F

.field private mInputImageFormat:I

.field private mInputOrientation:I

.field private mInputTextureType:I

.field private mIsCreateEGLContext:Z

.field private mIsLoadAiHandProcessor:Z

.field private mIsLoadAiHumanProcessor:Z

.field private mIsMakeupFlipPoints:Z

.field private volatile mIsNeedUpdateFaceBeauty:Z

.field private mIsSystemCameraRecord:Z

.field private mItemsArray:[I

.field private mKeyColor:[D

.field public mLastOneHundredFrameTimeStamp:J

.field private mLegSlimStrength:F

.field private mLegThinSlimStrength:F

.field private mLightMakeupItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/faceunity/entity/LightMakeupItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMakeupEntity:Lcom/faceunity/entity/MakeupEntity;

.field private mMakeupItemHandleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMakeupParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxFaces:I

.field private mMaxHumans:I

.field public mNeedBenchmark:Z

.field private mOnBundleLoadCompleteListener:Lcom/vskit/arsdk/portal/ARCallback;

.field public mOnFUDebugListener:Lcom/vskit/arsdk/portal/ARCallback;

.field public mOnSystemErrorListener:Lcom/vskit/arsdk/portal/ARCallback;

.field public mOnTrackingStatusChangedListener:Lcom/vskit/arsdk/portal/ARCallback;

.field public mOneHundredFrameFUTime:J

.field private mRotationMode:I

.field private mRunBgSegGreen:Z

.field private mShoulderSlimStrength:F

.field private mStartX:F

.field private mStartY:F

.field private mTrackFaceStatus:I

.field private mTrackGestureStatus:I

.field private mTrackHumanStatus:I

.field private mWaistSlimStrength:F


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "anim_idle.bundle"

    const-string v1, "anim_eight.bundle"

    const-string v2, "anim_fist.bundle"

    const-string v3, "anim_greet.bundle"

    const-string v4, "anim_gun.bundle"

    const-string v5, "anim_heart.bundle"

    const-string v6, "anim_hold.bundle"

    const-string v7, "anim_korheart.bundle"

    const-string v8, "anim_merge.bundle"

    const-string v9, "anim_ok.bundle"

    const-string v10, "anim_one.bundle"

    const-string v11, "anim_palm.bundle"

    const-string v12, "anim_rock.bundle"

    const-string v13, "anim_six.bundle"

    const-string v14, "anim_thumb.bundle"

    const-string v15, "anim_two.bundle"

    .line 3
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/faceunity/FURenderer;->GESTURE_BIND_BUNDLES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/faceunity/FURenderer;->mFrameId:I

    const/16 v1, 0xb

    new-array v1, v1, [I

    .line 3
    iput-object v1, p0, Lcom/faceunity/FURenderer;->mItemsArray:[I

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/faceunity/FURenderer;->isNeedFaceBeauty:Z

    .line 5
    iput-boolean v0, p0, Lcom/faceunity/FURenderer;->isNeedBeautyHair:Z

    .line 6
    iput-boolean v0, p0, Lcom/faceunity/FURenderer;->isNeedAnimoji3D:Z

    .line 7
    iput-boolean v0, p0, Lcom/faceunity/FURenderer;->isNeedPosterFace:Z

    .line 8
    iput-boolean v0, p0, Lcom/faceunity/FURenderer;->isNeedBodySlim:Z

    .line 9
    iput v0, p0, Lcom/faceunity/FURenderer;->mInputTextureType:I

    .line 10
    iput v0, p0, Lcom/faceunity/FURenderer;->mInputImageFormat:I

    .line 11
    iput-boolean v1, p0, Lcom/faceunity/FURenderer;->mIsNeedUpdateFaceBeauty:Z

    const/4 v2, 0x0

    .line 12
    iput v2, p0, Lcom/faceunity/FURenderer;->mBodySlimStrength:F

    .line 13
    iput v2, p0, Lcom/faceunity/FURenderer;->mLegSlimStrength:F

    .line 14
    iput v2, p0, Lcom/faceunity/FURenderer;->mWaistSlimStrength:F

    const/high16 v3, 0x3f000000    # 0.5f

    .line 15
    iput v3, p0, Lcom/faceunity/FURenderer;->mShoulderSlimStrength:F

    .line 16
    iput v2, p0, Lcom/faceunity/FURenderer;->mHipSlimStrength:F

    .line 17
    iput v2, p0, Lcom/faceunity/FURenderer;->mHeadSlimStrength:F

    .line 18
    iput v2, p0, Lcom/faceunity/FURenderer;->mLegThinSlimStrength:F

    const/16 v3, 0x10e

    .line 19
    iput v3, p0, Lcom/faceunity/FURenderer;->mInputOrientation:I

    const/4 v3, -0x1

    .line 20
    iput v3, p0, Lcom/faceunity/FURenderer;->mExternalInputType:I

    .line 21
    iput v1, p0, Lcom/faceunity/FURenderer;->mCameraFacing:I

    const/4 v4, 0x4

    .line 22
    iput v4, p0, Lcom/faceunity/FURenderer;->mMaxFaces:I

    .line 23
    iput v1, p0, Lcom/faceunity/FURenderer;->mMaxHumans:I

    const v4, 0x3f19999a    # 0.6f

    .line 24
    iput v4, p0, Lcom/faceunity/FURenderer;->mHairColorStrength:F

    .line 25
    iput v1, p0, Lcom/faceunity/FURenderer;->mHairColorType:I

    .line 26
    iput v0, p0, Lcom/faceunity/FURenderer;->mHairColorIndex:I

    .line 27
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v4, p0, Lcom/faceunity/FURenderer;->mMakeupParams:Ljava/util/Map;

    .line 28
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v4, p0, Lcom/faceunity/FURenderer;->mLightMakeupItemMap:Ljava/util/Map;

    .line 29
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Lcom/faceunity/FURenderer;->mMakeupItemHandleMap:Ljava/util/Map;

    .line 32
    iput v3, p0, Lcom/faceunity/FURenderer;->mCartoonFilterStyle:I

    const/16 v4, 0x5a

    .line 33
    iput v4, p0, Lcom/faceunity/FURenderer;->mDeviceOrientation:I

    .line 34
    iput v1, p0, Lcom/faceunity/FURenderer;->mRotationMode:I

    const/4 v4, 0x3

    new-array v4, v4, [D

    .line 35
    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/faceunity/FURenderer;->mKeyColor:[D

    const v4, 0x3ee66666    # 0.45f

    .line 36
    iput v4, p0, Lcom/faceunity/FURenderer;->mChromaThres:F

    const v4, 0x3e99999a    # 0.3f

    .line 37
    iput v4, p0, Lcom/faceunity/FURenderer;->mChromaThresT:F

    const v4, 0x3e4ccccd    # 0.2f

    .line 38
    iput v4, p0, Lcom/faceunity/FURenderer;->mAlphaL:F

    .line 39
    iput v2, p0, Lcom/faceunity/FURenderer;->mStartX:F

    .line 40
    iput v2, p0, Lcom/faceunity/FURenderer;->mStartY:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 41
    iput v2, p0, Lcom/faceunity/FURenderer;->mEndX:F

    .line 42
    iput v2, p0, Lcom/faceunity/FURenderer;->mEndY:F

    .line 43
    iput-boolean v1, p0, Lcom/faceunity/FURenderer;->mRunBgSegGreen:Z

    .line 44
    new-instance v2, Lcom/faceunity/wrapper/faceunity$RotatedImage;

    invoke-direct {v2}, Lcom/faceunity/wrapper/faceunity$RotatedImage;-><init>()V

    .line 46
    iput v3, p0, Lcom/faceunity/FURenderer;->mTrackHumanStatus:I

    .line 47
    iput v3, p0, Lcom/faceunity/FURenderer;->mTrackFaceStatus:I

    .line 48
    iput v3, p0, Lcom/faceunity/FURenderer;->mTrackGestureStatus:I

    .line 50
    iput v0, p0, Lcom/faceunity/FURenderer;->mCurrentFrameCnt:I

    const-wide/16 v2, 0x0

    .line 51
    iput-wide v2, p0, Lcom/faceunity/FURenderer;->mLastOneHundredFrameTimeStamp:J

    .line 52
    iput-wide v2, p0, Lcom/faceunity/FURenderer;->mOneHundredFrameFUTime:J

    .line 53
    iput-boolean v1, p0, Lcom/faceunity/FURenderer;->mNeedBenchmark:Z

    .line 54
    iput-wide v2, p0, Lcom/faceunity/FURenderer;->mFuCallStartTime:J

    .line 55
    iput-object p1, p0, Lcom/faceunity/FURenderer;->mContext:Landroid/content/Context;

    .line 56
    iput-boolean p2, p0, Lcom/faceunity/FURenderer;->mIsCreateEGLContext:Z

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x406fe00000000000L    # 255.0
        0x0
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/faceunity/FURenderer;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/faceunity/FURenderer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/faceunity/FURenderer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/faceunity/FURenderer;->mRotationMode:I

    return p0
.end method

.method static synthetic access$1002(Lcom/faceunity/FURenderer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/faceunity/FURenderer;->mRotationMode:I

    return p1
.end method

.method static synthetic access$1100(Lcom/faceunity/FURenderer;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/faceunity/FURenderer;->calculateRotationMode()I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/faceunity/FURenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/faceunity/FURenderer;->setBeautyBodyOrientation()V

    return-void
.end method

.method static synthetic access$1300(Lcom/faceunity/FURenderer;)Lcom/faceunity/entity/Effect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/faceunity/FURenderer;->mDefaultEffect:Lcom/faceunity/entity/Effect;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/faceunity/FURenderer;Lcom/faceunity/entity/Effect;)Lcom/faceunity/entity/Effect;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/faceunity/FURenderer;->mDefaultEffect:Lcom/faceunity/entity/Effect;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/faceunity/FURenderer;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/faceunity/FURenderer;->mFuItemHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/faceunity/FURenderer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/faceunity/FURenderer;->mHairColorIndex:I

    return p0
.end method

.method static synthetic access$1800(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/faceunity/FURenderer;->mHairColorStrength:F

    return p0
.end method

.method static synthetic access$1900(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/faceunity/FURenderer;->loadItem(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/faceunity/FURenderer;->loadAiModel(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/faceunity/FURenderer;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/faceunity/FURenderer;->mMakeupItemHandleMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/faceunity/FURenderer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/faceunity/FURenderer;->mCartoonFilterStyle:I

    return p0
.end method

.method static synthetic access$2300(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/faceunity/FURenderer;->mBodySlimStrength:F

    return p0
.end method

.method static synthetic access$2400(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/faceunity/FURenderer;->mLegSlimStrength:F

    return p0
.end method

.method static synthetic access$2500(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/faceunity/FURenderer;->mWaistSlimStrength:F

    return p0
.end method

.method static synthetic access$2600(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/faceunity/FURenderer;->mShoulderSlimStrength:F

    return p0
.end method

.method static synthetic access$2700(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/faceunity/FURenderer;->mHipSlimStrength:F

    return p0
.end method

.method static synthetic access$2800(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/faceunity/FURenderer;->mHeadSlimStrength:F

    return p0
.end method

.method static synthetic access$2900(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/faceunity/FURenderer;->mLegThinSlimStrength:F

    return p0
.end method

.method static synthetic access$300(Lcom/faceunity/FURenderer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/faceunity/FURenderer;->mMaxHumans:I

    return p0
.end method

.method static synthetic access$3000(Lcom/faceunity/FURenderer;)[D
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/faceunity/FURenderer;->mKeyColor:[D

    return-object p0
.end method

.method static synthetic access$3002(Lcom/faceunity/FURenderer;[D)[D
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/faceunity/FURenderer;->mKeyColor:[D

    return-object p1
.end method

.method static synthetic access$302(Lcom/faceunity/FURenderer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/faceunity/FURenderer;->mMaxHumans:I

    return p1
.end method

.method static synthetic access$3100(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/faceunity/FURenderer;->mChromaThres:F

    return p0
.end method

.method static synthetic access$3102(Lcom/faceunity/FURenderer;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/faceunity/FURenderer;->mChromaThres:F

    return p1
.end method

.method static synthetic access$3200(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/faceunity/FURenderer;->mChromaThresT:F

    return p0
.end method

.method static synthetic access$3202(Lcom/faceunity/FURenderer;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/faceunity/FURenderer;->mChromaThresT:F

    return p1
.end method

.method static synthetic access$3300(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/faceunity/FURenderer;->mAlphaL:F

    return p0
.end method

.method static synthetic access$3302(Lcom/faceunity/FURenderer;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/faceunity/FURenderer;->mAlphaL:F

    return p1
.end method

.method static synthetic access$3400(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/faceunity/FURenderer;->mStartX:F

    return p0
.end method

.method static synthetic access$3402(Lcom/faceunity/FURenderer;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/faceunity/FURenderer;->mStartX:F

    return p1
.end method

.method static synthetic access$3500(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/faceunity/FURenderer;->mStartY:F

    return p0
.end method

.method static synthetic access$3502(Lcom/faceunity/FURenderer;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/faceunity/FURenderer;->mStartY:F

    return p1
.end method

.method static synthetic access$3600(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/faceunity/FURenderer;->mEndX:F

    return p0
.end method

.method static synthetic access$3602(Lcom/faceunity/FURenderer;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/faceunity/FURenderer;->mEndX:F

    return p1
.end method

.method static synthetic access$3700(Lcom/faceunity/FURenderer;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/faceunity/FURenderer;->mEndY:F

    return p0
.end method

.method static synthetic access$3702(Lcom/faceunity/FURenderer;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/faceunity/FURenderer;->mEndY:F

    return p1
.end method

.method static synthetic access$3800(Lcom/faceunity/FURenderer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/faceunity/FURenderer;->mRunBgSegGreen:Z

    return p0
.end method

.method static synthetic access$3802(Lcom/faceunity/FURenderer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/faceunity/FURenderer;->mRunBgSegGreen:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/faceunity/FURenderer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/faceunity/FURenderer;->mBgSegGreenItem:I

    return p0
.end method

.method static synthetic access$3902(Lcom/faceunity/FURenderer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/faceunity/FURenderer;->mBgSegGreenItem:I

    return p1
.end method

.method static synthetic access$4002(Lcom/faceunity/FURenderer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/faceunity/FURenderer;->mInputTextureType:I

    return p1
.end method

.method static synthetic access$402(Lcom/faceunity/FURenderer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/faceunity/FURenderer;->mFrameId:I

    return p1
.end method

.method static synthetic access$4102(Lcom/faceunity/FURenderer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/faceunity/FURenderer;->mInputImageFormat:I

    return p1
.end method

.method static synthetic access$4200(Lcom/faceunity/FURenderer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/faceunity/FURenderer;->mExternalInputType:I

    return p0
.end method

.method static synthetic access$4202(Lcom/faceunity/FURenderer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/faceunity/FURenderer;->mExternalInputType:I

    return p1
.end method

.method static synthetic access$4302(Lcom/faceunity/FURenderer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/faceunity/FURenderer;->isNeedFaceBeauty:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/faceunity/FURenderer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/faceunity/FURenderer;->isNeedBodySlim:Z

    return p1
.end method

.method static synthetic access$4502(Lcom/faceunity/FURenderer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/faceunity/FURenderer;->isNeedAnimoji3D:Z

    return p1
.end method

.method static synthetic access$4602(Lcom/faceunity/FURenderer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/faceunity/FURenderer;->isNeedBeautyHair:Z

    return p1
.end method

.method static synthetic access$4702(Lcom/faceunity/FURenderer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/faceunity/FURenderer;->isNeedPosterFace:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/faceunity/FURenderer;)Lcom/vskit/arsdk/portal/ARCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/faceunity/FURenderer;->mOnBundleLoadCompleteListener:Lcom/vskit/arsdk/portal/ARCallback;

    return-object p0
.end method

.method static synthetic access$4802(Lcom/faceunity/FURenderer;Lcom/vskit/arsdk/portal/ARCallback;)Lcom/vskit/arsdk/portal/ARCallback;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/faceunity/FURenderer;->mOnBundleLoadCompleteListener:Lcom/vskit/arsdk/portal/ARCallback;

    return-object p1
.end method

.method static synthetic access$4902(Lcom/faceunity/FURenderer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/faceunity/FURenderer;->mIsLoadAiHandProcessor:Z

    return p1
.end method

.method static synthetic access$500(Lcom/faceunity/FURenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/faceunity/FURenderer;->resetTrackStatus()V

    return-void
.end method

.method static synthetic access$5002(Lcom/faceunity/FURenderer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/faceunity/FURenderer;->mIsLoadAiHumanProcessor:Z

    return p1
.end method

.method static synthetic access$5102(Lcom/faceunity/FURenderer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/faceunity/FURenderer;->mIsNeedUpdateFaceBeauty:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/faceunity/FURenderer;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/faceunity/FURenderer;->mMakeupParams:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/faceunity/FURenderer;)Lcom/faceunity/entity/MakeupEntity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/faceunity/FURenderer;->mMakeupEntity:Lcom/faceunity/entity/MakeupEntity;

    return-object p0
.end method

.method static synthetic access$5302(Lcom/faceunity/FURenderer;Lcom/faceunity/entity/MakeupEntity;)Lcom/faceunity/entity/MakeupEntity;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/faceunity/FURenderer;->mMakeupEntity:Lcom/faceunity/entity/MakeupEntity;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/faceunity/FURenderer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/faceunity/FURenderer;->mIsMakeupFlipPoints:Z

    return p0
.end method

.method static synthetic access$5402(Lcom/faceunity/FURenderer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/faceunity/FURenderer;->mIsMakeupFlipPoints:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/faceunity/FURenderer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/faceunity/FURenderer;->mHairColorType:I

    return p0
.end method

.method static synthetic access$600(Lcom/faceunity/FURenderer;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/faceunity/FURenderer;->mItemsArray:[I

    return-object p0
.end method

.method static synthetic access$700(Lcom/faceunity/FURenderer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/faceunity/FURenderer;->mMaxFaces:I

    return p0
.end method

.method static synthetic access$702(Lcom/faceunity/FURenderer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/faceunity/FURenderer;->mMaxFaces:I

    return p1
.end method

.method static synthetic access$802(Lcom/faceunity/FURenderer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/faceunity/FURenderer;->mCameraFacing:I

    return p1
.end method

.method static synthetic access$902(Lcom/faceunity/FURenderer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/faceunity/FURenderer;->mInputOrientation:I

    return p1
.end method

.method private calculateRotModeLagacy()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/faceunity/FURenderer;->mInputOrientation:I

    const/4 v1, 0x1

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_1

    .line 2
    iget v0, p0, Lcom/faceunity/FURenderer;->mCameraFacing:I

    if-ne v0, v1, :cond_0

    .line 3
    iget p0, p0, Lcom/faceunity/FURenderer;->mDeviceOrientation:I

    div-int/lit8 p0, p0, 0x5a

    goto :goto_0

    .line 4
    :cond_0
    iget p0, p0, Lcom/faceunity/FURenderer;->mDeviceOrientation:I

    add-int/lit16 p0, p0, -0xb4

    div-int/lit8 p0, p0, 0x5a

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Lcom/faceunity/FURenderer;->mCameraFacing:I

    if-ne v0, v1, :cond_2

    .line 6
    iget p0, p0, Lcom/faceunity/FURenderer;->mDeviceOrientation:I

    add-int/lit16 p0, p0, 0xb4

    div-int/lit8 p0, p0, 0x5a

    goto :goto_0

    .line 7
    :cond_2
    iget p0, p0, Lcom/faceunity/FURenderer;->mDeviceOrientation:I

    div-int/lit8 p0, p0, 0x5a

    :goto_0
    return p0
.end method

.method private calculateRotationMode()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/faceunity/FURenderer;->mExternalInputType:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x3

    const/16 v3, 0x10e

    const/4 v4, 0x1

    const/16 v5, 0x5a

    if-ne v0, v4, :cond_3

    .line 2
    iget p0, p0, Lcom/faceunity/FURenderer;->mInputOrientation:I

    if-eq p0, v5, :cond_2

    if-eq p0, v3, :cond_1

    return v1

    :cond_1
    return v4

    :cond_2
    return v2

    .line 3
    :cond_3
    iget v0, p0, Lcom/faceunity/FURenderer;->mInputOrientation:I

    const/16 v6, 0xb4

    if-ne v0, v3, :cond_7

    .line 4
    iget v0, p0, Lcom/faceunity/FURenderer;->mCameraFacing:I

    if-ne v0, v4, :cond_4

    .line 5
    iget p0, p0, Lcom/faceunity/FURenderer;->mDeviceOrientation:I

    div-int/lit8 v1, p0, 0x5a

    goto :goto_3

    .line 6
    :cond_4
    iget p0, p0, Lcom/faceunity/FURenderer;->mDeviceOrientation:I

    if-ne p0, v6, :cond_5

    goto :goto_3

    :cond_5
    if-nez p0, :cond_6

    goto :goto_0

    .line 7
    :cond_6
    div-int/lit8 v1, p0, 0x5a

    goto :goto_3

    :cond_7
    if-ne v0, v5, :cond_e

    .line 8
    iget v0, p0, Lcom/faceunity/FURenderer;->mCameraFacing:I

    if-nez v0, :cond_a

    .line 9
    iget p0, p0, Lcom/faceunity/FURenderer;->mDeviceOrientation:I

    if-ne p0, v5, :cond_8

    goto :goto_1

    :cond_8
    if-ne p0, v3, :cond_9

    goto :goto_2

    .line 10
    :cond_9
    div-int/lit8 v1, p0, 0x5a

    goto :goto_3

    .line 11
    :cond_a
    iget p0, p0, Lcom/faceunity/FURenderer;->mDeviceOrientation:I

    if-nez p0, :cond_b

    :goto_0
    const/4 v1, 0x2

    goto :goto_3

    :cond_b
    if-ne p0, v5, :cond_c

    :goto_1
    move v1, v2

    goto :goto_3

    :cond_c
    if-ne p0, v6, :cond_d

    goto :goto_3

    :cond_d
    :goto_2
    move v1, v4

    :cond_e
    :goto_3
    return v1
.end method

.method private destroyControllerRelated()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mControllerBoundItems:[I

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget v0, v0, v1

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mItemsArray:[I

    aget v0, v0, v1

    const-wide/16 v2, 0x0

    const-string v4, "enable_human_processor"

    .line 3
    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 4
    iget-object v2, p0, Lcom/faceunity/FURenderer;->mControllerBoundItems:[I

    invoke-direct {p0, v2}, Lcom/faceunity/FURenderer;->validateItems([I)[I

    move-result-object v2

    .line 5
    sget-object v3, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "destroyControllerRelated: unbind "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {v0, v2}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    .line 7
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 8
    aget v3, v2, v0

    invoke-static {v3}, Lcom/faceunity/wrapper/faceunity;->fuDestroyItem(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/faceunity/FURenderer;->mControllerBoundItems:[I

    :cond_1
    return-void
.end method

.method private static loadAiModel(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-static {p2}, Lcom/faceunity/wrapper/faceunity;->fuIsAIModelLoaded(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lcom/faceunity/FURenderer;->readFile(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3
    invoke-static {p0, p2}, Lcom/faceunity/wrapper/faceunity;->fuLoadAIModelFromPackage([BI)I

    move-result p0

    .line 4
    sget-object p1, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAiModel. type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", isLoaded: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p0, v1, :cond_1

    const-string p0, "yes"

    goto :goto_0

    :cond_1
    const-string p0, "no"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private static loadItem(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/faceunity/FURenderer;->readFile(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/faceunity/wrapper/faceunity;->fuCreateItemFromPackage([B)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4
    :goto_0
    sget-object v0, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadItem. bundlePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", itemHandle: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private onLightMakeupSelected(Lcom/faceunity/entity/LightMakeupItem;F)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/faceunity/entity/LightMakeupItem;->getType()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/faceunity/FURenderer;->mLightMakeupItemMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/faceunity/entity/LightMakeupItem;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p2}, Lcom/faceunity/entity/LightMakeupItem;->setLevel(F)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/faceunity/FURenderer;->mLightMakeupItemMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/faceunity/entity/LightMakeupItem;->cloneSelf()Lcom/faceunity/entity/LightMakeupItem;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :goto_0
    iget-object p2, p0, Lcom/faceunity/FURenderer;->mFuItemHandler:Landroid/os/Handler;

    if-nez p2, :cond_1

    .line 6
    new-instance p2, Lcom/faceunity/p;

    invoke-direct {p2, p0, p1}, Lcom/faceunity/p;-><init>(Lcom/faceunity/FURenderer;Lcom/faceunity/entity/LightMakeupItem;)V

    invoke-virtual {p0, p2}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x2

    .line 7
    invoke-static {p2, p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void
.end method

.method private static readFile(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    sget-object v1, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    const-string v2, "readFile: e1"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3
    :try_start_1
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 4
    sget-object v1, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    const-string v2, "readFile: e2"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_0

    .line 5
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 6
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 7
    sget-object v3, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const-string v5, "readFile. path: "

    :try_start_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    const-string p1, ", length: "

    :try_start_4
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    const-string p1, " Byte"

    :try_start_5
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    return-object v1

    :catch_2
    move-exception p0

    .line 9
    sget-object p1, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    const-string v1, "readFile: e3"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v0
.end method

.method private static releaseAiModel(I)V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/faceunity/wrapper/faceunity;->fuIsAIModelLoaded(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-static {p0}, Lcom/faceunity/wrapper/faceunity;->fuReleaseAIModel(I)I

    move-result v0

    .line 3
    sget-object v2, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseAiModel. type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", isReleased: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, v1, :cond_0

    const-string p0, "yes"

    goto :goto_0

    :cond_0
    const-string p0, "no"

    :goto_0
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static releaseAllAiModel()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lcom/faceunity/FURenderer;->releaseAiModel(I)V

    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Lcom/faceunity/FURenderer;->releaseAiModel(I)V

    const/16 v0, 0x8

    .line 3
    invoke-static {v0}, Lcom/faceunity/FURenderer;->releaseAiModel(I)V

    const/high16 v0, 0x10000

    .line 4
    invoke-static {v0}, Lcom/faceunity/FURenderer;->releaseAiModel(I)V

    return-void
.end method

.method private resetTrackStatus()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuOnCameraChange()V

    .line 2
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuHumanProcessorReset()V

    return-void
.end method

.method private setBeautyBodyOrientation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mItemsArray:[I

    const/16 v1, 0xa

    aget v0, v0, v1

    if-lez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/faceunity/FURenderer;->calculateRotationMode()I

    move-result p0

    int-to-double v1, p0

    const-string p0, "Orientation"

    .line 3
    invoke-static {v0, p0, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    :cond_0
    return-void
.end method

.method private setEffectRotationMode(Lcom/faceunity/entity/Effect;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->effectType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->getBundleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ctrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/faceunity/FURenderer;->calculateRotModeLagacy()I

    move-result p0

    goto :goto_0

    .line 3
    :cond_0
    iget p0, p0, Lcom/faceunity/FURenderer;->mRotationMode:I

    :goto_0
    int-to-double p0, p0

    const-string v0, "rotMode"

    .line 4
    invoke-static {p2, v0, p0, p1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "rotationMode"

    .line 5
    invoke-static {p2, v0, p0, p1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "rotation_mode"

    .line 6
    invoke-static {p2, v0, p0, p1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "freeRotMode"

    .line 7
    invoke-static {p2, v0, p0, p1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method

.method private validateItems([I)[I
    .locals 6

    .line 1
    array-length p0, p1

    new-array p0, p0, [I

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget v4, p1, v2

    if-lez v4, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 3
    aput v4, p0, v3

    move v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p0, v1, v3}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public benchmarkFPS()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/faceunity/FURenderer;->mNeedBenchmark:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/faceunity/FURenderer;->mCurrentFrameCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/faceunity/FURenderer;->mCurrentFrameCnt:I

    int-to-float v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/faceunity/FURenderer;->mCurrentFrameCnt:I

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 5
    iget-wide v4, p0, Lcom/faceunity/FURenderer;->mLastOneHundredFrameTimeStamp:J

    sub-long v4, v2, v4

    long-to-float v0, v4

    div-float/2addr v0, v1

    const v4, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v4, v0

    float-to-double v4, v4

    .line 6
    iput-wide v2, p0, Lcom/faceunity/FURenderer;->mLastOneHundredFrameTimeStamp:J

    .line 7
    iget-wide v2, p0, Lcom/faceunity/FURenderer;->mOneHundredFrameFUTime:J

    long-to-float v0, v2

    div-float/2addr v0, v1

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    .line 8
    iput-wide v2, p0, Lcom/faceunity/FURenderer;->mOneHundredFrameFUTime:J

    .line 9
    iget-object p0, p0, Lcom/faceunity/FURenderer;->mOnFUDebugListener:Lcom/vskit/arsdk/portal/ARCallback;

    if-eqz p0, :cond_1

    .line 10
    invoke-interface {p0, v4, v5, v0, v1}, Lcom/vskit/arsdk/portal/ARCallback;->onFpsChange(DD)V

    :cond_1
    return-void
.end method

.method public onCameraChange(II)V
    .locals 3

    .line 1
    sget-object v0, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraChange. cameraFacing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", inputOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/faceunity/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/faceunity/e;-><init>(Lcom/faceunity/FURenderer;II)V

    invoke-virtual {p0, v0}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    sget-object v0, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    const-string v1, "onSurfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mFuItemHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 4
    iput-object v1, p0, Lcom/faceunity/FURenderer;->mFuItemHandler:Landroid/os/Handler;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mEventQueue:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    iput-object v1, p0, Lcom/faceunity/FURenderer;->mEventQueue:Ljava/util/List;

    .line 8
    :cond_1
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuDestroyAllItems()V

    return-void
.end method

.method public onDrawFrame([BIII)I
    .locals 8

    if-lez p2, :cond_4

    if-eqz p1, :cond_4

    if-lez p3, :cond_4

    if-gtz p4, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/faceunity/FURenderer;->prepareDrawFrame()V

    .line 20
    iget v0, p0, Lcom/faceunity/FURenderer;->mInputTextureType:I

    iget v1, p0, Lcom/faceunity/FURenderer;->mInputImageFormat:I

    or-int/2addr v0, v1

    .line 21
    iget v1, p0, Lcom/faceunity/FURenderer;->mCameraFacing:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    or-int/lit8 v0, v0, 0x20

    :cond_1
    move v3, v0

    .line 22
    iget-boolean v0, p0, Lcom/faceunity/FURenderer;->mNeedBenchmark:Z

    if-eqz v0, :cond_2

    .line 23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/faceunity/FURenderer;->mFuCallStartTime:J

    .line 24
    :cond_2
    iget v6, p0, Lcom/faceunity/FURenderer;->mFrameId:I

    add-int/lit8 v0, v6, 0x1

    iput v0, p0, Lcom/faceunity/FURenderer;->mFrameId:I

    iget-object v7, p0, Lcom/faceunity/FURenderer;->mItemsArray:[I

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v7}, Lcom/faceunity/wrapper/faceunity;->fuDualInputToTexture([BIIIII[I)I

    move-result p1

    .line 25
    iget-boolean p2, p0, Lcom/faceunity/FURenderer;->mNeedBenchmark:Z

    if-eqz p2, :cond_3

    .line 26
    iget-wide p2, p0, Lcom/faceunity/FURenderer;->mOneHundredFrameFUTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/faceunity/FURenderer;->mFuCallStartTime:J

    sub-long/2addr v0, v2

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/faceunity/FURenderer;->mOneHundredFrameFUTime:J

    :cond_3
    return p1

    .line 27
    :cond_4
    :goto_0
    sget-object p0, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    const-string p1, "onDrawFrame data null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public onEffectSelected(Lcom/faceunity/entity/Effect;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/faceunity/FURenderer;->mDefaultEffect:Lcom/faceunity/entity/Effect;

    .line 2
    iget-object p1, p0, Lcom/faceunity/FURenderer;->mFuItemHandler:Landroid/os/Handler;

    if-nez p1, :cond_1

    .line 3
    new-instance p1, Lcom/faceunity/j;

    invoke-direct {p1, p0}, Lcom/faceunity/j;-><init>(Lcom/faceunity/FURenderer;)V

    invoke-virtual {p0, p1}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-object p1, p0, Lcom/faceunity/FURenderer;->mFuItemHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/faceunity/FURenderer;->mDefaultEffect:Lcom/faceunity/entity/Effect;

    invoke-static {p1, v0, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public onFilterNameSelected(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/faceunity/FURenderer;->sFilterName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/faceunity/FURenderer;->mIsNeedUpdateFaceBeauty:Z

    return-void
.end method

.method public onLightMakeupCombinationSelected(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/faceunity/entity/LightMakeupItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mLightMakeupItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3
    new-instance v2, Lcom/faceunity/t;

    invoke-direct {v2, p0, v1}, Lcom/faceunity/t;-><init>(Lcom/faceunity/FURenderer;Ljava/lang/Integer;)V

    invoke-virtual {p0, v2}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mLightMakeupItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/faceunity/entity/LightMakeupItem;

    .line 8
    invoke-virtual {v2}, Lcom/faceunity/entity/LightMakeupItem;->getLevel()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/faceunity/FURenderer;->onLightMakeupSelected(Lcom/faceunity/entity/LightMakeupItem;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_1
    new-instance p1, Lcom/faceunity/u;

    invoke-direct {p1, p0}, Lcom/faceunity/u;-><init>(Lcom/faceunity/FURenderer;)V

    invoke-virtual {p0, p1}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public onMusicFilterTime(J)V
    .locals 1

    .line 1
    new-instance v0, Lcom/faceunity/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/faceunity/i;-><init>(Lcom/faceunity/FURenderer;J)V

    invoke-virtual {p0, v0}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 4

    .line 1
    sget-object v0, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/faceunity/FURenderer;->mEventQueue:Ljava/util/List;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 4
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FUItemWorker"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance v1, Lcom/faceunity/FURenderer$c;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/faceunity/FURenderer$c;-><init>(Lcom/faceunity/FURenderer;Landroid/os/Looper;)V

    .line 7
    iput-object v1, p0, Lcom/faceunity/FURenderer;->mFuItemHandler:Landroid/os/Handler;

    .line 8
    iget-boolean v0, p0, Lcom/faceunity/FURenderer;->mIsCreateEGLContext:Z

    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuCreateEGLContext()V

    :cond_0
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/faceunity/FURenderer;->mFrameId:I

    .line 11
    iget v3, p0, Lcom/faceunity/FURenderer;->mMaxFaces:I

    invoke-virtual {p0, v3}, Lcom/faceunity/FURenderer;->setMaxFaces(I)V

    .line 12
    invoke-direct {p0}, Lcom/faceunity/FURenderer;->calculateRotationMode()I

    move-result v3

    .line 13
    invoke-static {v3}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    .line 14
    iput v3, p0, Lcom/faceunity/FURenderer;->mRotationMode:I

    .line 15
    iget-boolean v3, p0, Lcom/faceunity/FURenderer;->mIsLoadAiHumanProcessor:Z

    if-eqz v3, :cond_1

    .line 16
    new-instance v3, Lcom/faceunity/v;

    invoke-direct {v3, p0}, Lcom/faceunity/v;-><init>(Lcom/faceunity/FURenderer;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    :cond_1
    iget-boolean v3, p0, Lcom/faceunity/FURenderer;->mIsLoadAiHandProcessor:Z

    if-eqz v3, :cond_2

    .line 18
    new-instance v3, Lcom/faceunity/G;

    invoke-direct {v3, p0}, Lcom/faceunity/G;-><init>(Lcom/faceunity/FURenderer;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    :cond_2
    iget-boolean v3, p0, Lcom/faceunity/FURenderer;->isNeedFaceBeauty:Z

    if-eqz v3, :cond_3

    .line 20
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 21
    :cond_3
    iget-boolean v0, p0, Lcom/faceunity/FURenderer;->isNeedBeautyHair:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    .line 22
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 23
    :cond_4
    iget-boolean v0, p0, Lcom/faceunity/FURenderer;->isNeedAnimoji3D:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    .line 24
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 25
    :cond_5
    iget-boolean v0, p0, Lcom/faceunity/FURenderer;->isNeedBodySlim:Z

    if-eqz v0, :cond_6

    .line 26
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 27
    :cond_6
    iget-boolean v0, p0, Lcom/faceunity/FURenderer;->isNeedPosterFace:Z

    if-eqz v0, :cond_7

    .line 28
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mItemsArray:[I

    iget-object v2, p0, Lcom/faceunity/FURenderer;->mContext:Landroid/content/Context;

    const-string v3, "change_face/change_face.bundle"

    invoke-static {v2, v3}, Lcom/faceunity/FURenderer;->loadItem(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    aput v2, v0, v3

    .line 29
    :cond_7
    iget v0, p0, Lcom/faceunity/FURenderer;->mCartoonFilterStyle:I

    const/4 v2, -0x1

    .line 30
    iput v2, p0, Lcom/faceunity/FURenderer;->mCartoonFilterStyle:I

    .line 31
    invoke-virtual {p0, v0}, Lcom/faceunity/FURenderer;->setCartoonFilter(I)V

    .line 32
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mDefaultEffect:Lcom/faceunity/entity/Effect;

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    .line 33
    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 34
    :cond_8
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mMakeupEntity:Lcom/faceunity/entity/MakeupEntity;

    if-eqz v0, :cond_9

    .line 35
    new-instance v2, Lcom/faceunity/entity/MakeupEntity;

    invoke-direct {v2, v0}, Lcom/faceunity/entity/MakeupEntity;-><init>(Lcom/faceunity/entity/MakeupEntity;)V

    const/4 v0, 0x7

    invoke-static {v1, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 36
    :cond_9
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mLightMakeupItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 37
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mLightMakeupItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v1}, Lcom/faceunity/FURenderer;->onLightMakeupCombinationSelected(Ljava/util/List;)V

    :cond_a
    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 9

    .line 1
    sget-object v0, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    const-string v1, "onSurfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mFuItemHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mFuItemHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 5
    iput-object v1, p0, Lcom/faceunity/FURenderer;->mFuItemHandler:Landroid/os/Handler;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mEventQueue:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    iput-object v1, p0, Lcom/faceunity/FURenderer;->mEventQueue:Ljava/util/List;

    :cond_1
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/faceunity/FURenderer;->mBgSegGreenItem:I

    .line 11
    iget-object v1, p0, Lcom/faceunity/FURenderer;->mItemsArray:[I

    array-length v2, v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-le v2, v3, :cond_8

    const/4 v2, 0x5

    .line 12
    aget v1, v1, v2

    if-lez v1, :cond_2

    const-string v2, "tex_input"

    .line 13
    invoke-static {v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuDeleteTexForItem(ILjava/lang/String;)I

    const-string v2, "tex_template"

    .line 14
    invoke-static {v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuDeleteTexForItem(ILjava/lang/String;)I

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/faceunity/FURenderer;->mItemsArray:[I

    aget v1, v1, v3

    if-lez v1, :cond_3

    .line 16
    iget-object v2, p0, Lcom/faceunity/FURenderer;->mLightMakeupItemMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 17
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 18
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/faceunity/b/e;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/faceunity/wrapper/faceunity;->fuDeleteTexForItem(ILjava/lang/String;)I

    goto :goto_0

    .line 19
    :cond_3
    iget-object v1, p0, Lcom/faceunity/FURenderer;->mItemsArray:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    if-lez v1, :cond_8

    .line 20
    iget-object v2, p0, Lcom/faceunity/FURenderer;->mMakeupEntity:Lcom/faceunity/entity/MakeupEntity;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/faceunity/entity/MakeupEntity;->getItemHandle()I

    move-result v2

    if-lez v2, :cond_4

    new-array v2, v4, [I

    .line 21
    iget-object v3, p0, Lcom/faceunity/FURenderer;->mMakeupEntity:Lcom/faceunity/entity/MakeupEntity;

    invoke-virtual {v3}, Lcom/faceunity/entity/MakeupEntity;->getItemHandle()I

    move-result v3

    aput v3, v2, v0

    invoke-static {v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    .line 22
    iget-object v2, p0, Lcom/faceunity/FURenderer;->mMakeupEntity:Lcom/faceunity/entity/MakeupEntity;

    invoke-virtual {v2}, Lcom/faceunity/entity/MakeupEntity;->getItemHandle()I

    move-result v2

    invoke-static {v2}, Lcom/faceunity/wrapper/faceunity;->fuDestroyItem(I)V

    .line 23
    iget-object v2, p0, Lcom/faceunity/FURenderer;->mMakeupEntity:Lcom/faceunity/entity/MakeupEntity;

    invoke-virtual {v2, v0}, Lcom/faceunity/entity/MakeupEntity;->setItemHandle(I)V

    .line 24
    :cond_4
    iget-object v2, p0, Lcom/faceunity/FURenderer;->mMakeupItemHandleMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 25
    iget-object v3, p0, Lcom/faceunity/FURenderer;->mMakeupItemHandleMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 26
    new-array v5, v2, [I

    move v6, v0

    .line 27
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    add-int/lit8 v7, v6, 0x1

    .line 28
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v5, v6

    move v6, v7

    goto :goto_1

    .line 29
    :cond_5
    invoke-static {v1, v5}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_7

    .line 30
    aget v3, v5, v1

    if-lez v3, :cond_6

    .line 31
    invoke-static {v3}, Lcom/faceunity/wrapper/faceunity;->fuDestroyItem(I)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 32
    :cond_7
    iget-object v1, p0, Lcom/faceunity/FURenderer;->mMakeupItemHandleMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 33
    :cond_8
    iput v0, p0, Lcom/faceunity/FURenderer;->mFrameId:I

    .line 34
    iput-boolean v4, p0, Lcom/faceunity/FURenderer;->mIsNeedUpdateFaceBeauty:Z

    .line 35
    invoke-direct {p0}, Lcom/faceunity/FURenderer;->resetTrackStatus()V

    .line 36
    invoke-static {}, Lcom/faceunity/FURenderer;->releaseAllAiModel()V

    .line 37
    invoke-direct {p0}, Lcom/faceunity/FURenderer;->destroyControllerRelated()V

    .line 38
    iget-object v1, p0, Lcom/faceunity/FURenderer;->mItemsArray:[I

    array-length v2, v1

    move v3, v0

    :goto_3
    if-ge v3, v2, :cond_a

    aget v4, v1, v3

    if-lez v4, :cond_9

    .line 39
    invoke-static {v4}, Lcom/faceunity/wrapper/faceunity;->fuDestroyItem(I)V

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 40
    :cond_a
    iget-object v1, p0, Lcom/faceunity/FURenderer;->mItemsArray:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 41
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuDestroyAllItems()V

    .line 42
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuDone()V

    .line 43
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuOnDeviceLost()V

    .line 44
    iget-boolean p0, p0, Lcom/faceunity/FURenderer;->mIsCreateEGLContext:Z

    if-eqz p0, :cond_b

    .line 45
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuReleaseEGLContext()V

    :cond_b
    return-void
.end method

.method public prepareDrawFrame()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/faceunity/FURenderer;->benchmarkFPS()V

    const/16 v0, 0x400

    .line 2
    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuIsAIModelLoaded(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuIsTracking()I

    move-result v0

    .line 4
    iget-object v2, p0, Lcom/faceunity/FURenderer;->mOnTrackingStatusChangedListener:Lcom/vskit/arsdk/portal/ARCallback;

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/faceunity/FURenderer;->mTrackFaceStatus:I

    if-eq v3, v0, :cond_0

    .line 5
    iput v0, p0, Lcom/faceunity/FURenderer;->mTrackFaceStatus:I

    .line 6
    invoke-interface {v2, v0}, Lcom/vskit/arsdk/portal/ARCallback;->onTrackingStatusChanged(I)V

    :cond_0
    const/high16 v0, 0x10000

    .line 7
    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuIsAIModelLoaded(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 8
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuHumanProcessorGetNumResults()I

    move-result v0

    .line 9
    iget-object v2, p0, Lcom/faceunity/FURenderer;->mOnTrackingStatusChangedListener:Lcom/vskit/arsdk/portal/ARCallback;

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/faceunity/FURenderer;->mTrackHumanStatus:I

    if-eq v3, v0, :cond_1

    .line 10
    iput v0, p0, Lcom/faceunity/FURenderer;->mTrackHumanStatus:I

    .line 11
    invoke-interface {v2, v0}, Lcom/vskit/arsdk/portal/ARCallback;->onTrackingStatusChanged(I)V

    :cond_1
    const/16 v0, 0x8

    .line 12
    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuIsAIModelLoaded(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 13
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuHandDetectorGetResultNumHands()I

    move-result v0

    .line 14
    iget-object v1, p0, Lcom/faceunity/FURenderer;->mOnTrackingStatusChangedListener:Lcom/vskit/arsdk/portal/ARCallback;

    if-eqz v1, :cond_2

    iget v2, p0, Lcom/faceunity/FURenderer;->mTrackGestureStatus:I

    if-eq v2, v0, :cond_2

    .line 15
    iput v0, p0, Lcom/faceunity/FURenderer;->mTrackGestureStatus:I

    .line 16
    invoke-interface {v1, v0}, Lcom/vskit/arsdk/portal/ARCallback;->onTrackingStatusChanged(I)V

    .line 17
    :cond_2
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuGetSystemError()I

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuGetSystemErrorString(I)Ljava/lang/String;

    move-result-object v1

    .line 19
    sget-object v2, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "system error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", error message: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mOnSystemErrorListener:Lcom/vskit/arsdk/portal/ARCallback;

    if-eqz v0, :cond_3

    .line 21
    invoke-interface {v0, v1}, Lcom/vskit/arsdk/portal/ARCallback;->onSystemError(Ljava/lang/String;)V

    .line 22
    :cond_3
    iget-boolean v0, p0, Lcom/faceunity/FURenderer;->mIsNeedUpdateFaceBeauty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/faceunity/FURenderer;->mItemsArray:[I

    aget v2, v0, v1

    if-lez v2, :cond_4

    .line 23
    aget v0, v0, v1

    .line 24
    sget v2, Lcom/faceunity/FURenderer;->sIsBeautyOn:F

    float-to-double v2, v2

    const-string v4, "is_beauty_on"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 25
    sget-object v2, Lcom/faceunity/FURenderer;->sFilterName:Ljava/lang/String;

    const-string v3, "filter_name"

    invoke-static {v0, v3, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;Ljava/lang/String;)I

    .line 26
    sget v2, Lcom/faceunity/FURenderer;->mFilterLevel:F

    float-to-double v2, v2

    const-string v4, "filter_level"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-wide/16 v2, 0x0

    const-string v4, "heavy_blur"

    .line 27
    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 28
    sget v2, Lcom/faceunity/FURenderer;->mBlurType:F

    float-to-double v2, v2

    const-string v4, "blur_type"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 29
    sget v2, Lcom/faceunity/FURenderer;->mBlurLevel:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double/2addr v2, v4

    const-string v4, "blur_level"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 30
    sget v2, Lcom/faceunity/FURenderer;->mColorLevel:F

    float-to-double v2, v2

    const-string v4, "color_level"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 31
    sget v2, Lcom/faceunity/FURenderer;->mSharpen:F

    float-to-double v2, v2

    const-string v4, "sharpen"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 32
    sget v2, Lcom/faceunity/FURenderer;->mRedLevel:F

    float-to-double v2, v2

    const-string v4, "red_level"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 33
    sget v2, Lcom/faceunity/FURenderer;->mEyeBright:F

    float-to-double v2, v2

    const-string v4, "eye_bright"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 34
    sget v2, Lcom/faceunity/FURenderer;->mToothWhiten:F

    float-to-double v2, v2

    const-string v4, "tooth_whiten"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 35
    sget v2, Lcom/faceunity/FURenderer;->mFaceShapeLevel:F

    float-to-double v2, v2

    const-string v4, "face_shape_level"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 36
    sget v2, Lcom/faceunity/FURenderer;->mFaceShape:F

    float-to-double v2, v2

    const-string v4, "face_shape"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 37
    sget v2, Lcom/faceunity/FURenderer;->mEyeEnlarging:F

    float-to-double v2, v2

    const-string v4, "eye_enlarging"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 38
    sget v2, Lcom/faceunity/FURenderer;->mEyeCircle:F

    float-to-double v2, v2

    const-string v4, "intensity_eye_circle"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 39
    sget v2, Lcom/faceunity/FURenderer;->mCheekThinning:F

    float-to-double v2, v2

    const-string v4, "cheek_thinning"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 40
    sget v2, Lcom/faceunity/FURenderer;->mCheekNarrow:F

    float-to-double v2, v2

    const-string v4, "cheek_narrow"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 41
    sget v2, Lcom/faceunity/FURenderer;->mCheekSmall:F

    float-to-double v2, v2

    const-string v4, "cheek_small"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 42
    sget v2, Lcom/faceunity/FURenderer;->mCheekV:F

    float-to-double v2, v2

    const-string v4, "cheek_v"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 43
    sget v2, Lcom/faceunity/FURenderer;->mIntensityCheekbones:F

    float-to-double v2, v2

    const-string v4, "intensity_cheekbones"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 44
    sget v2, Lcom/faceunity/FURenderer;->mIntensityLowerJaw:F

    float-to-double v2, v2

    const-string v4, "intensity_lower_jaw"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 45
    sget v2, Lcom/faceunity/FURenderer;->mIntensityNose:F

    float-to-double v2, v2

    const-string v4, "intensity_nose"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 46
    sget v2, Lcom/faceunity/FURenderer;->mIntensityChin:F

    float-to-double v2, v2

    const-string v4, "intensity_chin"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 47
    sget v2, Lcom/faceunity/FURenderer;->mIntensityForehead:F

    float-to-double v2, v2

    const-string v4, "intensity_forehead"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 48
    sget v2, Lcom/faceunity/FURenderer;->mIntensityMouth:F

    float-to-double v2, v2

    const-string v4, "intensity_mouth"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 49
    sget v2, Lcom/faceunity/FURenderer;->sMicroPouch:F

    float-to-double v2, v2

    const-string v4, "remove_pouch_strength"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 50
    sget v2, Lcom/faceunity/FURenderer;->sMicroNasolabialFolds:F

    float-to-double v2, v2

    const-string v4, "remove_nasolabial_folds_strength"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 51
    sget v2, Lcom/faceunity/FURenderer;->sMicroSmile:F

    float-to-double v2, v2

    const-string v4, "intensity_smile"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 52
    sget v2, Lcom/faceunity/FURenderer;->sMicroCanthus:F

    float-to-double v2, v2

    const-string v4, "intensity_canthus"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 53
    sget v2, Lcom/faceunity/FURenderer;->sMicroPhiltrum:F

    float-to-double v2, v2

    const-string v4, "intensity_philtrum"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 54
    sget v2, Lcom/faceunity/FURenderer;->sMicroLongNose:F

    float-to-double v2, v2

    const-string v4, "intensity_long_nose"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 55
    sget v2, Lcom/faceunity/FURenderer;->sMicroEyeSpace:F

    float-to-double v2, v2

    const-string v4, "intensity_eye_space"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 56
    sget v2, Lcom/faceunity/FURenderer;->sMicroEyeRotate:F

    float-to-double v2, v2

    const-string v4, "intensity_eye_rotate"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 57
    iput-boolean v1, p0, Lcom/faceunity/FURenderer;->mIsNeedUpdateFaceBeauty:Z

    .line 58
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mEventQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 59
    iget-object v0, p0, Lcom/faceunity/FURenderer;->mEventQueue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/faceunity/FURenderer;->mEventQueue:Ljava/util/List;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAlphaL(F)V
    .locals 1

    .line 1
    new-instance v0, Lcom/faceunity/J;

    invoke-direct {v0, p0, p1}, Lcom/faceunity/J;-><init>(Lcom/faceunity/FURenderer;F)V

    invoke-virtual {p0, v0}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCartoonFilter(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/faceunity/FURenderer;->mCartoonFilterStyle:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/faceunity/FURenderer;->mCartoonFilterStyle:I

    .line 3
    new-instance v0, Lcom/faceunity/s;

    invoke-direct {v0, p0, p1}, Lcom/faceunity/s;-><init>(Lcom/faceunity/FURenderer;I)V

    invoke-virtual {p0, v0}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setChromaThres(F)V
    .locals 1

    .line 1
    new-instance v0, Lcom/faceunity/H;

    invoke-direct {v0, p0, p1}, Lcom/faceunity/H;-><init>(Lcom/faceunity/FURenderer;F)V

    invoke-virtual {p0, v0}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setChromaThresT(F)V
    .locals 1

    .line 1
    new-instance v0, Lcom/faceunity/I;

    invoke-direct {v0, p0, p1}, Lcom/faceunity/I;-><init>(Lcom/faceunity/FURenderer;F)V

    invoke-virtual {p0, v0}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setInputTextureType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/faceunity/FURenderer;->mInputTextureType:I

    return-void
.end method

.method public setKeyColor([D)V
    .locals 1

    .line 1
    new-instance v0, Lcom/faceunity/F;

    invoke-direct {v0, p0, p1}, Lcom/faceunity/F;-><init>(Lcom/faceunity/FURenderer;[D)V

    invoke-virtual {p0, v0}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMaxFaces(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/faceunity/FURenderer;->mMaxFaces:I

    if-eq v0, p1, :cond_0

    if-lez p1, :cond_0

    .line 2
    iput p1, p0, Lcom/faceunity/FURenderer;->mMaxFaces:I

    .line 3
    new-instance p1, Lcom/faceunity/d;

    invoke-direct {p1, p0}, Lcom/faceunity/d;-><init>(Lcom/faceunity/FURenderer;)V

    invoke-virtual {p0, p1}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setMaxHumans(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lcom/faceunity/FURenderer;->mMaxHumans:I

    .line 2
    new-instance v0, Lcom/faceunity/k;

    invoke-direct {v0, p0, p1}, Lcom/faceunity/k;-><init>(Lcom/faceunity/FURenderer;I)V

    invoke-virtual {p0, v0}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setResetFlag(I)V
    .locals 0

    .line 1
    new-instance p1, Lcom/faceunity/N;

    invoke-direct {p1, p0}, Lcom/faceunity/N;-><init>(Lcom/faceunity/FURenderer;)V

    invoke-virtual {p0, p1}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRunBgSegGreen(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/faceunity/FURenderer;->mRunBgSegGreen:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/faceunity/L;

    invoke-direct {v0, p0, p1}, Lcom/faceunity/L;-><init>(Lcom/faceunity/FURenderer;Z)V

    invoke-virtual {p0, v0}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTransform(FFFF)V
    .locals 7

    .line 1
    new-instance v6, Lcom/faceunity/K;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/faceunity/K;-><init>(Lcom/faceunity/FURenderer;FFFF)V

    invoke-virtual {p0, v6}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateEffectItemParams(Lcom/faceunity/entity/Effect;I)V
    .locals 9

    if-eqz p1, :cond_b

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 1
    :cond_0
    invoke-direct {p0}, Lcom/faceunity/FURenderer;->calculateRotationMode()I

    move-result v0

    iput v0, p0, Lcom/faceunity/FURenderer;->mRotationMode:I

    .line 2
    sget-object v0, Lcom/faceunity/FURenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEffectItemParams: mRotationMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/faceunity/FURenderer;->mRotationMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget v0, p0, Lcom/faceunity/FURenderer;->mExternalInputType:I

    const-wide/16 v1, 0x0

    const-string v3, "isAndroid"

    const/4 v4, 0x1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-nez v0, :cond_1

    .line 4
    invoke-static {p2, v3, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    goto :goto_1

    :cond_1
    if-ne v0, v4, :cond_3

    .line 5
    iget-boolean v0, p0, Lcom/faceunity/FURenderer;->mIsSystemCameraRecord:Z

    if-eqz v0, :cond_2

    move-wide v7, v5

    goto :goto_0

    :cond_2
    move-wide v7, v1

    :goto_0
    invoke-static {p2, v3, v7, v8}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    goto :goto_1

    .line 6
    :cond_3
    invoke-static {p2, v3, v5, v6}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 7
    :goto_1
    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->effectType()I

    move-result v0

    if-eq v0, v4, :cond_4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    .line 8
    :cond_4
    iget v3, p0, Lcom/faceunity/FURenderer;->mRotationMode:I

    mul-int/lit8 v3, v3, 0x5a

    int-to-double v7, v3

    const-string v3, "rotationAngle"

    invoke-static {p2, v3, v7, v8}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 9
    :cond_5
    iget v3, p0, Lcom/faceunity/FURenderer;->mCameraFacing:I

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    move-wide v1, v5

    :goto_2
    const-string v3, "is_front_camera"

    invoke-static {p2, v3, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 10
    iget v1, p0, Lcom/faceunity/FURenderer;->mCameraFacing:I

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    :goto_3
    const-string v1, "is3DFlipH"

    const/16 v2, 0x8

    if-ne v0, v2, :cond_8

    int-to-double v7, v4

    .line 11
    invoke-static {p2, v1, v7, v8}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v3, "isFlipExpr"

    .line 12
    invoke-static {p2, v3, v7, v8}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v3, "camera_change"

    .line 13
    invoke-static {p2, v3, v5, v6}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    :cond_8
    const/4 v3, 0x6

    if-ne v0, v3, :cond_9

    int-to-double v7, v4

    .line 14
    invoke-static {p2, v1, v7, v8}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v1, "loc_y_flip"

    .line 15
    invoke-static {p2, v1, v7, v8}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v1, "loc_x_flip"

    .line 16
    invoke-static {p2, v1, v7, v8}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 17
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/faceunity/FURenderer;->setEffectRotationMode(Lcom/faceunity/entity/Effect;I)V

    if-ne v0, v2, :cond_a

    int-to-double v0, v4

    const-string v2, "isFlipTrack"

    .line 18
    invoke-static {p2, v2, v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v2, "isFlipLight "

    .line 19
    invoke-static {p2, v2, v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "{\"thing\":\"<global>\",\"param\":\"follow\"}"

    .line 20
    invoke-static {p2, v0, v5, v6}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 21
    :cond_a
    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->getMaxFace()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/faceunity/FURenderer;->setMaxFaces(I)V

    :cond_b
    :goto_4
    return-void
.end method
