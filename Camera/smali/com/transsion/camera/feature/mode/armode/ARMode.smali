.class public Lcom/transsion/camera/feature/mode/armode/ARMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "ARMode.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$IARChangeListener;
.implements Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;,
        Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode<",
        "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;",
        "Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$IARChangeListener;",
        "Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mARStickerUI:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

.field volatile mAfterStopRecord:Z

.field private mAnimojiItem:Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

.field mAreaType:I

.field private mBitmapBuffer:[I

.field private mBitmapSource:[I

.field private mCallback:Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;

.field private mCameraNV21Byte:[B

.field private mCameraSwitchFlag:Z

.field private mCommonVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

.field mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private volatile mEffectItem:[I

.field private mError:I

.field private mEventQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceCount:I

.field private volatile mFaceIds:[I

.field private mFaceInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/armode/FaceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceRectDataArray:[[F

.field private mFacebeautyItem:I

.field private mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

.field mFrameId:I

.field mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

.field private mGenderIdentification:Z

.field private volatile mGenderItems:[I

.field private volatile mGenderMasks:[I

.field private final mGenderObject:Ljava/lang/Object;

.field private mGenders:[I

.field private final mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mHintInfoAuto:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mHitFaceInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/transsion/camera/feature/mode/armode/FaceInfo;",
            ">;"
        }
    .end annotation
.end field

.field mIgnoreFrame:I

.field private mIntBuffer:Ljava/nio/IntBuffer;

.field mIsInited:Z

.field mIsModeInit:Z

.field mIsStickerBarInit:Z

.field private mIsStorageUnmounted:Z

.field private mItem:Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

.field private mLastGender:Z

.field private mMaxFace:I

.field private final mMediaEncoderListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

.field private mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

.field private volatile mNeedDestroy:Z

.field private volatile mNeedSetFaceDetMethod:Z

.field private volatile mOldEffectItem:[I

.field private mPause:Z

.field private mPreviewHeight:I

.field mPreviewListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mPreviewViewRect:Landroid/graphics/Rect;

.field private mPreviewWidth:I

.field volatile mRecordingFlag:Z

.field private volatile mResources:[I

.field private mRootView:Landroid/view/View;

.field private mSensorOrientation:I

.field private mShotNum:I

.field private mShotUpdateNum:I

.field volatile mStartRecordFlag:Z

.field private mStartRecordTime:J

.field mStickerCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mStickerHandler:Landroid/os/Handler;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

.field private mViewCamScale:F

.field private mViewHeight:I

.field private mViewPortX:I

.field private mViewPortY:I

.field private mViewWidth:I

.field mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

.field final mtx:[F

.field private sGenderIdentificationSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 108
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 222
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 134
    iput p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFacebeautyItem:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 135
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mEffectItem:[I

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 143
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mtx:[F

    .line 144
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIsInited:Z

    .line 145
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIsModeInit:Z

    .line 146
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIsStickerBarInit:Z

    .line 147
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mRecordingFlag:Z

    .line 148
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStartRecordFlag:Z

    .line 149
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mAfterStopRecord:Z

    .line 150
    iput v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFrameId:I

    .line 152
    iput v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIgnoreFrame:I

    .line 153
    iput v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mAreaType:I

    const/4 p1, 0x0

    .line 158
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mBitmapSource:[I

    .line 159
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mBitmapBuffer:[I

    .line 162
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mHintInfoAuto:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 163
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {p1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 166
    iput v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mError:I

    .line 167
    iput v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mShotNum:I

    .line 168
    iput v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mShotUpdateNum:I

    .line 172
    iput v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewWidth:I

    .line 173
    iput v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewHeight:I

    .line 174
    iput v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mMaxFace:I

    .line 176
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIsStorageUnmounted:Z

    .line 177
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPause:Z

    .line 180
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->sGenderIdentificationSupport:Z

    .line 191
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenderObject:Ljava/lang/Object;

    .line 192
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenderIdentification:Z

    .line 193
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mLastGender:Z

    .line 194
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mNeedSetFaceDetMethod:Z

    .line 198
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFaceInfo:Ljava/util/List;

    .line 199
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mHitFaceInfo:Ljava/util/Map;

    const/4 p1, 0x2

    new-array v0, p1, [I

    .line 200
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenderItems:[I

    new-array v0, p1, [I

    .line 201
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenderMasks:[I

    new-array v0, p1, [I

    .line 202
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFaceIds:[I

    new-array v0, p1, [I

    .line 203
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mResources:[I

    new-array p1, p1, [I

    .line 204
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenders:[I

    .line 206
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewViewRect:Landroid/graphics/Rect;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 211
    iput p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mViewCamScale:F

    .line 219
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mNeedDestroy:Z

    .line 477
    new-instance p1, Lcom/transsion/camera/feature/mode/armode/ARMode$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/armode/ARMode$2;-><init>(Lcom/transsion/camera/feature/mode/armode/ARMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    .line 1114
    new-instance p1, Lcom/transsion/camera/feature/mode/armode/ARMode$5;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/armode/ARMode$5;-><init>(Lcom/transsion/camera/feature/mode/armode/ARMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mMediaEncoderListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    .line 1560
    new-instance p1, Lcom/transsion/camera/feature/mode/armode/ARMode$6;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/armode/ARMode$6;-><init>(Lcom/transsion/camera/feature/mode/armode/ARMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/armode/ARMode;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewHeight:I

    return p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/armode/ARMode;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFacebeautyItem:I

    return p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/armode/ARMode;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mViewWidth:I

    return p0
.end method

.method static synthetic access$1202(Lcom/transsion/camera/feature/mode/armode/ARMode;I)I
    .locals 0

    .line 106
    iput p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mViewWidth:I

    return p1
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/armode/ARMode;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mViewHeight:I

    return p0
.end method

.method static synthetic access$1302(Lcom/transsion/camera/feature/mode/armode/ARMode;I)I
    .locals 0

    .line 106
    iput p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mViewHeight:I

    return p1
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/mode/armode/ARMode;)F
    .locals 0

    .line 106
    iget p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mViewCamScale:F

    return p0
.end method

.method static synthetic access$1402(Lcom/transsion/camera/feature/mode/armode/ARMode;F)F
    .locals 0

    .line 106
    iput p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mViewCamScale:F

    return p1
.end method

.method static synthetic access$1502(Lcom/transsion/camera/feature/mode/armode/ARMode;I)I
    .locals 0

    .line 106
    iput p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mViewPortX:I

    return p1
.end method

.method static synthetic access$1602(Lcom/transsion/camera/feature/mode/armode/ARMode;I)I
    .locals 0

    .line 106
    iput p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mViewPortY:I

    return p1
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/mode/armode/ARMode;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFaceCount:I

    return p0
.end method

.method static synthetic access$1802(Lcom/transsion/camera/feature/mode/armode/ARMode;I)I
    .locals 0

    .line 106
    iput p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFaceCount:I

    return p1
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/mode/armode/ARMode;)[[F
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFaceRectDataArray:[[F

    return-object p0
.end method

.method static synthetic access$1902(Lcom/transsion/camera/feature/mode/armode/ARMode;[[F)[[F
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFaceRectDataArray:[[F

    return-object p1
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/mode/armode/ARMode;)Ljava/lang/Object;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenderObject:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/mode/armode/ARMode;)Ljava/util/List;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFaceInfo:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mResources:[I

    return-object p0
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFaceIds:[I

    return-object p0
.end method

.method static synthetic access$2400(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenderItems:[I

    return-object p0
.end method

.method static synthetic access$2500(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenderMasks:[I

    return-object p0
.end method

.method static synthetic access$2600(Lcom/transsion/camera/feature/mode/armode/ARMode;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mShotNum:I

    return p0
.end method

.method static synthetic access$2610(Lcom/transsion/camera/feature/mode/armode/ARMode;)I
    .locals 2

    .line 106
    iget v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mShotNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mShotNum:I

    return v0
.end method

.method static synthetic access$2700(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mBitmapBuffer:[I

    return-object p0
.end method

.method static synthetic access$2702(Lcom/transsion/camera/feature/mode/armode/ARMode;[I)[I
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mBitmapBuffer:[I

    return-object p1
.end method

.method static synthetic access$2800(Lcom/transsion/camera/feature/mode/armode/ARMode;)Ljava/nio/IntBuffer;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIntBuffer:Ljava/nio/IntBuffer;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/transsion/camera/feature/mode/armode/ARMode;Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIntBuffer:Ljava/nio/IntBuffer;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mBitmapSource:[I

    return-object p0
.end method

.method static synthetic access$2902(Lcom/transsion/camera/feature/mode/armode/ARMode;[I)[I
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mBitmapSource:[I

    return-object p1
.end method

.method static synthetic access$300()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 106
    sget-object v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/transsion/camera/feature/mode/armode/ARMode;I)I
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->convertJpegOrientation(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcom/transsion/camera/feature/mode/armode/ARMode;[B)V
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView([B)V

    return-void
.end method

.method static synthetic access$3300(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/transsion/camera/feature/mode/armode/ARMode;[BLandroid/graphics/Bitmap;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->saveJpegToFile([BLandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/transsion/camera/feature/mode/armode/ARMode;Z)Z
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPause:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mARStickerUI:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/transsion/camera/feature/mode/armode/ARMode;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->unInitSticker()V

    return-void
.end method

.method static synthetic access$3900(Lcom/transsion/camera/feature/mode/armode/ARMode;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->setFaceDetMethod()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/armode/ARMode;)[B
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mCameraNV21Byte:[B

    return-object p0
.end method

.method static synthetic access$4000(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    return-object p0
.end method

.method static synthetic access$4002(Lcom/transsion/camera/feature/mode/armode/ARMode;Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    return-object p1
.end method

.method static synthetic access$402(Lcom/transsion/camera/feature/mode/armode/ARMode;[B)[B
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mCameraNV21Byte:[B

    return-object p1
.end method

.method static synthetic access$4100(Lcom/transsion/camera/feature/mode/armode/ARMode;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mMaxFace:I

    return p0
.end method

.method static synthetic access$4102(Lcom/transsion/camera/feature/mode/armode/ARMode;I)I
    .locals 0

    .line 106
    iput p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mMaxFace:I

    return p1
.end method

.method static synthetic access$4200(Lcom/transsion/camera/feature/mode/armode/ARMode;[I)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->setDefaultDirection([I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/transsion/camera/feature/mode/armode/ARMode;)Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/transsion/camera/feature/mode/armode/ARMode;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mSensorOrientation:I

    return p0
.end method

.method static synthetic access$4500(Lcom/transsion/camera/feature/mode/armode/ARMode;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mNeedDestroy:Z

    return p0
.end method

.method static synthetic access$4502(Lcom/transsion/camera/feature/mode/armode/ARMode;Z)Z
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mNeedDestroy:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mOldEffectItem:[I

    return-object p0
.end method

.method static synthetic access$4602(Lcom/transsion/camera/feature/mode/armode/ARMode;[I)[I
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mOldEffectItem:[I

    return-object p1
.end method

.method static synthetic access$4700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/transsion/camera/feature/mode/armode/ARMode;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/transsion/camera/feature/mode/armode/ARMode;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->setItemParam()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    return-object p0
.end method

.method static synthetic access$5202(Lcom/transsion/camera/feature/mode/armode/ARMode;Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;)Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/transsion/camera/feature/mode/armode/ARMode;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/transsion/camera/feature/mode/armode/ARMode;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/transsion/camera/feature/mode/armode/ARMode;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mHintInfoAuto:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/transsion/camera/feature/mode/armode/ARMode;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mError:I

    return p0
.end method

.method static synthetic access$5802(Lcom/transsion/camera/feature/mode/armode/ARMode;I)I
    .locals 0

    .line 106
    iput p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mError:I

    return p1
.end method

.method static synthetic access$5900(Lcom/transsion/camera/feature/mode/armode/ARMode;)Landroid/os/Vibrator;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mVibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/armode/ARMode;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->sGenderIdentificationSupport:Z

    return p0
.end method

.method static synthetic access$6000(Lcom/transsion/camera/feature/mode/armode/ARMode;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/mode/CommonVideoHelper;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mCommonVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/transsion/camera/feature/mode/armode/ARMode;)J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStartRecordTime:J

    return-wide v0
.end method

.method static synthetic access$6300(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/transsion/camera/feature/mode/armode/ARMode;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIsStorageUnmounted:Z

    return p0
.end method

.method static synthetic access$6402(Lcom/transsion/camera/feature/mode/armode/ARMode;Z)Z
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIsStorageUnmounted:Z

    return p1
.end method

.method static synthetic access$6500(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/transsion/camera/feature/mode/armode/ARMode;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenderIdentification:Z

    return p0
.end method

.method static synthetic access$7000(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$702(Lcom/transsion/camera/feature/mode/armode/ARMode;Z)Z
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenderIdentification:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$7300(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$7400(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$7500(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$7600(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$7700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$7800(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$7900(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mEffectItem:[I

    return-object p0
.end method

.method static synthetic access$8000(Lcom/transsion/camera/feature/mode/armode/ARMode;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mLastGender:Z

    return p0
.end method

.method static synthetic access$8002(Lcom/transsion/camera/feature/mode/armode/ARMode;Z)Z
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mLastGender:Z

    return p1
.end method

.method static synthetic access$802(Lcom/transsion/camera/feature/mode/armode/ARMode;[I)[I
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mEffectItem:[I

    return-object p1
.end method

.method static synthetic access$8102(Lcom/transsion/camera/feature/mode/armode/ARMode;Z)Z
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mNeedSetFaceDetMethod:Z

    return p1
.end method

.method static synthetic access$8200(Lcom/transsion/camera/feature/mode/armode/ARMode;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$8300(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$8402(Lcom/transsion/camera/feature/mode/armode/ARMode;Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;)Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mItem:Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    return-object p1
.end method

.method static synthetic access$8500(Lcom/transsion/camera/feature/mode/armode/ARMode;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$8600(Lcom/transsion/camera/feature/mode/armode/ARMode;Ljava/lang/String;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->showInfoAuto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/transsion/camera/feature/mode/armode/ARMode;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->hideInfoAuto()V

    return-void
.end method

.method static synthetic access$8800(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$8900(Lcom/transsion/camera/feature/mode/armode/ARMode;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->initSticker()V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/armode/ARMode;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewWidth:I

    return p0
.end method

.method static synthetic access$9000(Lcom/transsion/camera/feature/mode/armode/ARMode;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->stopRecording()V

    return-void
.end method

.method static synthetic access$9100(Lcom/transsion/camera/feature/mode/armode/ARMode;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->startRecording()V

    return-void
.end method

.method static synthetic access$9200(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$9300(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$9400(Lcom/transsion/camera/feature/mode/armode/ARMode;)Landroid/graphics/Rect;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewViewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$9500(Lcom/transsion/camera/feature/mode/armode/ARMode;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->updatePreviewLayoutRect()V

    return-void
.end method

.method static synthetic access$9600(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method private capture()V
    .locals 1

    .line 1055
    iget v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mShotNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mShotNum:I

    .line 1056
    iget v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mShotUpdateNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mShotUpdateNum:I

    return-void
.end method

.method private convertJpegOrientation(I)I
    .locals 0

    const/16 p0, 0x5a

    if-eq p1, p0, :cond_2

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_1

    const/16 p0, 0x10e

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x6

    return p0
.end method

.method private doActionWithStorageUnmounted()V
    .locals 2

    .line 1736
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStartRecordFlag:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1739
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIsStorageUnmounted:Z

    .line 1740
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1741
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1742
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private declared-synchronized getEffectItem()[I
    .locals 10

    monitor-enter p0

    .line 1271
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mItem:Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->bundle:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 1273
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mItem:Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    iget-object v3, v3, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->bundle:[Ljava/lang/String;

    array-length v3, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-ge v2, v3, :cond_4

    const/4 v3, 0x0

    .line 1277
    :try_start_1
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mItem:Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    if-nez v4, :cond_0

    .line 1278
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->getInstance(Landroid/content/res/Resources;)Lcom/transsion/camera/feature/mode/armode/ARStickerThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->getStickerItem()Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mItem:Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    .line 1280
    :cond_0
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mItem:Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    iget-object v6, v6, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->filePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mItem:Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    iget-object v6, v6, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->bundle:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1281
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v5, v5, [B

    .line 1282
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    .line 1283
    invoke-static {v5}, Lcom/faceunity/wrapper/faceunity;->fuCreateItemFromPackage([B)I

    move-result v5

    aput v5, v0, v2

    .line 1284
    iget v5, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mAreaType:I

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 1285
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v1, v5, v6, v7}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo;->getEffectsByEffectType(IILjava/lang/String;Landroid/content/res/Resources;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1286
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    .line 1287
    iget-object v7, v6, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->filePath:Ljava/lang/String;

    iget-object v8, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mItem:Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    iget-object v8, v8, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->filePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1288
    iget v6, v6, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->maxFace:I

    iput v6, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mMaxFace:I

    goto :goto_1

    .line 1291
    :cond_2
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo;->isARFaceBeautySupport(Landroid/content/res/Resources;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1292
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "face_beautification.bundle"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 1293
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v5, v5, [B

    .line 1294
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    .line 1295
    invoke-static {v5}, Lcom/faceunity/wrapper/faceunity;->fuCreateItemFromPackage([B)I

    move-result v5

    iput v5, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFacebeautyItem:I

    .line 1297
    :cond_3
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1298
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mItem:Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    iget-object v6, v6, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->bundle:[Ljava/lang/String;

    aget-object v6, v6, v2

    aget v7, v0, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    sget-object v5, Lcom/transsion/camera/feature/mode/armode/ARMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "effectItem create = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1303
    :try_start_3
    invoke-static {v4}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 1304
    invoke-static {v3}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    goto :goto_4

    :catch_0
    move-exception v5

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v4, v3

    goto :goto_4

    :catch_1
    move-exception v4

    move-object v5, v4

    move-object v4, v3

    .line 1301
    :goto_2
    :try_start_4
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1303
    :try_start_5
    invoke-static {v3}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 1304
    invoke-static {v4}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    .line 1303
    :goto_4
    invoke-static {v3}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 1304
    invoke-static {v4}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 1305
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1307
    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private hideInfoAlways()V
    .locals 1

    .line 1706
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private hideInfoAuto()V
    .locals 1

    .line 1695
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mHintInfoAuto:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private initSticker()V
    .locals 7

    .line 1232
    sget-object v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init sticker GL resources start mIsInited: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIsInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1233
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIsInited:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mARStickerUI:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    if-eqz v0, :cond_0

    .line 1234
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->setRecyclerViewEnable(Z)V

    return-void

    .line 1238
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mItem:Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->bundle:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    .line 1239
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_1

    .line 1240
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->getInstance(Landroid/content/res/Resources;)Lcom/transsion/camera/feature/mode/armode/ARStickerThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->getmStickerCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1242
    :cond_1
    :goto_0
    invoke-static {}, Lcom/transsion/camera/featurelibs/ar/ARControl;->fuIsSetup()I

    move-result v2

    if-gtz v2, :cond_2

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPause:Z

    if-nez v2, :cond_2

    .line 1243
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fuIsSetup = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/featurelibs/ar/ARControl;->fuIsSetup()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1245
    :cond_2
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPause:Z

    if-nez v2, :cond_3

    .line 1246
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIsInited:Z

    .line 1248
    :cond_3
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIsInited:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 1249
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    const/16 v2, 0x67

    invoke-interface {v0, v3, v2}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResource(ZI)V

    .line 1250
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->getEffectItem()[I

    move-result-object v0

    .line 1251
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    const/16 v4, 0x65

    invoke-interface {v2, v3, v4}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResource(ZI)V

    .line 1253
    :cond_4
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIsInited:Z

    if-eqz v2, :cond_7

    .line 1254
    array-length v2, v0

    add-int/2addr v2, v1

    new-array v4, v2, [I

    move v5, v3

    :goto_1
    if-ge v5, v2, :cond_6

    if-nez v5, :cond_5

    const/16 v6, 0x66

    .line 1257
    aput v6, v4, v5

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v5, -0x1

    .line 1259
    aget v6, v0, v6

    aput v6, v4, v5

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1262
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    invoke-interface {v0, v3, v4}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResources(Z[I)V

    .line 1264
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mARStickerUI:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    if-eqz p0, :cond_8

    .line 1265
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->setRecyclerViewEnable(Z)V

    .line 1267
    :cond_8
    sget-object p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "init sticker GL resources end."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private initUI()V
    .locals 5

    .line 297
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIsModeInit:Z

    if-nez v0, :cond_0

    .line 298
    sget-object p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mode is unInit,should not init sticker ui"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 301
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init sticker ui start."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mAnimojiItem:Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    if-nez v1, :cond_1

    .line 304
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->getInstance(Landroid/content/res/Resources;)Lcom/transsion/camera/feature/mode/armode/ARStickerThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->getStickerItem()Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mAnimojiItem:Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    .line 306
    :cond_1
    new-instance v1, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/camera/feature/mode/armode/R$layout;->ar_layout:I

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/transsion/camera/app/common/IAppUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mARStickerUI:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    .line 307
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mItem:Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mAnimojiItem:Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->initView(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mARStickerUI:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->updateStickerArea(I)V

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mARStickerUI:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->setARChangeListener(Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI$IARChangeListener;)V

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShowStickerBar"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mCameraSwitchFlag:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mARStickerUI:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->updateTypeView()V

    goto :goto_1

    .line 312
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mARStickerUI:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->controlARBar(I)V

    .line 316
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 317
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIsInited:Z

    if-eqz v0, :cond_4

    .line 318
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mARStickerUI:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->setRecyclerViewEnable(Z)V

    .line 320
    :cond_4
    sget-object p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "init sticker ui end."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCameraStateChanged$0()V
    .locals 0

    .line 378
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->initUI()V

    return-void
.end method

.method private saveJpegToFile([BLandroid/graphics/Bitmap;)V
    .locals 4

    .line 1087
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-nez v0, :cond_0

    return-void

    .line 1091
    :cond_0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->captureDone()V

    .line 1092
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    .line 1093
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    .line 1094
    invoke-interface {v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v3

    .line 1093
    invoke-virtual {v2, p1, p2, v1, v3}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->createContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 1095
    new-instance v2, Lcom/transsion/camera/feature/mode/armode/ARMode$4;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/armode/ARMode$4;-><init>(Lcom/transsion/camera/feature/mode/armode/ARMode;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    return-void
.end method

.method private sendRecordingData(I[F)V
    .locals 4

    .line 1675
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStartRecordTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3c8c

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 1677
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mRecordingFlag:Z

    .line 1678
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1679
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1680
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1682
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    if-eqz p0, :cond_1

    .line 1683
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->frameAvailableSoon(I[F)Z

    :cond_1
    return-void
.end method

.method private setDefaultDirection([I)V
    .locals 9

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1493
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1494
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 1495
    invoke-interface {v1, v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v1

    const-string v2, "isFlipExpr"

    const-string v3, "is3DFlipH"

    const-string v4, "isFlipTrack"

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-nez v1, :cond_0

    .line 1496
    aget v1, p1, v0

    invoke-static {v1, v3, v5, v6}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1497
    aget v1, p1, v0

    invoke-static {v1, v4, v5, v6}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1498
    aget v1, p1, v0

    invoke-static {v1, v2, v5, v6}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    goto :goto_1

    .line 1500
    :cond_0
    aget v1, p1, v0

    const-wide/16 v7, 0x0

    invoke-static {v1, v4, v7, v8}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1501
    aget v1, p1, v0

    invoke-static {v1, v3, v7, v8}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1502
    aget v1, p1, v0

    invoke-static {v1, v2, v7, v8}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1504
    :goto_1
    aget v1, p1, v0

    const-string v2, "{\"thing\":\"<global>\",\"param\":\"follow\"}"

    invoke-static {v1, v2, v5, v6}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1505
    aget v1, p1, v0

    const-string v2, "isAndroid"

    invoke-static {v1, v2, v5, v6}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1506
    aget v1, p1, v0

    iget v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mSensorOrientation:I

    int-to-double v2, v2

    const-string v4, "rotationAngle"

    invoke-static {v1, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1507
    aget v1, p1, v0

    iget v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mSensorOrientation:I

    div-int/lit8 v2, v2, 0x5a

    int-to-double v2, v2

    const-string v4, "rotMode"

    invoke-static {v1, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1508
    aget v1, p1, v0

    iget v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mSensorOrientation:I

    div-int/lit8 v2, v2, 0x5a

    int-to-double v2, v2

    const-string v4, "rotationMode"

    invoke-static {v1, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setFaceDetMethod()V
    .locals 3

    .line 856
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFaceDetMethod mPause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPause:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mNeedSetFaceDetMethod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mNeedSetFaceDetMethod:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 857
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPause:Z

    if-nez v0, :cond_0

    .line 858
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mNeedSetFaceDetMethod:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 859
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mNeedSetFaceDetMethod:Z

    :cond_0
    return-void
.end method

.method private setItemParam()V
    .locals 6

    .line 845
    sget-object v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setItemParam: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 846
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenderItems:[I

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    const-string v3, "isMultiMask"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 847
    invoke-static {v2, v3, v4, v5}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v3, "{\"thing\":\"<global>\",\"param\":\"follow\"}"

    .line 848
    invoke-static {v2, v3, v4, v5}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private showInfoAlways(Ljava/lang/String;)V
    .locals 1

    .line 1699
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIsModeInit:Z

    if-eqz v0, :cond_0

    .line 1700
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1701
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private showInfoAuto(Ljava/lang/String;)V
    .locals 1

    .line 1688
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIsModeInit:Z

    if-eqz v0, :cond_0

    .line 1689
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mHintInfoAuto:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1690
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mHintInfoAuto:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private startRecording()V
    .locals 9

    .line 1618
    :try_start_0
    new-instance v0, Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mp4"

    const-string v3, "video/mp4"

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    .line 1619
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->createTempVideoFile(Lcom/transsion/camera/app/common/mode/VideoFileSpec;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1621
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v3, 0x28

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1622
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x0

    invoke-interface {p0, v2, v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void

    .line 1625
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1626
    new-instance v0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    goto :goto_0

    .line 1627
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1628
    new-instance v0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    .line 1631
    :cond_2
    :goto_0
    new-instance v3, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mMediaEncoderListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    iget v6, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewHeight:I

    iget v7, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewWidth:I

    const/16 v8, 0xde1

    invoke-direct/range {v3 .. v8}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;-><init>(Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;III)V

    .line 1633
    new-instance v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mMediaEncoderListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    invoke-direct {v0, v3, v4}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;-><init>(Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;)V

    .line 1634
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mARStickerUI:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->updateUItoVideo()V

    .line 1635
    sget-object v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sOrienation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1636
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1637
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->setOrientationHint(I)V

    goto :goto_1

    .line 1639
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->setOrientationHint(I)V

    .line 1641
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->prepare()V

    .line 1642
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStartRecordTime:J

    .line 1643
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->startRecording()V

    .line 1644
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mRecordingFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1646
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private stopRecording()V
    .locals 1

    .line 1651
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mRecordingFlag:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mAfterStopRecord:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1654
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    if-eqz v0, :cond_2

    .line 1655
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1656
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->stopRecording()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 1658
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mAfterStopRecord:Z

    .line 1661
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1662
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "stopRecordering end"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private declared-synchronized unInitSticker()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 1325
    :try_start_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPause:Z

    .line 1326
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mOldEffectItem:[I

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mOldEffectItem:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1329
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mEffectItem:[I

    if-eqz v0, :cond_1

    .line 1330
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mEffectItem:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1332
    :cond_1
    iput v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFacebeautyItem:I

    const/4 v0, 0x0

    .line 1333
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mCameraNV21Byte:[B

    .line 1334
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_2

    .line 1335
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1337
    :cond_2
    invoke-static {}, Lcom/transsion/camera/featurelibs/ar/ARControl;->fuIsSetup()I

    move-result v1

    if-lez v1, :cond_3

    .line 1338
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuDestroyAllItems()V

    .line 1339
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuOnDeviceLost()V

    .line 1340
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuDone()V

    .line 1342
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    if-eqz v1, :cond_4

    .line 1343
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    invoke-virtual {v1}, Lcom/transsion/camera/utils/gles/core/Program;->release()V

    .line 1344
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    :cond_4
    const/4 v0, 0x0

    .line 1346
    iput v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFrameId:I

    .line 1347
    iput v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIgnoreFrame:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1348
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unInitUI()V
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mARStickerUI:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->uninit()V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v2, v1}, Lcom/transsion/camera/app/common/IAppUI;->sinkUI(ZIZ)V

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method private updatePreviewLayoutRect()V
    .locals 4

    .line 395
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 397
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 398
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 399
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 400
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public convertCoordinateFromNamaToView([F)[F
    .locals 11

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 1030
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v1, :cond_0

    .line 1033
    aget v1, p1, v4

    iget v6, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mViewCamScale:F

    mul-float/2addr v1, v6

    iget v7, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mViewPortX:I

    int-to-float v8, v7

    sub-float/2addr v1, v8

    aput v1, v0, v5

    .line 1035
    iget v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mViewHeight:I

    int-to-float v8, v1

    iget v9, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewWidth:I

    int-to-float v10, v9

    aget v5, p1, v5

    sub-float/2addr v10, v5

    mul-float/2addr v10, v6

    iget p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mViewPortY:I

    int-to-float v5, p0

    sub-float/2addr v10, v5

    sub-float/2addr v8, v10

    aput v8, v0, v4

    .line 1037
    aget v4, p1, v2

    mul-float/2addr v4, v6

    int-to-float v5, v7

    sub-float/2addr v4, v5

    aput v4, v0, v3

    int-to-float v1, v1

    int-to-float v4, v9

    .line 1039
    aget p1, p1, v3

    sub-float/2addr v4, p1

    mul-float/2addr v4, v6

    int-to-float p0, p0

    sub-float/2addr v4, p0

    sub-float/2addr v1, v4

    aput v1, v0, v2

    goto :goto_0

    .line 1043
    :cond_0
    aget v1, p1, v4

    iget v6, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mViewCamScale:F

    mul-float/2addr v1, v6

    iget v7, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mViewPortX:I

    int-to-float v8, v7

    sub-float/2addr v1, v8

    aput v1, v0, v5

    .line 1045
    iget v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewWidth:I

    int-to-float v8, v1

    aget v9, p1, v3

    sub-float/2addr v8, v9

    mul-float/2addr v8, v6

    iget p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mViewPortY:I

    int-to-float v9, p0

    sub-float/2addr v8, v9

    aput v8, v0, v4

    .line 1047
    aget v4, p1, v2

    mul-float/2addr v4, v6

    int-to-float v7, v7

    sub-float/2addr v4, v7

    aput v4, v0, v3

    int-to-float v1, v1

    .line 1049
    aget p1, p1, v5

    sub-float/2addr v1, p1

    mul-float/2addr v1, v6

    int-to-float p0, p0

    sub-float/2addr v1, p0

    aput v1, v0, v2

    :goto_0
    return-object v0
.end method

.method public createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
            "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
            ">;"
        }
    .end annotation

    .line 1767
    new-instance p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/NullImageProcessor;-><init>()V

    return-object p0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public doOnFileSaved(Landroid/net/Uri;ZZ)V
    .locals 2

    .line 1105
    iget v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mShotUpdateNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mShotUpdateNum:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 1107
    iput v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mShotUpdateNum:I

    .line 1108
    iput v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mShotNum:I

    .line 1109
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1111
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->doOnFileSaved(Landroid/net/Uri;ZZ)V

    return-void
.end method

.method protected drawFrame([BIIII[I)I
    .locals 8

    if-eqz p1, :cond_3

    if-lez p3, :cond_3

    if-gtz p4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    .line 809
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 810
    invoke-interface {v1, v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0x31

    :cond_1
    move v3, v0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 813
    invoke-static/range {v1 .. v7}, Lcom/faceunity/wrapper/faceunity;->fuDualInputToTexture([BIIIII[I)I

    move-result p1

    .line 814
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mRecordingFlag:Z

    if-eqz p2, :cond_2

    .line 815
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mtx:[F

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->sendRecordingData(I[F)V

    :cond_2
    return p1

    .line 805
    :cond_3
    :goto_0
    sget-object p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onDrawFrame date null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public drawFrameMasked([BIIII)I
    .locals 10

    const/4 v0, 0x0

    if-lez p2, :cond_4

    if-eqz p1, :cond_4

    if-lez p3, :cond_4

    if-gtz p4, :cond_0

    goto :goto_1

    .line 826
    :cond_0
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuGetSystemError()I

    move-result v1

    if-eqz v1, :cond_1

    .line 828
    sget-object v2, Lcom/transsion/camera/feature/mode/armode/ARMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fuGetSystemErrorString "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/faceunity/wrapper/faceunity;->fuGetSystemErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 831
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mEventQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 832
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mEventQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    .line 836
    iget-object v8, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenderItems:[I

    iget-object v9, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenderMasks:[I

    move-object v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v2 .. v9}, Lcom/faceunity/wrapper/faceunity;->fuDualInputToTextureMasked([BIIIII[I[I)I

    move-result p1

    .line 838
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mRecordingFlag:Z

    if-eqz p2, :cond_3

    .line 839
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mtx:[F

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->sendRecordingData(I[F)V

    :cond_3
    return p1

    .line 822
    :cond_4
    :goto_1
    sget-object p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onDrawFrameMasked data is invalid"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public findBestMatchFace(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/armode/FaceInfo;",
            ">;)V"
        }
    .end annotation

    .line 909
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPause:Z

    if-eqz v0, :cond_0

    .line 910
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "findBestMatchFace is pause"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFaceRectDataArray:[[F

    if-eqz v0, :cond_c

    .line 915
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mHitFaceInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 916
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFaceIds:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 917
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mResources:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 918
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenders:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    move v0, v1

    .line 920
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v0, v2, :cond_5

    .line 921
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/armode/FaceInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/armode/FaceInfo;->getResource()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 926
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/armode/FaceInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/armode/FaceInfo;->getFaceRect()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 927
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 926
    invoke-static {v2, v5, v6}, Lcom/transsion/camera/utils/CoordinatesUtil;->referenceToViewSpace(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v2

    .line 928
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    div-int/2addr v5, v3

    .line 929
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    div-int/2addr v6, v3

    move v2, v1

    .line 931
    :goto_1
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFaceRectDataArray:[[F

    array-length v8, v7

    if-ge v2, v8, :cond_3

    .line 932
    aget-object v7, v7, v2

    invoke-virtual {p0, v7}, Lcom/transsion/camera/feature/mode/armode/ARMode;->convertCoordinateFromNamaToView([F)[F

    move-result-object v7

    .line 933
    aget v8, v7, v1

    aget v9, v7, v3

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    float-to-int v8, v8

    .line 934
    aget v10, v7, v4

    const/4 v11, 0x3

    aget v7, v7, v11

    add-float/2addr v10, v7

    div-float/2addr v10, v9

    float-to-int v7, v10

    sub-int/2addr v8, v5

    .line 935
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int/2addr v7, v6

    .line 936
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 942
    iget-object v9, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findBestMatchFace dx = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", dy = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v9, 0x96

    if-ge v8, v9, :cond_2

    if-ge v7, v9, :cond_2

    .line 944
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findBestMatchFace hit faceInfo: j = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", faceInfo.get("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 945
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mHitFaceInfo:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/mode/armode/FaceInfo;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 922
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findBestMatchFace faceInfo["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 952
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mHitFaceInfo:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v1

    .line 953
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 954
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 955
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 956
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/feature/mode/armode/FaceInfo;

    invoke-virtual {v6}, Lcom/transsion/camera/feature/mode/armode/FaceInfo;->getResource()I

    move-result v6

    .line 957
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/armode/FaceInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/armode/FaceInfo;->getGender()I

    move-result v2

    if-ge v0, v3, :cond_6

    .line 960
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFaceIds:[I

    aput v5, v7, v0

    .line 961
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mResources:[I

    aput v6, v5, v0

    .line 962
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenders:[I

    aput v2, v5, v0

    goto :goto_5

    .line 964
    :cond_6
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenders:[I

    aget v8, v7, v1

    if-ne v8, v4, :cond_7

    aget v7, v7, v4

    if-ne v7, v4, :cond_7

    if-ne v2, v3, :cond_a

    .line 966
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFaceIds:[I

    aput v5, p1, v4

    .line 967
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mResources:[I

    aput v6, p1, v4

    goto :goto_6

    .line 970
    :cond_7
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenders:[I

    aget v8, v7, v1

    if-ne v8, v3, :cond_8

    aget v7, v7, v4

    if-ne v7, v3, :cond_8

    if-ne v2, v4, :cond_a

    .line 972
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFaceIds:[I

    aput v5, p1, v4

    .line 973
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mResources:[I

    aput v6, p1, v4

    goto :goto_6

    .line 976
    :cond_8
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenders:[I

    aget v5, v2, v1

    if-ne v5, v4, :cond_9

    aget v2, v2, v4

    if-eq v2, v3, :cond_b

    :cond_9
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenders:[I

    aget v5, v2, v1

    if-ne v5, v3, :cond_a

    aget v2, v2, v4

    if-ne v2, v4, :cond_a

    goto :goto_6

    :cond_a
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 984
    :cond_b
    :goto_6
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFaceIds:[I

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mResources:[I

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->setItemMask([I[I)V

    :cond_c
    return-void
.end method

.method public getDataFlowType()I
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x4

    .line 474
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getFaceCount()I
    .locals 0

    .line 894
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuIsTracking()I

    move-result p0

    return p0
.end method

.method public getFaceRectData(I[F)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "face_rect"

    .line 901
    invoke-static {p1, v0, p2}, Lcom/faceunity/wrapper/faceunity;->fuGetFaceInfo(ILjava/lang/String;[F)I

    .line 903
    iget v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFrameId:I

    rem-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_1

    .line 904
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDrawFrame: face id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", rect: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    .line 1667
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo;->isARFaceBeautySupport(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, "key_face_beauty"

    const-string p1, "key_tran_plugin"

    .line 1670
    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 3

    .line 464
    invoke-static {}, Lcom/transsion/camera/feature/mode/armode/ARModeRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    const-string v1, "on"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 465
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->sGenderIdentificationSupport:Z

    if-eqz p0, :cond_0

    const-string p0, "key_face_detection"

    const-string v1, "gender_indentification"

    .line 466
    invoke-virtual {v0, p0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 1711
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x3c0

    const/16 v0, 0x2d0

    invoke-direct {p0, p1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method protected getShutterTypeSelftimerOff()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public hideModeUI()V
    .locals 0

    .line 534
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mARStickerUI:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    if-eqz p0, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->hideModeUI()V

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 0

    .line 238
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/ar/ARControl;->initResource(Landroid/content/Context;)V

    .line 239
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 240
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p4, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeUIControl(Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;)V

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo;->isGenderIdentificationSupport(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->sGenderIdentificationSupport:Z

    if-eqz p1, :cond_0

    const-string p1, "key_face_detection"

    .line 243
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 244
    new-instance p1, Ljava/util/ArrayList;

    const/16 p4, 0x10

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mEventQueue:Ljava/util/List;

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->getInstance(Landroid/content/res/Resources;)Lcom/transsion/camera/feature/mode/armode/ARStickerThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->getStickerItem()Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mItem:Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    .line 247
    new-instance p1, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mCommonVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    .line 248
    new-instance p1, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-static {p4}, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->getInstance(Landroid/content/res/Resources;)Lcom/transsion/camera/feature/mode/armode/ARStickerThread;

    move-result-object p4

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p1, p0, p4}, Lcom/transsion/camera/feature/mode/armode/ARMode$StickerHandler;-><init>(Lcom/transsion/camera/feature/mode/armode/ARMode;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerHandler:Landroid/os/Handler;

    .line 249
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 250
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->getInstance(Landroid/content/res/Resources;)Lcom/transsion/camera/feature/mode/armode/ARStickerThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->getAreatype()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mAreaType:I

    .line 251
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->getInstance(Landroid/content/res/Resources;)Lcom/transsion/camera/feature/mode/armode/ARStickerThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->getAnimojiItem()Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mAnimojiItem:Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    .line 253
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->getInstance(Landroid/content/res/Resources;)Lcom/transsion/camera/feature/mode/armode/ARStickerThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/armode/ARStickerThread;->getmStickerCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 254
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 255
    new-instance p1, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;-><init>(Lcom/transsion/camera/feature/mode/armode/ARMode;Lcom/transsion/camera/feature/mode/armode/ARMode$1;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mCallback:Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;

    .line 256
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getCameraSwitchFlag()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mCameraSwitchFlag:Z

    .line 257
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const-string p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mVibrator:Landroid/os/Vibrator;

    const/4 p1, 0x0

    .line 258
    iput p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewWidth:I

    .line 259
    iput p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewHeight:I

    .line 260
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mCallback:Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    const/4 p1, 0x1

    .line 261
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIsModeInit:Z

    .line 262
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 263
    invoke-interface {p1, p2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraInfo;->getSensorOrientation()I

    move-result p1

    rsub-int p1, p1, 0x168

    iput p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mSensorOrientation:I

    return-void
.end method

.method public synthetic lambda$onCameraStateChanged$0$ARMode()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->lambda$onCameraStateChanged$0()V

    return-void
.end method

.method public needRebuildMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBackPressed()Z
    .locals 2

    .line 1203
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStartRecordFlag:Z

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1205
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p0, 0x1

    return p0

    .line 1208
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->onSingleTapUp()Z

    move-result p0

    return p0
.end method

.method public onCameraStateChanged(I)V
    .locals 1

    .line 375
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onCameraStateChanged(I)V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 376
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIsStickerBarInit:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 377
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIsStickerBarInit:Z

    .line 378
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcom/transsion/camera/feature/mode/armode/-$$Lambda$ARMode$F1fX43BoshpGpyexYlfCSi5lJdM;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/armode/-$$Lambda$ARMode$F1fX43BoshpGpyexYlfCSi5lJdM;-><init>(Lcom/transsion/camera/feature/mode/armode/ARMode;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 5

    .line 1313
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 1314
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 1315
    invoke-interface {v0, v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x68

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v0, :cond_0

    new-array v0, v3, [I

    aput v2, v0, v4

    .line 1316
    iget v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mSensorOrientation:I

    sub-int/2addr v2, p1

    rem-int/lit16 v2, v2, 0x168

    div-int/lit8 v2, v2, 0x5a

    aput v2, v0, v1

    goto :goto_0

    :cond_0
    new-array v0, v3, [I

    aput v2, v0, v4

    .line 1318
    iget v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mSensorOrientation:I

    add-int/2addr p1, v2

    rem-int/lit16 p1, p1, 0x168

    div-int/lit8 p1, p1, 0x5a

    aput p1, v0, v1

    .line 1321
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    invoke-interface {p0, v4, v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResources(Z[I)V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_picture_size"

    .line 406
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "640x480"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 408
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->doPictureSizeUpdate(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    :cond_0
    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;[I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eqz v1, :cond_0

    .line 415
    iget-object v2, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSettingChanged <========= value.length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mGenderIdentification = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenderIdentification:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 415
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    const-string v2, "key_face_detection"

    move-object/from16 v3, p1

    .line 419
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenderIdentification:Z

    if-eqz v2, :cond_6

    iget-boolean v2, v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPause:Z

    if-nez v2, :cond_6

    .line 421
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenderObject:Ljava/lang/Object;

    monitor-enter v2

    .line 422
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-eqz v1, :cond_5

    .line 424
    array-length v5, v1

    div-int/lit8 v5, v5, 0x6

    .line 425
    iget-object v6, v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFaceInfo:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_4

    mul-int/lit8 v8, v7, 0x6

    add-int/lit8 v9, v8, 0x0

    .line 429
    aget v11, v1, v9

    add-int/lit8 v9, v8, 0x1

    .line 430
    aget v12, v1, v9

    add-int/lit8 v9, v8, 0x2

    .line 431
    aget v13, v1, v9

    add-int/lit8 v9, v8, 0x3

    .line 432
    aget v14, v1, v9

    add-int/lit8 v9, v8, 0x4

    .line 433
    aget v15, v1, v9

    add-int/lit8 v8, v8, 0x5

    .line 434
    aget v16, v1, v8

    .line 440
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mEffectItem:[I

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v15, v9, :cond_1

    .line 444
    new-instance v8, Lcom/transsion/camera/feature/mode/armode/FaceInfo;

    iget-object v9, v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mEffectItem:[I

    aget v17, v9, v6

    move-object v10, v8

    invoke-direct/range {v10 .. v17}, Lcom/transsion/camera/feature/mode/armode/FaceInfo;-><init>(IIIIIII)V

    goto :goto_1

    :cond_1
    const/4 v10, 0x2

    if-ne v15, v10, :cond_2

    .line 446
    new-instance v8, Lcom/transsion/camera/feature/mode/armode/FaceInfo;

    iget-object v10, v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mEffectItem:[I

    aget v17, v10, v9

    move-object v10, v8

    invoke-direct/range {v10 .. v17}, Lcom/transsion/camera/feature/mode/armode/FaceInfo;-><init>(IIIIIII)V

    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    .line 450
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFaceInfo:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 455
    :cond_4
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFaceInfo:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 457
    :cond_5
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSettingChanged =========> duration = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", mFaceInfo: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFaceInfo:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 458
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    :goto_2
    return-void
.end method

.method public onSettingReady()V
    .locals 2

    .line 227
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_0

    .line 229
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    .line 231
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    const/4 v0, 0x0

    const/16 v1, 0x67

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResource(ZI)V

    return-void
.end method

.method public onShutterClick(I)Z
    .locals 5

    .line 1061
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStartRecordFlag:Z

    const/4 v0, 0x1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mRecordingFlag:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1065
    :cond_0
    iget p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mShotUpdateNum:I

    const/4 v1, 0x3

    if-lt p1, v1, :cond_1

    return v0

    .line 1068
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gtz p1, :cond_2

    .line 1069
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onShutterClick space in not enough, can not record photo."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->showLowStorageHint()V

    const/4 p0, 0x0

    return p0

    .line 1074
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->isModeTabScrolling()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1075
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "isModeTabScrolling return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 1079
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0xd

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1080
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const-string v1, "camera_click.ogg"

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->shutterSoundPlay(Ljava/lang/String;)V

    .line 1081
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->capture()V

    .line 1082
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->capture()V

    return v0

    .line 1062
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->onShutterUp()V

    return v0
.end method

.method public onShutterLongClick()Z
    .locals 6

    .line 1585
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo;->isEmojiSupport(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1586
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterLongClick()Z

    move-result p0

    return p0

    .line 1588
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStartRecordFlag:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mRecordingFlag:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1591
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    if-gtz v0, :cond_2

    .line 1592
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "space in not enough, can not record video."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1593
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getLowStorageMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->showInfoAlways(Ljava/lang/String;)V

    return v2

    .line 1596
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mARStickerUI:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    if-nez v0, :cond_3

    .line 1597
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mARStickerUI is null, can not record video."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 1600
    :cond_3
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->isShowCopyDialog()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1601
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mARStickerUI is showing dialog, can not record video."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 1604
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mCommonVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->pauseAudioPlayBack(Landroid/content/Context;)Z

    .line 1605
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x27

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1606
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-interface {v0, v2, v4, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 1607
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x32

    invoke-static {v2, v3, v4}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 1610
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStartRecordFlag:Z

    .line 1611
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1612
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    :goto_0
    return v1
.end method

.method public onShutterUp()V
    .locals 2

    .line 1222
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo;->isEmojiSupport(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1223
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterUp()V

    return-void

    .line 1226
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1227
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    .line 1228
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStartRecordFlag:Z

    return-void
.end method

.method public onSingleTapUp()Z
    .locals 2

    .line 1213
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mARStickerUI:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mShowBar:Z

    if-eqz v1, :cond_0

    .line 1214
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->controlARBar(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public onStickerChanged(Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;)Z
    .locals 2

    .line 510
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIsInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 511
    sget-object p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "sticker resource is unInit"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mARStickerUI:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    if-eqz v0, :cond_1

    .line 515
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->hideCopyDialog()V

    .line 517
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 518
    iput v1, v0, Landroid/os/Message;->what:I

    .line 519
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 520
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 521
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public pause()V
    .locals 2

    .line 1526
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    const/4 v0, 0x1

    .line 1527
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPause:Z

    .line 1528
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mNeedSetFaceDetMethod:Z

    .line 1529
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->hideInfoAuto()V

    .line 1530
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->hideInfoAlways()V

    .line 1531
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mARStickerUI:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    if-eqz v0, :cond_0

    .line 1532
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/armode/CommonARSticckerUI;->hideCopyDialog()V

    .line 1534
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStartRecordFlag:Z

    if-eqz v0, :cond_1

    .line 1535
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1536
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1539
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->sGenderIdentificationSupport:Z

    if-eqz v0, :cond_3

    .line 1540
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenderMasks:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1542
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenderObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1543
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFaceInfo:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 1544
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFaceInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1546
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1548
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mEventQueue:Ljava/util/List;

    if-eqz p0, :cond_3

    .line 1549
    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1546
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 0

    .line 865
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mEventQueue:Ljava/util/List;

    if-nez p0, :cond_0

    return-void

    .line 868
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public resume()V
    .locals 3

    .line 1515
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    const/4 v0, 0x0

    .line 1516
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPause:Z

    .line 1517
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo;->isEmojiSupport(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1518
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/armode/R$string;->ar_emoji_video_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->showInfoAuto(Ljava/lang/String;)V

    .line 1520
    :cond_0
    iput v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mShotNum:I

    .line 1521
    iput v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mShotUpdateNum:I

    return-void
.end method

.method public setItemMask([I[I)V
    .locals 1

    .line 872
    array-length v0, p2

    if-lez v0, :cond_0

    .line 873
    new-instance v0, Lcom/transsion/camera/feature/mode/armode/ARMode$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/camera/feature/mode/armode/ARMode$3;-><init>(Lcom/transsion/camera/feature/mode/armode/ARMode;[I[I)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public showModeUI()V
    .locals 0

    .line 527
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mARStickerUI:Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    if-eqz p0, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->showModeUI()V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 4

    .line 333
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    const/4 v0, 0x0

    .line 334
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIsModeInit:Z

    .line 335
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->sGenderIdentificationSupport:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 336
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenderIdentification:Z

    .line 337
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenderObject:Ljava/lang/Object;

    monitor-enter v1

    .line 338
    :try_start_0
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFaceInfo:Ljava/util/List;

    .line 339
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mEventQueue:Ljava/util/List;

    move v1, v0

    .line 342
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenderItems:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 343
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenderItems:[I

    aget v3, v3, v1

    if-lez v3, :cond_0

    .line 344
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenderItems:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/faceunity/wrapper/faceunity;->fuDestroyItem(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mGenderItems:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    const-string v0, "key_face_detection"

    .line 355
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 339
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 358
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->unInitUI()V

    .line 362
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mCameraNV21Byte:[B

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeUninit()V

    .line 364
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p0, :cond_3

    .line 365
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    :cond_3
    return-void
.end method

.method public updateCurrentCameraId(Ljava/lang/String;)V
    .locals 1

    .line 1721
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->updateCurrentCameraId(Ljava/lang/String;)V

    .line 1722
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 1723
    invoke-interface {p1, v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraInfo;->getSensorOrientation()I

    move-result p1

    rsub-int p1, p1, 0x168

    iput p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mSensorOrientation:I

    .line 1724
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->showModeUI()V

    return-void
.end method

.method public updatePreviewSize(Landroid/util/Size;)V
    .locals 3

    .line 384
    sget-object v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePreviewSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 386
    iget v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewWidth:I

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewHeight:I

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 387
    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuSetOutputResolution(II)V

    .line 389
    :cond_1
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewWidth:I

    .line 390
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mPreviewHeight:I

    :cond_2
    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .locals 0

    .line 1729
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 1731
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->doActionWithStorageUnmounted()V

    :cond_0
    return-void
.end method
